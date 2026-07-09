import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import test from "node:test";

const root = path.dirname(fileURLToPath(import.meta.url));
const repoRoot = path.resolve(root, "..");

test("tandem uses the local rs-vite-plugin-elm package", () => {
  const pkg = JSON.parse(fs.readFileSync(path.join(repoRoot, "package.json"), "utf8"));
  assert.equal(pkg.type, "module");
  assert.equal(pkg.dependencies["rs-vite-plugin-elm"], "file:../rs-vite-plugin-elm");
  assert.equal(pkg.dependencies["vite-plugin-elm"], undefined);

  const viteConfig = fs.readFileSync(path.join(repoRoot, "vite.config.js"), "utf8");
  assert.match(viteConfig, /from "rs-vite-plugin-elm"/);
});
