# Tightening round 2 (night of 2026-10-26/27)

Baseline: commit `2b1d4e7` (intended tag `draft-clean`, see note at the end).
Result: proposal body ≈ 4135 → ≈ 3600 words; **5 pages with ≈ 3 lines to spare**.

## How length was measured

The workspace has no biber/biblatex, so the proposal was compiled with a copy of `nserc.cls` in which
`markdown` and `biblatex` are stubbed out and every `\ci{…}` prints a two-digit superscript (`00`).
Everything else (fonts, margins, `savetrees`, the six-lines-per-inch spread) is the real class.
Real citations are a little wider where several keys are cited together (e.g. "3–5", "12,15"),
so the true slack is probably 1–3 lines rather than 3. Please confirm with a real build.

| Version | Length |
|---|---|
| `daft-long` tag | ≈ 6.3 pages |
| `2b1d4e7` (polish round 1) | ≈ 5.9 pages |
| this round | 5 pages, ≈ 2.9 lines free on p. 5 |

## What changed, and what it bought

Roughly in order of size:

1. **Figure (≈ 3 lines, no loss of legibility).** The PDF has ~44 pt of white margin on each side.
   It is now clipped (`trim=44pt 44pt 44pt 44pt, clip`) and set at `0.68\textwidth`, which keeps the
   cards at the *same* printed size as `0.74\textwidth` unclipped. The figure now lands at the top of p. 2.
2. **RQ-I and RQ-II dropped (≈ 7 lines).** The program-level question moves to the end of the
   common-strategy paragraph ("Across our cases, we ask a **program-level question**: …").
   RQ-I/II restated SO-1/SO-2, and each task keeps its own italic question. See alternative A below.
3. **Paragraph merges (≈ 4 lines).** CLCA definition + CLCA limits (§1); "We address two core
   challenges…" opens the Pillar I paragraph; Task 1.1's two paragraphs; Task 2.1's three into two;
   Risks follows Integration without a blank line; sections 5 and 6 merged into
   **"Integration, risks and broader impact"** (≈ 1 line).
4. **§1 (≈ 6 lines).**
   - P1: the "However…" and "In other words…" sentences fused into one.
   - ALCA examples folded into the definition.
   - Energy and materials examples now come first, then one shared explanation ("Both contradictions arise because p-ALCAs remain attributional").
   - CLCA definition: "which quantifies the direct and indirect consequences…" merged with the "whereas ALCAs…" contrast.
   - "What appears negligible…" was cut, then restored at zero line cost.
5. **§2 (≈ 4 lines).**
   - Pillar II: the premise sentence joined to the black-box sentence.
   - Problem (c) carries the reuse point once.
   - SO-2's parenthetical list moved to Task 2.1 (b), where the parameters are used.
   - Common strategy (a) is shorter but keeps "integration framework" and "modelling framework"; the premise and Brightway examples now appear only in the open-infrastructure paragraph.
6. **Tasks (≈ 8 lines).**
   - Task 1.1: the two rhetorical questions became one benchmarking sentence (timing-shift method versus trends in capacity or production).
   - Task 1.2: the falsification test and the metals capacity driver were each folded into the sentence they follow.
   - Task 1.3: shorter question ("Does resolving local markets within scenario regions…"); data lists shortened.
   - Task 2.1: co-product example shortened to hydrochar; success criteria unchanged in substance.
   - Task 2.2: lightly trimmed; the year-by-year plan is unchanged.
   - Task 2.3: the last three sentences joined.
7. **Closing sections (≈ 4 lines).**
   - Open infrastructure: same commitments, fewer words; "confidential company data exported as aggregated inventories" became "licensed or confidential data".
   - EDI: same structure; "These results can provide useful information for…" became "They can inform analyses of distributional justice, but do not address procedural justice…".
   - Significance: unchanged apart from one comma.
8. **Short last lines.** About a dozen paragraphs ended with one to three words on their last line; small trims removed those lines.

Kept on purpose: every commitment, task, HQP, case and citation; the EDI structure; the Significance text;
the long-term goal wording ("maintained and extended by the community"); the Partners paragraph (yours to revise).

## Alternatives tested (with their line cost against this version)

**A. Keep RQ-I and RQ-II as one compact paragraph instead of a bulleted list: costs ≈ 5 lines (doesn't fit as-is).**
To use it, something else of ≈ 3 lines must go (e.g. the HQP sentence closing Significance plus the
Canada overlay sentence in EDI). Text, ready to paste after the SO-2 paragraph (and remove the
"Across our cases…" sentence from the strategy paragraph):

> They translate into two research questions and a program-level one. \textbf{RQ-I}: how can the response of markets to a decision be derived consistently, from models or market evidence, down to the local markets where decisions play out, and with what errors? \textbf{RQ-II}: how can technologies be represented so that what their variants share is modelled once while differences in context, vintage, operation and maturity are captured, and how can such models be built efficiently? \textbf{Program level}: under which conditions do these representation choices change the decisions supported by p-CLCA, in the cases studied?

**B. Restore "useful," in the long-term goal ("useful, pragmatic and discriminating"): costs 1 line.**

**C. Restore "…so that they are not mistaken for local data" (EDI iii): costs 1 line.**

**D. Keep sections 5 and 6 separate: costs ≈ 1 line.**

**E. Figure at `0.74\textwidth` unclipped (previous setting): costs ≈ 3 lines.** Clipping is strictly better.

## Still open (not touched)

- **Partners**: "so that the ranking criterion is tested…" still refers to a criterion no longer defined, and OCP
  is not listed. Adding OCP will likely cost one line; there is room.
- **"centre of Figure~1"** (Integration): the caption is commented out, so the figure has no number.
  Either restore a one-line caption (≈ 1 line) or say "(centre of the program map)".
- The figure's Task 1.3 card still says "Disaggregating regional scenarios…".
- `<+PLANET research+>` placeholder in Task 2.2; `%TODO expand title` on the Pillar II heading.

## Tags

The tag `draft-clean` exists locally on `2b1d4e7` but **pushing tags is refused by the session's git proxy**
(HTTP 403, a policy denial, not retried). From your machine:
`git tag draft-clean 2b1d4e7 && git push origin draft-clean`.
The existing remote tag is spelled `daft-long`.
