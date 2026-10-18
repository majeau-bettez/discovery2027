# Pillar I (market consequences): working conclusions

*Working note — NSERC Discovery 2027 resubmission. Status: framing agreed (2026-10-18), aligned with Pillar II; objectives/sub-objectives not yet written. Live, editable version: https://claude.ai/code/artifact/4a3464f2-0fbc-43bc-b1c5-80246e4254fd (this file is a snapshot of it).*

## Bottom line

Pillar I represents the market consequences of micro- and meso-level decisions in prospective consequential LCA (p-CLCA): which suppliers respond, over which time frames, and in which local markets. It pairs with Pillar II (consequential process modelling). Consequences arise from changes in *which* units operate (Pillar I) and in *how* they operate (Pillar II). In both pillars they are obtained by perturbing models, not by reading fixed recipes or trends. Pillar II does not try to beat process engineers, and Pillar I does not try to beat economists. Both build pragmatic, consistent reductions of more complex models, with the accounting that connects them in one p-CLCA approach. The entry and closing point is aligning micro- and meso-level decisions with a world in transition, without retreating into model land.

## The problem

The case for why p-CLCA is needed is strong: IAMs and energy-system models (ESMs) guide macro decisions, but micro and meso decisions need consequential LCA. The "how" is weak, starting with identifying marginal suppliers.

- **Trend heuristics are fragile.** [Maes et al. (2023)](https://repository.uantwerpen.be/link/irua/199697) applied Weidema's procedure to IMAGE and REMIND electricity outputs. Their results are highly sensitive to the time interval chosen, and differ substantially between the two models.
- **Trend heuristics confuse two kinds of growth.** Some growth responds to demand. Some is set by the calendar: mandates, carbon-price paths, exogenous cost declines. Only the first is a consequence of extra demand.
- **The "long-term" assumption bundles three untested links.** Standard CLCA assumes that extra demand becomes extra supply, that the extra supply comes from new capacity after a lead time, and then argues only about which technology supplies it. Most methodological effort goes into that last link.
- **Coverage is uneven across sectors.** Energy has open, perturbable models. Food has a few. For metals, the models are mostly on the demand side, and supply is chaotic: pipelines, roadmaps, constraints from co-production and scrap availability.

## Research question

As in Pillar II, this is a "how" question, evaluated through explicit success criteria (design-science logic). It is not a general law of when a heuristic is good enough.

> **Main:** How can the market consequences of micro- and meso-level decisions be represented consistently in p-CLCA from macro-models of different types and resolutions, ranging from structural perturbation of models to heuristics applied to published scenarios or, where no model exists, to market evidence (installed capacity, utilisation, announced projects, trade flows), and disaggregated to the local markets where decisions play out?
>
> **Secondary (comparative):** Shared with Pillar II at program level: how much do representation choices change cLCA conclusions across decision types, at the market level (which units respond) and at the process level (how they operate)?

**Success criteria on two fronts** (shared with Pillar II):

- **Agreement** with the structural reference on the marginal mix and its impact intensity, within a stated tolerance.
- **Preservation of decision rankings.** A small deviation that flips the ranking of alternatives counts as failure.

For each heuristic, the output is an error profile characterized in the settings tested, not a universal threshold.

## Conceptual core

A pillar-I consequence is a chain of three explicit links, each with its own parameter. The perturbation itself is defined once and applied in the same way in every model.

1. **Net demand change (ν).** How much of the demand shock becomes extra supply, after price feedback (elasticities) and binding caps. ν = 1 only if supply is perfectly elastic. Under a binding emissions cap, the net effect on emissions can be near zero.
2. **Capacity response share φ(t).** How much of the extra supply comes from new capacity rather than from running existing capacity harder. It goes from 0 to φ∞ over time, and is set by:
   - **the market regime** in the reference scenario: growing and tight, or in overcapacity and decline;
   - **duration relative to lead time and asset life:** a short perturbation is met by existing capacity;
   - **when suppliers learn of the perturbation** (the information lead L = T_start − T_dec);
   - **institutions:** planned systems such as Hydro-Québec build to forecast peak demand; energy-only markets respond to scarcity prices;
   - **load profile:** electricity capacity follows peak demand, not energy, so a flat load and a peak-coincident one have different capacity consequences.
3. **Technology mix m(t).** Which suppliers respond, which is the classic marginal-mix question.

**Perturbation attributes:** size, start, end (T_end), time profile, information lead.

**Theoretical anchor for linearity and the timing-shift.** Plant-level investment is lumpy, yet the expected response to a marginal change is smooth.

- **Many investors:** averaging over firms near their investment thresholds smooths it out ([Caballero & Engel 1999](https://ideas.repec.org/a/ecm/emetrp/v67y1999i4p783-826.html)). This is the formal version of Weidema's argument.
- **Few, lumpy investors:** a marginal change shifts the timing of the next addition ([Manne 1961](https://www.econometricsociety.org/publications/econometrica/1961/10/01/capacity-expansion-and-probabilistic-growth); [Gilbert & Harris 1984](https://escholarship.org/uc/item/11v5q20z)). That is the timing-shift explored with Arianne Provost-Savard.
- **Both regimes agree to first order in a growing market** (our own argument, still to be demonstrated). Pulling the schedule forward is exact only when costs and constraints depend on cumulative deployment (resource grades, endogenous learning), not on the calendar. That condition can be tested.

## Strategy: tiered implementation

Each sector is handled at the most structural tier its models allow. Mirroring Pillar II, each tier is defined by the kind of reference it is evaluated against.

- **Tier A, structural reference.** Perturb an open model we can run. The model's own response is the ground truth for testing heuristics applied to its baseline.
- **Tier B, scenario outputs only.** Published scenarios give the market regime and gross capacity flows, after disaggregation to countries and reconciliation with national starting points. The timing-shift or trend rule is then applied. Reference: Tier A error profiles where both exist, plus the spread across models.
- **Tier C, market evidence.** No usable model exists, so use project pipelines, utilisation rates and trade data, with explicit checks for constrained supply. Reference: hindcasting, the only reference available where models are missing. Apply the heuristic to past data and compare with the capacity actually built. Weidema's procedure was originally validated this way ([Maes et al. 2023](https://repository.uantwerpen.be/link/irua/199697)).

| Sector | Main tier | Models we can perturb | Reference scenarios | Data on market state and pipelines | Hard part | Link to Pillar II |
| --- | --- | --- | --- | --- | --- | --- |
| Energy | A | EnergyScope Québec (dynamic and snapshot, peak hours; heavy-industry heat via the CANMET project); GCAM; PyPSA; MESSAGEix-GLOBIOM public baseline (optional) | NGFS, AR6, SSP database; Canada Energy Regulator; Hydro-Québec supply plans | Global Energy Monitor power tracker; EIA-860; NREL Cambium long-run marginal rates | Load profile and peak; binding caps | Process operation changes load profiles; heavy-industry heat |
| Nitrogen fertilizer and agriculture | A–B | GCAM land module; MAgPIE | SSP land-use outputs; OECD-FAO Agricultural Outlook; AgMIP | FAOSTAT incl. trade matrix; BACI; 2.-0 LCA iLUC model; ammonia plant data (source to identify) | Split between intensification, land expansion and reduced consumption; supply response of ammonia | Plasma fertilization vs. Haber-Bosch (O2.2, years 4–5) |
| Metals, steel first | B–C | MESSAGEix-Materials (whether it runs on public data is unverified) | IEA Critical Minerals Outlook; stock-flow models (ODYM) | USGS; GEM iron and steel tracker; NI 43-101 reports (SEDAR+); NRCan Major Projects Inventory | Constrained supply: scrap, by-products, overcapacity | Metallurgy class resolved by vintage (O2.3); ArcelorMittal |

The nitrogen market bridges the energy and agriculture rows. Haber-Bosch ammonia depends on natural gas or electrolytic hydrogen, and plasma fixation on electricity, so its marginal response couples both systems.

Shared LCA plumbing: IAMC nomenclature and pyam, premise, ecoinvent, Brightway. What is missing, and what we build, is a layer from scenarios to marginal mixes. It outputs marginal mixes per market and per tier, with metadata on regime, φ and error bounds.

## Novelty and positioning

- **Compared with Vandepaer et al. and Maes et al.** Their trend heuristics become one special case. When perturbations are infinitesimal, net flows approximate gross flows and costs depend only on cumulative deployment, our approach reproduces their result. Our method departs from theirs through gross flows, short-run and lead-time windows, effects after the perturbation ends, and non-marginal changes. We also measure the heuristic's error instead of assuming it is small.
- **Compared with economics.** We don't claim a better equilibrium theory. The claim is pragmatic: consistent reductions of economic models, with characterized error profiles, so practitioners can see what a shortcut costs them in the settings tested.
- **Compared with the IAM and ESM communities.** We use their models as testbeds and their scenarios as references. The specific research question is to separate capacity growth that responds to demand from growth set by the calendar, per technology and per model. It is measurable, and as far as we know it has not been done.
- **Disaggregation and reconciliation.** IAM trends come for aggregate regions ("OECD") and broad technology classes. Before they say anything about a local market and its suppliers, they must be broken down by country. They must also be reconciled with each country's starting point: existing fleet and its age, trade links, projects already planned. A growing regional trend can hide countries that are growing and others that are declining, so the local marginal supplier can differ from the regional one. Downscaling tools exist (e.g. IIASA's [DownScale](https://github.com/iiasa/DownScale)). Reconciling their results with plant-level data (GEM trackers) and national plans is part of what we build.
- **Validation does not require current official calibrations.** A heuristic is tested within a single model: apply it to the model's own baseline, then compare with that model under perturbation. Any runnable, internally consistent model will do.

## Convergence with Pillar II

- **Vintage.** The capacity response share φ(t) and the market regime decide which vintage responds. Idle capacity is often old; new capacity is close to best available technology. Pillar II's classes resolved by vintage (O2.3) make this distinction real in the inventory.
- **Geographic clones.** Pillar II's diagnostic quantifies where candidate suppliers map to the same proxy, that is, where identifying the marginal supplier changes nothing.
- **Joint hypothesis.** Uncertainty about the deployed foreground configuration exceeds uncertainty about the background marginal supplier. It is tested by variance decomposition on the nitrogen case (O2.2 anticipatory phase with O1.2, both in years 4–5).
- **Operation changes are also market perturbations.** A change in how a process runs (Pillar II) can change its load profile or coproduct output, and Pillar I translates that into market consequences.
- **Shared cases.** Plasma fertilization vs. Haber-Bosch (nitrogen market, building on the PLASMA project, which runs until 2027); heavy industry and heat in EnergyScope Québec (CANMET); steel (ArcelorMittal).
- **Shared evaluation logic.** Both pillars test a core representation against different kinds of reference, with the same success criteria on two fronts.

## Integration across pillars

See [integration_across_pillars.md](integration_across_pillars.md). In short: no dedicated HQP and no end-of-program work package; a shared protocol from year 1; shared cases (steel studied by one MSc from each pillar; heat with the CANMET project; nitrogen building on PLASMA results); two PI-led synthesis moments (year 3 and year 5); one program-level secondary question.

## Sub-objectives and HQP

Six HQP are funded by Discovery across both pillars: 3 PhD (4 years each) and 3 MSc (2 years each). The MSc projects apply and test what the PhDs develop, so they start only once a first version of the protocol and the class interface exists.

### O1.1 Representation of market consequences, tested in a perturbable model *(PhD, years 1–4)*

- The shared perturbation protocol, used by both pillars: size, start, end, time profile, information lead.
- The three links ν, φ(t) and m(t), and the accounting layer that turns a model's response into marginal mixes in the LCI.
- A formal statement of when the timing-shift is exact (drivers indexed on cumulative deployment vs on the calendar), and a decomposition of IAM capacity growth into the part driven by demand and the part driven by the calendar.
- Tier A experiments in EnergyScope Québec. Dynamic vs. snapshot versions test foresight. Peak-coincident vs. flat perturbations (heat pumps vs. industrial load) test the load-profile effect. The trend and timing-shift heuristics are benchmarked, including after the perturbation ends. Heavy-industry heat is handled with the CANMET project.
- GCAM perturbations in the later years, if time allows.

### O1.2 From regional scenarios to local markets *(MSc, years 4–5)*

- Disaggregate IAM regional trends to countries, and reconcile them with plant-level fleets, trade links and national plans (Tier B).
- Case: nitrogen fertilizer and ammonia, Canada and the US. It builds on results of the PLASMA project (plasma fixation vs. Haber-Bosch). PLASMA runs until 2027 and funds no HQP in this program.
- Inherits the O1.1 protocol and feeds the final synthesis.

### O1.3 Marginal suppliers from market evidence: a steel hindcast *(MSc, years 2–3)*

- Apply heuristic marginals to the data available at the time (2000–2020), and compare with the capacity actually built (Tier C).
- Audited extraction pipelines (GEM iron and steel tracker, company and project filings).
- Paired with the O2.3 MSc on steel in Pillar II. Another metallurgy sector can replace steel if circumstances require. Feeds the mid-term synthesis.

The calendar for both pillars is in [integration_across_pillars.md](integration_across_pillars.md).

## First steps of O1.1 and feasibility assets

**First work package: perturbation experiments in EnergyScope Québec.** Benchmark the timing-shift and trend heuristics against the structural response.

- **Dynamic vs. snapshot versions** test the foresight assumption directly, on the same system.
- **Peak resolution** tests the peak-vs-energy question. A winter-peaking heat-pump load compared with a flat industrial load is a clean, policy-relevant first case.

Then GCAM, for energy and land together at global scale. The public MESSAGEix-GLOBIOM baseline is optional, if an intertemporal LP with duals is wanted.

**Assets**

- EnergyScope Québec: in the final stages of publication. Cite as in press or submitted.
- Provost-Savard et al. manuscript (r3): timing-shift method, time windows, decomposition vs. perturbation. The program builds directly on it.
- Calcul Québec, which fully supports CPLEX, for batches of perturbation runs.
- IIASA contacts. Present collaboration as an enhancement (current calibrations, GLOBIOM proper), not as a prerequisite.
- Training angle for HQP: students who can work across LCA, energy-system models and verified data pipelines.

## Role of AI

AI does not replace the economics. It makes it affordable to test our shortcuts against economic models and to keep everything consistent while doing so. AI writes code that people review, and the checks themselves run as ordinary code. Results do not depend on the AI's judgment. AI-assisted construction of process models is a core objective of Pillar II. In Pillar I, AI serves the pipelines, checks and model operation below.

1. **Consistency checks written as code**, run on every scenario update. They check that supply = demand per market and region, that capacity × capacity factor ≥ production, and that ΔK = additions − retirements. They also harmonise drivers across models (SSP2 population and GDP), and check units and the signs and sums of marginal shares.
2. **Pipelines for heterogeneous sources**, such as NI 43-101 reports, Régie de l'énergie filings and GEM trackers. Every value keeps a link to its page and line. Accuracy is audited on a hand-checked sample, and error rates are reported.
3. **Concordances** linking IAMC variables, ecoinvent activities, stock-flow categories and HS codes. AI drafts them, people adjudicate, and the tables are versioned.
4. **Model operation, the strategic point.** Trend heuristics were justified because running models for each CLCA is "overly time-consuming" (Vandepaer et al. 2019). Scripting perturbation batches with AI lowers that cost. This moves the boundary between Tier A and Tier B, so heuristics can be validated systematically instead of assumed.

## Open research checks

- [ ] **Ammonia and nitrogen market:** a source for plant-level capacity and project pipelines.
- [ ] **Hindcasting for Tier C:** a historical period and sector where heuristic marginals can be checked against capacity actually built (steel 2000–2020 is a candidate).
- [ ] **MESSAGEix-Materials:** whether it runs from public data. Ask the IIASA contacts.
- [ ] **HQP:** allocation settled (6 funded by Discovery, see calendar). Update the training-plan sentence from "two-thirds PhD" to about half PhD and half MSc.
- [ ] **Objective structure (next step):** core representation O1.1 tested under three kinds of reference (O1.2–O1.4); decide whether geographic disaggregation is its own sub-objective or part of O1.1.

REMIND and IMAGE input data are not public, so these models are used through their outputs only (Tier B) unless a collaboration is set up.

## Leave out, or keep light

- Detailed sector-by-sector model lists. The proposal names the tiers and the first work package, not the whole inventory.
- Claims that AI validates AI-collected data. The claim is that AI writes deterministic checks and pipelines that we audit.
- Any dependence on IIASA data access for the core deliverables.
- Solver, licence and computing logistics: one line of feasibility, no detail.
