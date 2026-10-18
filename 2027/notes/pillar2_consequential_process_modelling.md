# Pillar 2 — Consequential process modelling

*Working note — NSERC Discovery 2027 resubmission. Status: structure agreed (2026-10-18); details open (see end). Cross-pillar integration: see `claude/integration_across_pillars.md` (agreed 2026-10-18), which supersedes the Pillar 2 synthesis and secondary question below.*

## Rationale

- Identifying marginal suppliers (Pillar 1) is only as discriminating as the inventories behind them. When all candidate suppliers map to the same generic, average, outdated proxy (cloned RoW/GLO datasets, 100 % yields), marginal-supplier analysis produces precise-looking but empty results.
- More individual LCAs will not solve this. What is needed is **parametrized process models** that can represent variants of a technology by context (geography, operating conditions, feedstock) and by maturity/vintage (old low-efficiency units, optimized plants, with/without emission controls).
- The same models serve the **foreground**: anticipating what novel processes will look like once deployed, which is often more uncertain than the choice of their marginal suppliers.
- They also open a consequential question that LCA rarely addresses: **which processes to operate, and how** (design and operation decisions, not only marginal changes in consumption). Process design is today optimized for economic return, with sustainability assessed after the fact.
- **Positioning:** we do not try to beat process engineers at process modelling, just as Pillar 1 does not try to beat economists at market modelling. We develop pragmatic reductions of more complex models for cLCA, and integrate them consistently.
- **Contribution relative to process systems engineering:** LCA-integrated process optimization exists (e.g., Azapagic & Clift; Guillén-Gosálbez), but it is mostly attributional with a fixed background. Our focus is **retaining causal links**, not just average performance data: design and operation decisions whose consequences (coproducts, feedstock competition, load profiles) propagate through the system, i.e. **consequential process design**. This is a complementary contribution, not an exclusive niche: the amount of modelling (and automation) left to do is far larger than any single group.

## Entry and closing point

Aligning micro- and meso-level decisions (design, operation, deployment, adoption) with a world in transition. Each line of work starts from a real decision and ends by evaluating whether, and how, a process-model representation changes the answer compared with a fixed recipe. Avoid "model land."

## Research question

Engineering research starts from a problem; the question is a "how," made evaluable through explicit success criteria (design-science logic) rather than falsification of general laws.

> **Main:** How can technologies be represented in cLCA as parametrized process models that capture the consequences of changes in design, operation and deployment context, and how can such models be built, validated and reduced efficiently?
>
> **Secondary (program level, shared with Pillar 1):** How much do representation choices change cLCA conclusions across decision types, at the market level (which units respond) and at the process level (how they operate)?

- Replaces the earlier pillar-level secondary question ("how much does process refinement change conclusions across types of cLCA").
- Answered by a **structured comparison across the case portfolio** (deliberately chosen to cover decision types), not by extra sampling. With about 5 cases this is a structured comparison, not statistics; state this explicitly.
- Screening by global sensitivity analysis on plausible variant ranges identifies where refinement *could* matter without building complex models first.
- Do **not** promise a general "when is a heuristic enough" law. The ambition is a systematic description of refinement effects.

## Long-term goal (program)

An infrastructure of interoperable **process model classes** (e.g., an "aluminium smelter" or "cement kiln" class instantiable for Québec or China, today or in 2050):

- flexible internals, **consistent interconnection**, built-in quality checks (mass/energy/elemental balances, validity ranges, regression tests);
- export to existing formats (EcoSpold2, brightway): the package is the source, the database is the compiled product. Existing formats are more limited, and for many uses our level of detail is excessive or simply upstream of their needs;
- **open structure, parameterization that can be proprietary:** classes, interfaces and quality checks are open; parameter sets and instances can be licensed (e.g., distributed via ecoinvent) or kept confidential by a company that exports only aggregated inventories. A diversity of actors, and some license fees, may be necessary for maintenance;
- open-source-software culture (packages, maintainer community) as the model; an ecosystem, not a single open database.

## Relationship to CFI funding

- A prototype infrastructure (**v0**) is being developed with CFI support, which funds software implementation only (programmer time, not students, papers or fundamental research).
- Funding periods only partly overlap; v0 currently embodies the PI's provisional design choices without HQP support.
- **Framing for the application** (section on relationship to other research support):
  > A prototype infrastructure (v0) is being developed with CFI support, which funds software implementation only. It embodies provisional design choices. This program funds the methodological research that will evaluate and revise them, along with all HQP training. There is no overlap in eligible costs.
- Present v0 as **feasibility evidence** and as a set of **design hypotheses** to be evaluated (prototype → evaluation → revision), not as a funding gap.
- Do not comment in the application on what CFI usually funds.

## Structure

One representation (O2.1, core), tested under three kinds of reference by two further objectives: O2.2 moves from known processes to undeployed ones, and O2.3 benchmarks a deployed sector against the existing database. Synthesis is handled at program level, across both pillars (see "Integration across pillars").

**Pillar II Discovery HQP: 3 of the program's 6** (2 PhD, 1 MSc). Calendar in `integration_across_pillars.md`.

| Objective | Setting | Reference | HQP |
|---|---|---|---|
| **O2.1** Representation of process model classes | Interface design; database diagnostic | Retrospective evaluation of v0 | PhD, years 1–4 |
| **O2.2** AI-assisted construction and anticipation | Known processes, then undeployed ones | Expert-built models ("ground truth"), then none | PhD, years 2–5 |
| **O2.3** Background sector class: steel | Deployed industrial processes | Existing database (ecoinvent) and reported statistics | MSc, years 2–3 (paired with O1.3) |

**Niches:**
- **O2.1 PhD:** the representation (interface) and the database diagnostic.
- **O2.2 PhD:** AI-assisted construction, validated where the answer is known, then applied where it is not.
- **O2.3 MSc:** one sector class, calibrated and benchmarked.

**Group expertise, not case studies:** the plastics work (ongoing PhD: MFA of Canadian plastics, OPLA ecodesign tool, early AI-assisted scale-up and modular modelling) is prior expertise and preliminary results the program builds on. Plastics are not among the program's case studies, and that PhD is neither funded by nor counted in this grant. Its AI-assisted scale-up work serves as proof of concept for O2.2's second phase; the two are sequential, not overlapping.

### O2.1 — Representation of process model classes for cLCA *(core; PhD, years 1–4)*

Methodological questions not funded by CFI:

- **Contextualization:** which dimensions (geography, vintage, maturity, operating state, feedstock) belong at the class interface, and how they propagate to interconnected classes.
- **Multifunctionality at the interface:** how coproducts and their consequential treatment are exposed when internals are flexible. A distinctive strength of the group.
- **Structural uncertainty:** alternative flowsheets, not only parameter ranges.
- **Maturity** without free parameters (explicit parameters such as yield, specific energy, catalyst life, capture efficiency, with sourced priors; skepticism toward generic learning curves and economies of scale).
- **Reduction:** reduced models and surrogates that preserve decision-relevant behaviour.
- **Open structure with proprietary parameters:** what the interface must expose for a confidential instance to remain checkable.

Steps:
1. **Year 1:** retrospective evaluation of v0 against these requirements (which provisional choices hold up, which break).
2. Design principles → revised **v1**, tested through O2.2–O2.3.

Motivation and scoping (**year 1 of the O2.1 PhD**, not a separate MSc: it gives the PhD an independent early output while the interface is being designed; undergraduate trainees can support the screening):
- **Database diagnostic:** automated screening of ecoinvent (reference yields = 1, balances that don't close where composition is known, geographic clones, vintages represented).
  - The clone problem persists in regionalized variants (e.g., regioinvent): these regionalize the *market mixes* a process draws on according to its country, not the *technology* of the process itself.
- **Prioritization:** GSA on representative cLCA systems (contribution × variant sensitivity) → a list of priority processes, which bounds the scope.

### O2.2 — AI-assisted construction and anticipation: from known to undeployed processes *(core element; PhD, years 2–5)*

One thesis arc: validate the AI-assisted workflow where the answer is known, then apply it where it is not. The credibility of the anticipatory part rests on the error profile established in the first part.

1. **Years 2–3 — Validation on known processes.**
   - Workflow: first principles + public sources → tested model classes on the O2.1 interface. AI's value: mobilizing broad engineering and thermodynamic knowledge into clean, tested code.
   - **Blind re-derivation** of the published composting and HTC models from public sources only; compare structure, balance closure, outputs and effort against the expert references.
2. **Years 3–4 — Flowsheet alternatives.**
   - At low maturity, the dominant uncertainty is **flowsheet structure** (separation sequence, recycling, heat integration, solvent recovery), not unit parameters; represent it as alternative flowsheets assembled from reusable unit-operation modules (heating, pumping, separation… parametrized by scale), possibly coupled to more sophisticated flowsheeting tools (IDAES).
   - AI-assisted generation of alternatives from design heuristics (Douglas's hierarchical approach), each checked for balance closure.
   - Tested first on a known process (can the workflow recover the actual configuration?), then opened up to unknowns.
3. **Years 4–5 — Anticipatory case: plasma nitrogen fixation vs Haber-Bosch.**
   - Builds on PLASMA project results. PLASMA ends in 2027, so this phase works from published or archived results, without live collaboration; state this plainly in the plan.
   - It is unclear how realistic a Haber-Bosch replacement is, and under which scenarios — exactly the type of question we target. Strong techno-economic dimension (complementary expertise within PLASMA).
   - **Co-timed with the O1.2 nitrogen MSc (years 4–5):** joint paper on the variance decomposition. *Hypothesis:* uncertainty about the deployed configuration (Pillar II) exceeds uncertainty about the background marginal supplier (Pillar I). This PhD owns the foreground side of that decomposition.

- *Success criteria, on two fronts* (shared protocol with Pillar I):
  1. **Process level:** agreement on major flows within a stated tolerance; errors characterized by category (trace/fugitive emissions, correlations out of range, basis mismatches such as LHV/HHV or wet/dry).
  2. **LCA level: ranking preservation.** Option rankings (decision alternatives × impact categories) must be preserved. An error on a minority flow that flips a ranking is a failure, even if the mass/energy balance agrees closely. This is a key distinction between LCA and typical process engineering, where agreement is judged on main flows. Possible operationalization: pairwise reversal rate, or probability of rank reversal under uncertainty.
- *Output:* a characterized error profile, publishable even if the criteria are not met.
- Stance: AI as tool, not magic; it does not generate data. Tests verify the code against the spec, not the spec against reality; expert judgment remains necessary.
- Calibration against reported data moved to O2.3, where reported statistics belong; this keeps the PhD to one arc.

### O2.3 — Background sector class: steel, benchmarked against ecoinvent *(MSc, years 2–3)*

- **Sector: steel** (decided jointly with Pillar I): BF-BOF → DRI-EAF (natural gas, then H₂), highly decision-relevant for the transition; ArcelorMittal as CIRAIG partner. Paired with the O1.3 MSc (steel hindcast); both start in year 2 and feed the mid-term synthesis. Another metallurgy sector can replace steel if needed.
  - Cement not put forward (the CANMET project is only just starting). Ammonia not chosen as background class; the nitrogen link goes through O2.2 (plasma) and O1.2.
- **Scope for an MSc:** variants by vintage within one or two routes, not the whole steel sector.
- **Calibration against reported data** (plant-level and sector statistics, NPRI, GHGRP) to estimate the inefficiencies that first-principles design models leave out (systematic optimism: part-load, start-ups, losses, maintenance).
- Head-to-head comparison with the ecoinvent datasets: internal consistency, calibration, change in downstream cLCA results.
- **Timing:** this MSc starts in year 2, before the O2.1 interface reaches v1. Treat that as a feature: O2.3 is the first real-world stress test of v0, and its findings feed the v1 design.

## Integration across pillars (agreed 2026-10-18)

*Source: `claude/integration_across_pillars.md` (written from the Pillar I chat). Replaces the former Pillar 2 "Synthesis — Effect of refinement across types of cLCA" as a separate objective.*

Integration is a cross-cutting element with no dedicated HQP and no end-of-program work package. A synthesis that waits for every PhD to finish is fragile, so integration is built into the design.

1. **Shared protocol from year 1.** Both pillars use the same perturbation definition, the same two success criteria (process- or market-level agreement within a stated tolerance, and preservation of LCA/decision rankings) and the same reporting template. Each finished case adds a row to a cumulative comparison table, so results are comparable by construction.
2. **Shared cases carry the integration.** Steel (ArcelorMittal) is studied by one MSc from each pillar (O1.3 hindcast, O2.3 class benchmark). Heavy-industry heat in EnergyScope Québec joins O1.1 with the CANMET project. Nitrogen (O1.2) builds on results of the PLASMA project (plasma fixation vs Haber-Bosch), which runs until 2027 and funds no HQP in this program. The joint variance decomposition (deployed foreground configuration vs background marginal supplier) comes out as co-authored papers on these cases.

HQP allocation and calendar for both pillars: see `integration_across_pillars.md` (6 Discovery HQP: 3 PhD, 3 MSc; 3 in Pillar II).
3. **Two PI-led synthesis moments.** Mid-term (year 3), from the first completed MSc cases; year 5, with the PhD students as co-authors.
4. **One program-level secondary question**, replacing the pillar-level ones: *How much do representation choices change cLCA conclusions across decision types, at the market level (which units respond) and at the process level (how they operate)?*

No postdoc is planned for synthesis. If one became available, its role would be mid-program (years 2–4), maintaining the shared protocol.

Pillar I working conclusions: https://claude.ai/code/artifact/4a3464f2-0fbc-43bc-b1c5-80246e4254fd

Pillar 2 decision cases that feed the cumulative comparison table: heat recovery and operating conditions of HTC in industrial symbiosis; coproduct use.

## Convergence with Pillar 1

Each pillar has its own contribution; they are stronger together:

- **Diagnostic (O2.1):** geographic clones make marginal-supplier identification meaningless; quantify where.
- **Vintage-resolved classes (O2.3):** needed for the short-term (idle capacity, often old) vs long-term (new capacity, near best available technology) marginal mechanism.
- **Variance decomposition (O2.2, years 4–5, with O1.2):** foreground configuration vs background marginal supplier, on the nitrogen case.
- **Heavy industry and heat (↔ EnergyScope Québec):** CANMET project (cement, paper), later.
- **Plasma fertilization (O2.2, building on PLASMA results) ↔ nitrogen market (O1.2):** potential displacement of Haber-Bosch nitrogen; realism depends on the scenario.
- **Steel (O2.3 ↔ O1.3):** class resolved by vintage paired with the hindcast of marginal suppliers.

## Existing assets and preliminary results

- Composting process model (published); HTC (published; industrial-symbiosis work in progress); XGBoost/OMLT surrogate for HTC.
- Plastics (group expertise, not a case study of this program): MFA of Canadian plastics via IO/LCA disaggregation (soon to be submitted); OPLA ecodesign tool for emerging plastics (in revision); AI-assisted scale-up and modular modelling (early stage; proof of concept for O2.2's second phase).
- Database-level work: regionalization, hybridization, rebalancing (evidence for the ability to enforce consistency constraints across a database).
- CFI infrastructure v0 (in development).

## Precedents to position against

- Parametrized and prospective inventories: Doka's waste models (parametrized but opaque Excel sheets), premise, carculator, lca_algebraic, EcoSpold2 parameters (supported but underused), Activity Browser/brightway parameters. Strength: parametrization exists. Gap: nothing connects these models together; no interconnection or quality-check standard.
- Scale-up for ex-ante LCA: Piccinno et al. 2016; Tsoy et al. 2020 (review); Caduff et al. (scaling laws); Parvatker & Eckelman 2019 (chemical LCI generation methods).
- Process modelling: IDAES (github.com/IDAES/idaes-pse; idaes-pse.readthedocs.io), WaterTAP (domain library on IDAES; LCI layer unverified); Lee et al. 2021, *J. Adv. Manuf. Process.* (citation to be verified).
- Open databases: Bonsai.
- **To check:** NSERC Discovery 2017 "Modular integrated hybrid LCA" (open.canada.ca, record GC-2017-Q1-03569). Modular at the *data* level, not the process model level; identify the holder and outcomes, and differentiate.

## Open items

- [x] Former O2.3 (emerging technologies) folded into the O2.2 PhD; Pillar II now has three objectives (O2.1 representation, O2.2 construction and anticipation, O2.3 steel class). Plastics: group expertise only, not a case study.
- [x] O2.3 (formerly O2.4): steel (paired with O1.3), decided jointly with Pillar I.
- [x] Synthesis: moved to program level (integration across pillars).
- [ ] Align O2.2 success criteria wording with the shared protocol (same two criteria in both pillars).
- [x] Plasma scope confirmed (Haber-Bosch replacement angle); now the anticipatory case of O2.2, years 4–5.
- [x] Diagnostic: folded into year 1 of the O2.1 PhD (supersedes the earlier "separate MSc" decision).
- [x] HQP: 3 Discovery HQP in Pillar II (O2.1 PhD, O2.2 PhD, O2.3 MSc); every objective has a funded student. Program total 6 (see integration note).
- [ ] Quantitative success criteria for O2.2 and O2.3: process-level tolerances **and** ranking-preservation metric.
- [ ] Check the precedents marked "to verify."
- [x] Spin-off paper confirmed: quantified diagnostic of ecoinvent idealization (yields, balances, clones) = first paper of the O2.1 PhD (year 1). *(The details below are internal planning; in the application, one line at most.)*
  - Keep it achievable: restrict balance checks to sectors where composition is known (chemicals, metals); yields and clones can be screened across the whole database.
  - Main output = an open, rerunnable screening script that can be applied to each new ecoinvent version (the script has more lasting value than the snapshot).
  - Second, optional step: link to the GSA (do the detected idealizations actually matter in typical cLCA results?). This could be the second paper, or the thesis chapter.
  - Licence: open code, results reproducible by anyone holding an ecoinvent licence (the paper publishes the method and aggregated results; detailed results are regenerated by the user). Good relationship with ecoinvent; invite them as co-authors if appropriate.
  - Venues to consider: IJLCA, JIE (Research and Analysis), or a data/software journal for the tool.
