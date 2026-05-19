// @ts-check
import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';
import tailwindcss from '@tailwindcss/vite';

const SITE_URL = process.env.SITE_URL ?? 'https://skceylon.github.io';
const PAGES_BASE = process.env.PAGES_BASE ?? '/';

export default defineConfig({
  site: SITE_URL,
  base: PAGES_BASE,
  trailingSlash: 'ignore',
  integrations: [sitemap()],
  vite: { plugins: [tailwindcss()] },
});
