# Company Profile — Source Content

Layout-level descriptions of the original TSK Ceylon printed brochure, one
markdown file per page. Each file mixes the page's prose copy with layout
annotations (`> Layout: …`), brand-palette notes, and `placeholder` references
to the brochure photographs (which are not in this repo).

These files are the **source of truth** for `tools/company-profile/company-profile.typ`,
which extracts the prose and re-typesets it as a clean branded PDF
(`public/company-profile.pdf`). They are not shipped to the public website.

Page order:

| # | File                                  | Section                            |
| - | ------------------------------------- | ---------------------------------- |
| 1 | `01-cover.md`                         | Cover                              |
| 2 | `02-about-us.md`                      | About Us / Company Overview        |
| 3 | `03-vision-mission-values.md`         | Vision, Mission & Core Values      |
| 4 | `04-nature-of-business.md`            | Nature of Business                 |
| 5 | `05-products-and-services.md`         | Products & Services                |
| 6 | `06-sectors-we-serve.md`              | Sectors We Serve                   |
| 7 | `07-competitive-advantages.md`        | Competitive Advantages             |
| 8 | `08-commitment-and-future.md`         | Commitment & Future Development    |
| 9 | `09-quality-and-compliance.md`        | Quality & Compliance               |
| 10| `10-why-choose-tsk-ceylon.md`         | Why Choose TSK Ceylon              |
| 11| `11-contact-information.md`           | Contact Information                |

## When to edit

Edit the relevant markdown file when the company's positioning, services, or
copy changes. Then rebuild the PDF:

```bash
npm run pdf
git add public/company-profile.pdf docs/company-profile/<file>.md
```

## Notes

- Contact details (phone, email, address, hours) come from `src/data/site.ts`
  at build time, not from these markdown files. Update `site.ts` to change
  those values everywhere — website footer, structured-data JSON-LD, and the
  PDF footer all share that one source.
- Page 5 of the original brochure ended its address with "Panadura 10300"
  while every other page used "Sri Lanka 10300". The PDF uses the consistent
  SSOT address; the typo is not propagated.
