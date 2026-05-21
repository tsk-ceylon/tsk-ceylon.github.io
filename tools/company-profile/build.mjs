#!/usr/bin/env node
// Compile the TSK Ceylon company profile to public/company-profile.pdf.
// Marshals contact data from src/data/site.ts → site.json (transient),
// runs `typst compile`, then deletes the transient JSON.

import { readFile, writeFile, unlink } from 'node:fs/promises';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import path from 'node:path';

const here = path.dirname(fileURLToPath(import.meta.url));
const repoRoot = path.resolve(here, '..', '..');
const siteTsPath = path.join(repoRoot, 'src', 'data', 'site.ts');
const sitePath = path.join(here, 'site.json');
const typFile = path.join(here, 'company-profile.typ');
const outPdf = path.join(repoRoot, 'public', 'company-profile.pdf');

function field(src, key) {
  // Matches `key: 'value',` — values are single-quoted strings in site.ts
  const m = src.match(new RegExp(`\\b${key}\\s*:\\s*'([^']*)'`));
  if (!m) throw new Error(`build.mjs: could not find \`${key}\` in src/data/site.ts`);
  return m[1];
}

const siteSrc = await readFile(siteTsPath, 'utf8');

const site = {
  name: field(siteSrc, 'name'),
  legalName: field(siteSrc, 'legalName'),
  tagline: field(siteSrc, 'tagline'),
  phoneDisplay: field(siteSrc, 'phoneDisplay'),
  email: field(siteSrc, 'email'),
  url: field(siteSrc, 'url'),
  address: {
    street: field(siteSrc, 'street'),
    city: field(siteSrc, 'city'),
    region: field(siteSrc, 'region'),
    postalCode: field(siteSrc, 'postalCode'),
    country: field(siteSrc, 'country'),
  },
};

await writeFile(sitePath, JSON.stringify(site, null, 2));

const result = spawnSync(
  'typst',
  ['compile', typFile, outPdf, '--root', repoRoot],
  { stdio: 'inherit' },
);

await unlink(sitePath).catch(() => {});

if (result.status !== 0) {
  console.error('typst compile failed');
  process.exit(result.status ?? 1);
}
console.log(`Built ${path.relative(repoRoot, outPdf)}`);
