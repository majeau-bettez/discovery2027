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
| `references.bib` | Cited entries only. **Not yet in the repo; see below.** |

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

## Bibliography: generating `references.bib`

The 2026 sources read the full Zotero library from `/mnt/collection/...` plus `Discovery_Guillaume.bib`. For the repo to stay self-contained, each year folder should instead carry a `references.bib` with only the cited entries. To generate it once, on a machine that has the Zotero export:

```sh
cd 2026
cat /mnt/collection/zoterolibrary/zoteroFullLibrary_biblatex.bib /path/to/Discovery_Guillaume.bib > references.bib
latexmk proposal.tex
biber --output-format=bibtex --output-resolve --output-file=references.min.bib proposal
mv references.min.bib references.bib
cp references.bib ../2027/
```

Until then, both proposals compile with citations shown as keys and an empty reference list. That is why the build is 6 pages instead of the submitted 7.

## Figure

The NSERC upload needs a PDF. After editing `discovery.drawio.svg` in draw.io, export it to `discovery.drawio.pdf` (File → Export as → PDF, with "Crop" checked). The 2026 PDF was extracted directly from the submitted proposal, so it is exactly what reviewers saw.
