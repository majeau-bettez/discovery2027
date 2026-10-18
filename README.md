# NSERC Discovery Grant — 2027 resubmission

Sources for Guillaume Majeau-Bettez's NSERC Discovery Grant application: prospective consequential LCA anchored in SSP/RCP scenarios.

## Layout

```
2026/              Application as submitted in 2025 (RGPIN-2026-06807, not funded). Frozen: do not edit.
  submitted/       The proposal and budget PDFs exactly as submitted.
2027/              Working copy for the resubmission. Started as an identical copy of 2026/.
shared/
  nserc.cls        Class enforcing NSERC formatting (12 pt Times New Roman, 6 lines/inch, margins).
  fonts/           Times New Roman TTF files used by nserc.cls.
private/           (git-ignored) Reviews, decision notice, NOI printout: anything that should not be public.
```

Each year folder contains:

| File | Content |
|---|---|
| `proposal.tex` | Description of the research program (5 pages + 2 pages of references) |
| `budget.tex` | Budget justification (2 pages) |
| `discovery.drawio.svg` / `.pdf` | Program figure: editable draw.io source / PDF included by `proposal.tex` |
| `trainingPlanHQP.txt` | Training plan for highly qualified personnel (HQP) |
| `pastHQP.txt` | Past HQP contributions |
| `mostSignificantcontributions*.txt` | Most significant contributions (two versions) |
| `OtherResearchSupport.txt` | Other sources of research support |
| `references.bib` | Bibliography: the cited entries only, self-contained |
| `Discovery_Guillaume.bib` | (2026 only) The hand-curated bib file used alongside the Zotero library, kept for history |

To see everything that changed this round: `git diff cff12ab -- 2027/` or `diff -r 2026 2027`.

## Building

Requires TeX Live with XeLaTeX, biber, and the `biblatex-nature` style. From `2026/` or `2027/`:

```sh
latexmk          # builds proposal.pdf and budget.pdf
latexmk -c       # removes auxiliary files
```

The folder's `latexmkrc` handles the details:

- it uses XeLaTeX, which `fontspec` requires;
- it enables `-shell-escape`, which the `markdown` package needs;
- it puts `../shared/` on the search paths, so the class and fonts are found without copies.

If you compile from an editor without latexmk, set the same options yourself: shell escape, plus `TEXINPUTS=../shared//:` and `TTFONTS=../shared/fonts//:`.

## Bibliography

Each year folder carries a self-contained `references.bib`. The original 2026 sources read the full Zotero library from `/mnt/collection/...` plus `Discovery_Guillaume.bib`. `2026/references.bib` is the biber export of exactly the 28 entries cited in that version. Rebuilt with it, the 2026 proposal is pixel-identical to `2026/submitted/proposal.pdf`.

`2027/references.bib` starts as a copy of the 2026 one. When you cite new entries from Zotero, regenerate the minimal file on a machine that has the Zotero export:

```sh
cd 2027
cat /mnt/collection/zoterolibrary/zoteroFullLibrary_biblatex.bib references.bib > /tmp/all.bib
# temporarily point \addbibresource to /tmp/all.bib, then:
latexmk proposal.tex
biber --output-format=bibtex --output-resolve --output-file=references.bib proposal
# restore \addbibresource{references.bib}
```

Alternatively, paste the new entries into `references.bib` by hand. Unused entries do no harm; they just don't print.

## Figure

The NSERC upload needs a PDF. After editing `discovery.drawio.svg` in draw.io, export it to `discovery.drawio.pdf` (File → Export as → PDF, with "Crop" checked). The 2026 PDF was extracted directly from the submitted proposal, so it is exactly what reviewers saw.
