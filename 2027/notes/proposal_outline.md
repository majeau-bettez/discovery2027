# Proposal rewrite (C1): outline, page budget and decisions to settle

*Working note, 2026-10-18. Builds on `pillar1_market_consequences.md`, `pillar2_consequential_process_modelling.md`, `integration_across_pillars.md`, the program map (`figures/program_map/`), the battle plan and the 2026 committee comments. Nothing here is grant text yet.*

## 1. What changes from 2026

| 2026 | 2027 |
|---|---|
| Problem: p-ALCA is attributional, so p-CLCA anchored in SSP/RCP is needed | Kept, but compressed. The *why* was never criticised; the *how* was |
| Structure: Tasks 1–4 = one task per HQP (energy background, materials background, regional ESM foreground, MSc demos) | Long-term goal → two pillars (market consequences: *which units operate*; process consequences: *how they operate*) → objectives tested against references of decreasing strength (known → unknown). HQP appear as annotations of objectives, not as the structure |
| Coverage of all materials (metals, polymers, food, construction) | Steel as shared case; nitrogen as second shared case; energy as structural testbed. Coverage is a long-term goal, not a 5-year deliverable |
| Validity: unstated | Evaluation, not validation: every objective names its reference (structural model, expert-built model, observed capacity, reported statistics, none) and the same two success criteria (agreement within tolerance; preservation of decision rankings) |
| Open infrastructure: asserted | Open class interfaces and checks; parameter sets may be licensed; v0 exists (CFI); maintenance mechanisms named |
| Stakeholder panel (all continents, Delphi-like): praised but unspecified | **Decision needed (§5, D1)** |
| AI: absent | Means, not end: makes perturbation batches, audited pipelines and model construction affordable; evaluated, never trusted |
| 3 PhD + 2 MSc | 3 PhD + 3 MSc, staggered (peak 5 in years 2–3) |

## 2. Unifying claim (one sentence the whole text hangs on)

> Consequences are obtained by **perturbing models**, not by reading fixed recipes (inventories) or fixed trends (marginal heuristics); the program builds consistent, evaluated reductions of market models (Pillar I) and process models (Pillar II) so that perturbation becomes affordable and checkable in p-CLCA.

This is what makes two pillars one program. If a paragraph does not serve this claim, it goes.

## 3. Page budget (5 pages, 12 pt, compact class)

| § | Section | Pages | Main content | Answers 2026 comment |
|---|---|---|---|---|
| 1 | Context and gap | 0.8 | Macro models guide macro decisions; micro/meso decisions use LCA; p-ALCA is temporally consistent but not consequential (keep the electricity-efficiency and recycled-content examples, tie the latter to steel scrap). The **how** is weak: trend heuristics are fragile (Maes et al. 2023), confuse demand-driven with calendar-driven growth, bundle three untested links; inventories are generic proxies (clones, unit yields), so even a correct marginal supplier maps to the same dataset | — |
| 2 | Long-term goal, research questions, approach | 0.7 incl. figure | Long-term (>5 y): p-CLCA as perturbation of interoperable market and process models, anchored in context scenarios. Main question per pillar ("how"), one program-level comparative question. Design-science logic: success criteria, not falsification of general laws. Figure = program map | Program vs. series of projects |
| 3 | Shared protocol and evaluation | 0.45 | Perturbation definition (size, start, end, profile, information lead); two success criteria; the ladder of references (structural reference → observed/reported data → none); cumulative comparison table; error profiles "in the settings tested", no universal thresholds | How validity will be tested |
| 4 | Pillar I — market consequences | 1.0 | ν, φ(t), m(t) chain; timing-shift and its exactness condition (cumulative vs. calendar drivers) as a testable hypothesis; tiers A/B/C defined by their reference; O1.1, O1.2, O1.3 with first work package (EnergyScope Québec: dynamic vs. snapshot; flat vs. peak-coincident load) | Methodological detail, feasibility |
| 5 | Pillar II — process consequences | 1.0 | Why: discriminating power of marginal analysis is capped by generic inventories; foreground anticipation; operation decisions. O2.1 interface questions (contextualization, multifunctionality at the interface, structural uncertainty, maturity without free parameters, reduction, confidential instances); O2.2 known → undeployed; O2.3 steel class vs. ecoinvent | Methodological detail, feasibility |
| 6 | Integration, timeline, risks | 0.45 | Shared cases (steel, nitrogen, industrial heat); two synthesis moments; compact HQP calendar (table or figure strip); one fallback per objective | Feasibility over timeline |
| 7 | Foundations (recent progress) | 0.25 | Provost-Savard (timing-shift), EnergyScope Québec + mescal, Regioinvent, mass-balanced ecoinvent, Bieuville metals, MetalliCan, composting/HTC models, OPLA/plastics (expertise only), CFI v0. Can be distributed into §4–5 as "assets" lines instead | Feasibility |
| 8 | Open infrastructure, EDI in research, significance | 0.35 | Maintenance mechanisms; EDI-in-research paragraph (see D2); impact for Canadian heavy industry and planned grids | Maintenance; stakeholders; EDI |
| | **Total** | **5.0** | | |

The 2026 text spent ~2.3 pages on context and impact and ~1.7 on methods. The 2027 split must be roughly reversed. Write §3–6 first, then cut §1 to fit.

## 4. Reuse map for the 2026 text

- **Keep (condensed):** first paragraph on IAMs/SSPs; the p-ALCA paragraph; the electricity-efficiency inconsistency example; the recycled-content example; the "perturbations around several base scenarios" paragraph (it is the SSP anchoring and must stay explicit, see W5).
- **Rewrite:** the "Overarching objective" paragraph ("radical shift", "big data", "data fusion" → drop the buzzwords; replace with the unifying claim).
- **Drop:** Tasks 1–4 text; "coverage rather than specificity"; the stakeholder-panel paragraph in its 2026 form; most of "Importance and impact" (the three policy-name-dropping paragraphs can become two sentences).

## 5. Decisions to settle before drafting

- **D1. Stakeholders.** The 2026 panel was the only item the committee called a strength, and the new design has silently dropped it. Options: (a) cut it and say nothing — reviewers who read both years will notice; (b) replace it with **decision partners per case** (ArcelorMittal for steel, Hydro-Québec/CANMET for heat and load, PLASMA results for nitrogen) whose role is concrete: they define the decision alternatives and the rankings that the second success criterion tests; (c) keep a scenario-elicitation panel, fully specified. Recommendation: (b). It turns a vague strength into an operational one at no HQP cost.
- **D2. EDI in research.** The external reviewer judged EDI in the LCA variables "not applicable, reasonably". Do not overclaim. Candidate substance, one paragraph at most: (i) scenario selection includes low-demand/sufficiency pathways, not only growth-based SSPs (keeps the 2026 De Bortoli argument); (ii) disaggregation to local markets (O1.2) makes visible where burdens and benefits fall, which aggregate regions hide. Decide whether (ii) is real work or decoration; if decoration, keep only (i).
- **D3. Title.** The 2026 title promised "decarbonization and circularity transition pathways"; circularity is now one case. Candidates:
  1. *Consequential life-cycle assessment by model perturbation: market and process responses to decisions in a world in transition*
  2. *Prospective consequential LCA from perturbable market and process models*
  3. *Which units operate, and how: prospective consequential LCA anchored in transition scenarios*
- **D4. Budget and the 6 HQP.** 2026 asked $508k for 3 PhD + 2 MSc. Six HQP at 2026 stipend rates is roughly $560k+ before travel. Decide which HQP are DG-funded vs. expected co-funding (Consortium, scholarships), and say so in the proposal's timeline line, not only in the budget. The committee checks coherence between HQP numbers, budget and timeline (battle plan C8).
- **D5. Second Tier A model.** See W1.

## 6. Weak points a reviewer will probe (and proposed answers)

- **W1. Generality of Pillar I's error profiles.** The structural reference is one provincial, hydro-dominated, planned system. Error profiles for heuristics measured there may not transfer to energy-only markets or to global IAM regions. GCAM is currently "if time allows". Either commit to a second Tier A model inside PhD I (years 3–4), or restrict the claim explicitly to "planned, peak-constrained systems" and present Québec as a deliberately contrasted case. Without one of the two, the generality claim is unsupported.
- **W2. "Blind" AI re-derivation is not blind.** O2.2 re-derives the published composting and HTC models from public sources. Language models have likely seen those papers, so agreement may reflect recall, not construction ability. Mitigations to state: include at least one reference model not in the public record (unpublished group model or partner model), or one published after the model's training cutoff; log sources consulted; compare against a no-AI baseline effort. One sentence in the proposal, but it must be there for an AI-literate reviewer.
- **W3. One perturbation definition for both pillars.** Pillar I perturbs demand; Pillar II perturbs design or operation. The "shared protocol" claim holds only if the protocol defines a perturbation generally (a change in a decision variable, with its timing and information lead) and translates process-level changes into the demand changes Pillar I consumes (load profile, coproduct output). State that translation explicitly; otherwise "shared protocol" reads as a slogan.
- **W4. The timing-shift exactness claim.** "Both regimes agree to first order in a growing market" is our argument, not a result. Present it as a hypothesis with its test (O1.1), not as a foundation.
- **W5. SSP/RCP anchoring has become implicit.** In the pillar notes, scenarios enter as the market regime that sets φ(t). The 2026 core idea, decisions evaluated as perturbations around *several* base scenarios, with conclusions checked for robustness across them, should remain visible in §2–3; it is the bridge to the program's identity and to EG 1509 reviewers who funded nothing on the topic last year.
- **W6. Integration without an owner.** No HQP owns integration; the PI does, at two synthesis moments. That is defensible only if the shared protocol and comparison table exist from year 1 (owned by PhD I and PhD II jointly). Say who maintains them.
- **W7. Maintenance of open infrastructure** (2026 comment, still unanswered in the notes). Name the mechanisms: interfaces and checks in CI; versioned releases; integration into tools already maintained by others (premise, Brightway, Regioinvent, EnergyScope); licensed parameter sets as a funding route for upkeep; CFI-funded programmer for v0 (state the fact, not the funding rules).

## 7. Writing order

1. §3 shared protocol (it constrains everything else) → 2. §4 and §5 in parallel → 3. §6 with fallbacks and calendar → 4. §2 and the figure caption → 5. §1 cut to fit → 6. §7–8 → 7. consistency pass against training plan and budget.

## 8. Follow-ons outside the proposal

- Training plan: per-HQP blocks follow directly from the objective table (O-code, skills, co-supervision, first deliverable); update "two-thirds PhD" to half/half.
- Relationship to other support: CFI v0 framing (pillar 2 note), Consortium as partner-dependent.
- Battle plan: Tasks 1–3 framing is superseded by the pillars; B1–B5 are largely covered by the pillar notes, B6 (D1–D2) and B7 (W7) are not.
