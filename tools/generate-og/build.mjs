#!/usr/bin/env node
// Build public/images/og-default.png from src/data/site.ts + the brand logo.
// Sharp rasterises an SVG composition so the slogan + tagline stay in sync
// with the site data — same SSOT pattern tools/company-profile uses.

import { readFile } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';
import path from 'node:path';
import sharp from 'sharp';

const here = path.dirname(fileURLToPath(import.meta.url));
const repoRoot = path.resolve(here, '..', '..');
const siteTsPath = path.join(repoRoot, 'src', 'data', 'site.ts');
const logoPath = path.join(repoRoot, 'src', 'assets', 'images', 'brand', 'logo.png');
const outPath = path.join(repoRoot, 'public', 'images', 'og-default.png');

function field(src, key) {
  const m = src.match(new RegExp(`\\b${key}\\s*:\\s*'([^']*)'`));
  if (!m) throw new Error(`generate-og: could not find \`${key}\` in src/data/site.ts`);
  return m[1];
}

const xmlEscape = (s) =>
  s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');

const siteSrc = await readFile(siteTsPath, 'utf8');
const slogan = field(siteSrc, 'slogan');
const tagline = field(siteSrc, 'tagline');

const logoB64 = (await readFile(logoPath)).toString('base64');
const logoDataUri = `data:image/png;base64,${logoB64}`;

// Brand tokens — mirror src/styles/global.css and template.typ.
const navy = '#14213D';
const red = '#DC2626';
const muted = '#475569';

// Two-tone split: "Your Safety is" (navy) + "Our Priority" (red).
const sloganMatch = slogan.match(/^(.+?)\s+(Our\s.+)$/i);
const sloganLeft = (sloganMatch ? sloganMatch[1] : slogan).toUpperCase();
const sloganRight = (sloganMatch ? sloganMatch[2] : '').toUpperCase();

// Split tagline on "in <location>" so the location wraps to its own line,
// matching the existing OG image's two-line subhead treatment.
const taglineMatch = tagline.match(/^(.+?)\s+(in\s.+)$/i);
const taglineTop = taglineMatch ? taglineMatch[1] : tagline;
const taglineBot = taglineMatch ? taglineMatch[2] : '';

const W = 1200;
const H = 630;

// Logo (wing + wordmark) — preserves the 512×506 aspect.
const logoW = 290;
const logoH = Math.round((logoW * 506) / 512);
const logoX = (W - logoW) / 2;
const logoY = 50;

const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="${W}" height="${H}" viewBox="0 0 ${W} ${H}">
  <rect width="${W}" height="${H}" fill="#FFFFFF"/>
  <rect x="0" y="0" width="14" height="${H}" fill="${red}"/>

  <image href="${logoDataUri}" x="${logoX}" y="${logoY}" width="${logoW}" height="${logoH}"/>

  <g transform="translate(${W / 2}, 400)" font-family="Helvetica, Arial, sans-serif" font-weight="700" font-size="22" letter-spacing="3">
    <line x1="-285" y1="0" x2="-225" y2="0" stroke="${red}" stroke-width="2"/>
    <text text-anchor="middle" y="7" fill="${navy}">${xmlEscape(sloganLeft)} <tspan fill="${red}">${xmlEscape(sloganRight)}</tspan></text>
    <line x1="225" y1="0" x2="285" y2="0" stroke="${red}" stroke-width="2"/>
  </g>

  <text x="${W / 2}" y="475" text-anchor="middle" font-family="Helvetica, Arial, sans-serif" font-weight="700" font-size="34" fill="${navy}">${xmlEscape(taglineTop)}</text>
  <text x="${W / 2}" y="530" text-anchor="middle" font-family="Helvetica, Arial, sans-serif" font-weight="400" font-size="28" fill="${muted}">${xmlEscape(taglineBot)}</text>
</svg>`;

await sharp(Buffer.from(svg)).png().toFile(outPath);

console.log(`Built ${path.relative(repoRoot, outPath)}`);
