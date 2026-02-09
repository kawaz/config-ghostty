#!/usr/bin/env bun
// Usage:
//   ./ghostty-diff.ts         # 変更箇所のみ表示
//   ./ghostty-diff.ts --all   # 全設定を表示（変更箇所はハイライト）
import { execFileSync } from "node:child_process";
import { readFileSync, existsSync } from "node:fs";
import { dirname, join } from "node:path";

const G = "/Applications/Ghostty.app/Contents/MacOS/ghostty";
if (!existsSync(G)) {
  console.error(`Error: Ghostty not found at ${G}`);
  process.exit(1);
}

const run = (args: string[]) =>
  execFileSync(G, args, { encoding: "utf-8" });

// --- パース ---

type ConfigEntry = { key: string; value: string };

function parseConfigOutput(output: string): ConfigEntry[] {
  return output
    .split("\n")
    .filter((line) => line.includes(" = "))
    .map((line) => {
      const i = line.indexOf(" = ");
      return { key: line.slice(0, i), value: line.slice(i + 3) };
    });
}

function parseConfigFile(
  path: string
): { singles: Map<string, string>; keybinds: { trigger: string; action: string }[] } {
  const singles = new Map<string, string>();
  const keybinds: { trigger: string; action: string }[] = [];
  if (!existsSync(path)) return { singles, keybinds };
  for (const line of readFileSync(path, "utf-8").split("\n")) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith("#")) continue;
    const i = trimmed.indexOf(" = ");
    if (i === -1) continue;
    const key = trimmed.slice(0, i);
    const val = trimmed.slice(i + 3);
    if (key === "keybind") {
      const eq = val.indexOf("=");
      if (eq !== -1) keybinds.push({ trigger: val.slice(0, eq), action: val.slice(eq + 1) });
    } else {
      singles.set(key, val);
    }
  }
  return { singles, keybinds };
}

// --- テーマファイル読み込み ---

type ThemeInfo = { keys: Set<string>; isUser: boolean };

function loadTheme(themeName: string): ThemeInfo {
  const empty: ThemeInfo = { keys: new Set(), isUser: false };
  if (!themeName) return empty;

  // +list-themes --path からテーマのパスとソースを取得
  const output = run(["+list-themes", "--path"]);
  // 同名テーマが user/resources 両方にある場合、user が優先される
  // 形式: "ThemeName (source) /path/to/theme"
  let themePath: string | null = null;
  let isUser = false;
  for (const line of output.split("\n")) {
    const match = line.match(new RegExp(`^${themeName.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')} \\((user|resources)\\) (.+)$`));
    if (match) {
      // user が先にマッチすればそれが優先、resources は user がなければ使う
      if (match[1] === "user") {
        themePath = match[2];
        isUser = true;
        break; // user が優先なので確定
      } else if (!themePath) {
        themePath = match[2];
      }
    }
  }
  if (!themePath || !existsSync(themePath)) return empty;

  const keys = new Set<string>();
  for (const line of readFileSync(themePath, "utf-8").split("\n")) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith("#")) continue;
    const i = trimmed.indexOf(" = ");
    if (i !== -1) {
      const key = trimmed.slice(0, i);
      if (key === "palette" || key === "keybind") {
        const val = trimmed.slice(i + 3);
        const eq = val.indexOf("=");
        if (eq !== -1) keys.add(`${key} ${val.slice(0, eq)}`);
      } else {
        keys.add(key);
      }
    }
  }
  return { keys, isUser };
}

// --- 由来推定 ---

const themeLabel = () => theme.isUser ? "theme(user)" : "theme";

function guessSource(
  key: string,
  configFile: ReturnType<typeof parseConfigFile>,
  themeKeys: Set<string>
): string {
  if (configFile.singles.has(key)) return "user";
  if (themeKeys.has(key)) return themeLabel();
  if (/^font-family-(bold|italic|bold-italic)$/.test(key) && configFile.singles.has("font-family"))
    return "auto";
  return "auto";
}

function guessKeybindSource(
  trigger: string,
  action: string | null,
  configFile: ReturnType<typeof parseConfigFile>,
  themeKeys: Set<string>
): string {
  for (const kb of configFile.keybinds) {
    if (kb.trigger === trigger) return "user";
    if (action && kb.action !== "unbind" && kb.action === action) return "user";
  }
  if (themeKeys.has(`keybind ${trigger}`)) return themeLabel();
  return "auto";
}

// --- 表示 ---

const c = {
  yellow: "\x1b[33m",
  green: "\x1b[32m",
  blue: "\x1b[34m",
  dim: "\x1b[2m",
  nodim: "\x1b[22m",
  cyan: "\x1b[36m",
  reset: "\x1b[0m",
};

// keybindの区切り文字(+ >)をdim表示（++ の2つ目はキー名なのでそのまま）
function formatName(name: string): string {
  const padded = name.padEnd(35);
  if (!name.startsWith("keybind ")) return `${c.yellow}${padded}${c.reset}`;
  const prefix = "keybind ";
  const rest = padded.slice(prefix.length);
  const formatted = rest
    .replace(/>/g, `${c.reset}${c.dim}>${c.reset}${c.yellow}`)
    .replace(/(?<!\+)\+/g, `${c.dim}+${c.nodim}`);
  return `${c.yellow}${prefix}${formatted}${c.reset}`;
}

function row(name: string, def: string, cur: string, src: string) {
  const curColor = src.startsWith("user") ? c.green : c.blue;
  console.log(
    `${formatName(name)}  ${c.cyan}${src.padEnd(14)}${c.reset}  ${curColor}${(cur || "(empty)").padEnd(20)}${c.reset}  ${c.dim}${(def || "(empty)").padEnd(20)}${c.reset}`
  );
}

function dimRow(name: string, val: string) {
  console.log(
    `${c.dim}${name.padEnd(35)}${c.reset}  ${c.cyan}${"default".padEnd(14)}${c.reset}  ${c.dim}${(val || "(empty)").padEnd(20)}  ${(val || "(empty)").padEnd(20)}${c.reset}`
  );
}

// --- メイン ---

const showAll = process.argv.includes("--all") || process.argv.includes("-a");
const noHeader = process.argv.includes("--no-header");
const configFile = parseConfigFile(join(dirname(process.argv[1]), "config"));
const theme = loadTheme(configFile.singles.get("theme") ?? "");
const themeKeys = theme.keys;
const defaults = parseConfigOutput(run(["+show-config", "--default"]));
const current = parseConfigOutput(run(["+show-config"]));

// 現在値マップ
const currentSingles = new Map<string, string>();
const currentPalette = new Map<string, string>();
const currentKeybinds = new Map<string, string>();
for (const { key, value } of current) {
  if (key === "palette") {
    const eq = value.indexOf("=");
    if (eq !== -1) currentPalette.set(value.slice(0, eq), value.slice(eq + 1));
  } else if (key === "keybind") {
    const eq = value.indexOf("=");
    if (eq !== -1) currentKeybinds.set(value.slice(0, eq), value.slice(eq + 1));
  } else {
    currentSingles.set(key, value);
  }
}

// デフォルト値マップ
const defaultPalette = new Map<string, string>();
const defaultKeybinds = new Map<string, string>();
for (const { key, value } of defaults) {
  if (key === "palette") {
    const eq = value.indexOf("=");
    if (eq !== -1) defaultPalette.set(value.slice(0, eq), value.slice(eq + 1));
  } else if (key === "keybind") {
    const eq = value.indexOf("=");
    if (eq !== -1) defaultKeybinds.set(value.slice(0, eq), value.slice(eq + 1));
  }
}

// ── 単一値設定 ──
if (!noHeader) {
  console.log(
    `${c.dim}${"設定".padEnd(34)}  ${"由来".padEnd(12)}  ${"現在値".padEnd(18)}  デフォルト${c.reset}`
  );
  console.log(
    `${c.dim}${"─".repeat(35)}  ${"─".repeat(14)}  ${"─".repeat(20)}  ${"─".repeat(20)}${c.reset}`
  );
}
const seen = new Set<string>();
for (const { key, value: defVal } of defaults) {
  if (key === "palette" || key === "keybind" || seen.has(key)) continue;
  seen.add(key);
  const curVal = currentSingles.get(key);
  if (curVal !== undefined && curVal !== defVal) {
    row(key, defVal, curVal, guessSource(key, configFile, themeKeys));
  } else if (showAll) {
    dimRow(key, defVal);
  }
}

// ── palette ──
for (const [idx, defColor] of defaultPalette) {
  const curColor = currentPalette.get(idx);
  const name = `palette ${idx}`;
  if (curColor && curColor !== defColor) {
    const src = themeKeys.has(`palette ${idx}`) ? themeLabel() : "unknown";
    row(name, defColor, curColor, src);
  } else if (showAll) {
    dimRow(name, defColor);
  }
}

// ── keybind ──
const allTriggers = new Set([...defaultKeybinds.keys(), ...currentKeybinds.keys()]);
for (const trigger of [...allTriggers].sort()) {
  const name = `keybind ${trigger}`;
  const def = defaultKeybinds.get(trigger);
  const cur = currentKeybinds.get(trigger);
  if (def && cur) {
    if (def !== cur) {
      row(name, def, cur, guessKeybindSource(trigger, cur, configFile, themeKeys));
    } else if (showAll) {
      dimRow(name, def);
    }
  } else if (cur) {
    row(name, "(none)", cur, guessKeybindSource(trigger, cur, configFile, themeKeys));
  } else if (def) {
    row(name, def, "(removed)", guessKeybindSource(trigger, null, configFile, themeKeys));
  }
}
