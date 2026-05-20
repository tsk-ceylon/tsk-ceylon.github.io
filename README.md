# TSK Ceylon Website

Static brochure / lead-gen site for TSK Ceylon (fire extinguisher sales & servicing, Sri Lanka).
Astro + Tailwind v4, deployed free on GitHub Pages.

## Develop

```bash
npm install
npm run dev        # http://localhost:4321
npm run verify     # type-check + build + smoke test + link check
```

## Edit content

All company content is in `src/data/`:

- `site.ts` — name, phone, WhatsApp, email, address, hours, nav, Web3Forms key
- `products.ts` — extinguisher range
- `services.ts` — services offered

Replace every value marked `// PLACEHOLDER` with TSK Ceylon's real details, and set
`web3formsAccessKey` to a free key from https://web3forms.com (no account needed; submissions arrive by email).

## Deploy

Pushing to `main` builds and deploys via `.github/workflows/deploy.yml`.

The site publishes at **`https://tskceylon.github.io/`** — repo `tskceylon/tskceylon.github.io`, with GitHub Pages source set to **GitHub Actions** (Settings → Pages).
