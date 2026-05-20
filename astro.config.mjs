// @ts-check
import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';
import tailwindcss from '@tailwindcss/vite';

const SITE_URL = process.env.SITE_URL ?? 'https://tskceylon.github.io';
const PAGES_BASE = process.env.PAGES_BASE ?? '/';

export default defineConfig({
  site: SITE_URL,
  base: PAGES_BASE,
  trailingSlash: 'ignore',
  integrations: [sitemap()],
  // JSDoc `any` cast: @tailwindcss/vite's plugin type skews against the Vite
  // types bundled with this Astro version (ObjectHook/HotUpdatePluginContext).
  // Runtime is fine (dev server verified); this only silences `astro check`.
  vite: { plugins: [/** @type {any} */ (tailwindcss())] },
});
