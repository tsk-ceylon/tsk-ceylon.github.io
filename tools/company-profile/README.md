# Company Profile PDF — Build

Generates `public/company-profile.pdf` from the brand-styled Typst document.
The PDF is committed; rebuild manually after content changes.

## Build

```bash
npm run pdf
```

The script (`build.mjs`):

1. Reads `src/data/site.ts` and extracts contact fields (phone, email,
   address, etc.) via a regex parser.
2. Writes them to `tools/company-profile/site.json` (transient — gitignored).
3. Runs `typst compile tools/company-profile/company-profile.typ
   public/company-profile.pdf --root .`.
4. Deletes `site.json`.

## Files

- `company-profile.typ` — main 11-section document.
- `template.typ` — brand tokens, page header/footer chrome, reusable helpers
  (`pillar`, `value-card`, `numbered-card`, `checklist`, `quote-band`, …).
- `build.mjs` — Node build orchestrator.
- `site.json` — transient build artefact; do not commit.

## When to rebuild

Run `npm run pdf` after editing any of:

- `docs/company-profile/*.md` (and propagating prose changes into
  `company-profile.typ` — the markdown is the spec, the `.typ` is the canonical
  copy).
- `template.typ` (visual changes).
- `src/data/site.ts` (contact details flow through to the PDF footer).

Then commit `public/company-profile.pdf` along with the source change.

## Requirements

- `typst` 0.13+ (`brew install typst`).
- Node 18+.
- Optional: Inter font installed on the build machine for the closest match
  to the website typography. Falls back to Helvetica / Arial otherwise.
