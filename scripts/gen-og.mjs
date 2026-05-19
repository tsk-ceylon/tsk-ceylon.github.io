import sharp from 'sharp';
import { mkdir } from 'node:fs/promises';

const svg = `
<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="630">
  <rect width="1200" height="630" fill="#14213D"/>
  <rect x="0" y="0" width="14" height="630" fill="#DC2626"/>
  <text x="80" y="270" fill="#ffffff" font-family="Arial, sans-serif" font-size="78" font-weight="bold">SK Ceylon</text>
  <text x="80" y="350" fill="#cbd5e1" font-family="Arial, sans-serif" font-size="40">Certified Fire Extinguishers &amp; Servicing</text>
  <text x="80" y="410" fill="#cbd5e1" font-family="Arial, sans-serif" font-size="40">across Sri Lanka</text>
</svg>`;

await mkdir('public/images', { recursive: true });
await sharp(Buffer.from(svg)).png().toFile('public/images/og-default.png');
console.log('Wrote public/images/og-default.png');
