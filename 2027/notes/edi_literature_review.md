# EDI in the research content: literature scan for the 2027 resubmission

Companion file: `edi_literature.bib` (58 entries not already in the Zotero export, tagged `EDI_A1`…`EDI_A5` by angle, plus `discovery2027`). Bracketed keys below are keys in that file; keys marked *(lib)* are already in your library and were deliberately left out of the .bib. Search done 18 Oct 2026.

## Why this matters for the resubmission

The 2026 external reviewer praised the HQP-side EDI plan, then wrote that there do not appear to be "applicable EDI considerations in the LCA variables and outcomes", adding that EDI effects on LCA models of energy and mass flows "may not be understood". The committee scores EDI in the research process as a criterion. NSERC's guide asks applicants to say who benefits or is harmed, to justify which diversity factors they include, and to present disaggregated results where appropriate [nserc2025ediguide].

That reviewer gave you a free pass this time; the next one may not. More usefully, the literature shows the claim is wrong in a specific, technical way that your program is already positioned to exploit.

## Bottom line

1. **The strongest claim is structural, not decorative.** A consequential LCA decides *where* the marginal mine, smelter or power plant is, and that decides *who* bears the burden. Distributional analysis needs exactly the geographic disaggregation Pillar 1 already proposes. Evidence that location of consequences maps onto unequal exposure: Holland et al. 2016, Tessum et al. 2019, Zhang et al. 2017, Owen et al. 2023. I'm confident this argument holds and is defensible to an LCA panel.
2. **Value choices in impact assessment are documented to flip rankings.** Pillar 2's success criterion (preservation of LCA rankings) is directly exposed to this. De Schryver et al. 2013; Bayazıt Subaşı et al. 2024 show weights differ systematically by income group.
3. **Geographic bias in LCA data and methods is documented, but mostly descriptively.** Your own regioinvent and MetalliCan/Pellan work is the best quantitative evidence you have.
4. **Weak spots.** Peer-reviewed evidence on gender in LCA is thin. The quantitative environmental-justice evidence is overwhelmingly US and race-based and does not transfer directly to Canada. I found no peer-reviewed Québec-specific LCA–justice study in this pass (uncertain: absence of evidence from a targeted search, not proof of absence).

## 1. EDI claims made about or through LCA

**Distributional exposure behind consumption.** Tessum et al. 2019 [tessum2019inequity] attribute US PM2.5 to final consumption with an input–output supply-chain model and then compare who causes exposure with who receives it: Black and Hispanic Americans bear roughly 56% and 63% more exposure than their consumption causes, non-Hispanic White Americans about 17% less. Tessum et al. 2021 [tessum2021pm25] show the disparity holds for nearly every emission sector, so it is systemic rather than driven by a few sources. Thind et al. 2019 [thind2019electricity] find electricity-related PM2.5 mortality highest for Black Americans (about 6.6 vs 5.3 per 100,000 overall), with racial gaps larger than income gaps. These are the cleanest demonstrations that life-cycle attribution plus spatial exposure yields EDI-relevant outcomes. Caveat: US data on race; the transferable part is the method, not the categories.

**Social LCA and energy justice.** Fortier et al. 2019 [fortier2019energyjustice] organize energy-justice indicators by stakeholder (workers, consumers, local communities, society) along the life cycle. Stephens et al. 2025 [stephens2025batteryjustice] show battery chemistries rank differently once justice and criticality join carbon. Sehlin MacNeil et al. 2021 [sehlinmacneil2021slcaindigenous] argue S-LCA separates people from land, at odds with many Indigenous worldviews, and call for Indigenous communities as partners rather than stakeholders. The UNEP S-LCA guidelines are in your library (achtenGuidelinesSocialLife2020 *(lib)*).

**LCA is normative by construction.** Ekvall et al. 2005 (Ekvall2005JCPnormative *(lib)*) and Schaubroeck 2022 *(lib)* map attributional LCA to rule-based ethics and consequential LCA to consequentialism. Freidberg 2018 [freidberg2018values] and Nathan & Coles 2020 [nathan2020judgement] argue practitioners hide value judgements that should be stated. Jegen 2024 (jegenLifeCycleAssessment2024 *(lib)*) covers the politics of LCA in policy. Implication: choosing CLCA is itself an ethical stance; saying so costs nothing and reads as reflexive.

**Sharing principles.** Hjalsted et al. 2021 [hjalsted2021sharing] show absolute-sustainability verdicts change with the allocation principle; Heide & Gjerris 2024 [heide2024embedded] argue grandfathering and expenditure-based sharing (used by SBTi) fail to guarantee basic needs. CIRAIG's own scientific programme already commits to evaluating these downscaling choices, so you can cite alignment.

**Distribution inside consequential boundaries.** Almeida, Weidema & Godin 2022 [almeida2022redistribution] add re-spending of income by three household income groups to a consequential model and find persistent environmental and social effects. Weidema 2009 [weidema2009budget] monetizes LCIA endpoints with an explicit equity weighting. These are the closest existing bridges between CLCA and distribution.

**Gender.** Thin. Carlsson Kanyama et al. 2021 [carlssonkanyama2021gender] compare Swedish single men's and women's consumption footprints (men higher at similar spending; verify the exact figure before quoting). Berland & Leroutier 2025 [berland2025gendergap] (working paper, not peer reviewed) find women's food and transport footprints about 26% lower in France. Arvidsson 2020 [arvidsson2020timebased] proposes labour-hour S-LCA indicators split by sex. I would not build an objective on gender; at most, mention that process models carrying labour-hour flows make sex-disaggregated labour indicators possible.

Peripheral: Clark & Miles 2021 [clark2021ejsustainability] (EJ and sustainability integrated only piecemeal in practice); Valle et al. 2023 [valle2023reconfigurations] (LCA teaching presents EV batteries as an unambiguous good).

## 2. Cultural subjectivity in impact metrics: the choices you will have to make

The program will have to make, or inherit, at least five value choices. For each, the literature gives a reason to report sensitivity rather than pick silently.

| Choice | What the literature shows | Suggested stance |
|---|---|---|
| Time horizon and discounting | Horizon and inclusion of uncertain effects can change product rankings [deschryver2013valuechoices]; discounting is an intergenerational-equity choice [hellweg2003discounting]; GWP100 hides a near- vs long-term trade-off [ocko2017tradeoffs]; dynamic LCA (Levasseur2010a *(lib)*) | Report GWP20 and GWP100 or dynamic results; test ranking stability |
| Weighting | EU Environmental Footprint weights rest on a public survey of 2,400 respondents in six EU countries plus expert panels [sala2018efweighting]; a global survey finds weights split by income group, high-income respondents prioritizing ecosystem quality, lower-income respondents human health [bayazitsubasi2024weighting] | If any single score is used, run it under both weight sets |
| Equity weighting in monetization | Whose income is the reference changes damage costs substantially [anthoff2009equityweighting]; [weidema2009budget] | Avoid monetized single scores, or make the equity weight explicit |
| Sharing principle (absolute sustainability) | See §1 [hjalsted2021sharing, heide2024embedded] | State the principle and show at least one alternative |
| What counts as damage to nature | Plural (instrumental, intrinsic, relational) values of nature; standard metrics capture a narrow slice [pascual2023diversevalues] | Acknowledge the limits of PDF-based endpoints; don't over-reach |

**Counterpoint, for calibration.** Not every metric is culturally contingent: the disability weights behind DALYs were broadly consistent across the countries surveyed for GBD 2010 [salomon2012disability]. The subjectivity in human-health endpoints sits more in time horizon, discounting and model inclusion than in severity valuation. Huijbregts 2013 *(lib)* critiques consensus-building in LCIA, which is the right reference for "whose consensus".

**Direct consequence for Pillar 2.** You defined failure as "a minority flow that flips a ranking". De Schryver et al. 2013 show value choices can flip rankings too. A process-model refinement that preserves rankings under one value set but not another is ambiguous; the test protocol should fix value sets explicitly or report rank stability across them.

## 3. Impacted communities in spatialized and regionalized LCA

**Trade moves burdens toward lower-income regions.** About 30% of global species threats are linked to international trade, mostly exports from developing to developed countries [lenzen2012biodiversity]. About 12% of 2007 PM2.5 premature deaths came from pollution emitted in another region, and about 22% were associated with goods produced in one region and consumed in another [zhang2017transboundary]. High-income countries are net appropriators of embodied land, materials, energy and labour [dorninger2021unequal; hickel2022drain]. Cite Hickel et al. for the accounting, not the framing.

**Materials and land-connected peoples.** More than half of the energy-transition-mineral resource base lies on or near Indigenous or peasant lands (5,097 projects geolocated) [owen2023landconnected]; transition metals concentrate in high environmental, social and governance complexity [lebre2020complexities]; nearly 60% of Indigenous Peoples' lands (22.7 million km², 64 countries) face high conversion risk from industrial development [kennedy2023indigenouslands]. Your group's anchors: the MetalliCan dataset (Pellan et al. 2025 *(lib)*) already carries social layers (affected population, conflicts, protected lands), and Pellan et al. 2026 (pellanSiteSpecificLifeCycleAssessment2026 *(lib)*) show site-level impacts varying by up to a factor of 13 across mines producing the same product and up to 6 relative to proxies. Mancini & Sala 2018 [mancini2018mining] review mining social indicators that could attach to such site inventories.

**Consequences are spatially redistributed even when net results look good.** Holland et al. 2016 [holland2016electricvehicles] show EV benefits accrue in cities while damages export to regions hosting marginal generation: a consequential result with a direct distributional reading. Spatially explicit LCA of renewables locates hotspots averages hide [schomberg2022spatial].

**Income-group disaggregation of final demand.** Energy and carbon footprints are highly unequal across income groups, within as well as between countries [oswald2020energyinequality; chancel2022carboninequality; ivanova2020unequal]. Chancel 2022 estimates the top 10% of emitters caused about half of 2019 emissions and the bottom 50% about 12%. These MRIO methods are the template if you ever disaggregate final demand by household type.

**Energy-system models.** Cost-optimal siting concentrates burdens regionally; equity-oriented allocation has a quantifiable cost [sasse2019distributional]. When energy-system optimization models formalize justice, they mostly default to equal distribution without examining that choice [vagero2023optimisejustice]. Both apply directly to how EnergyScope Québec results are disaggregated and reported.

**The argument for the proposal.** In consequential LCA, the identity and location of the marginal supplier is an output, and the community hosting it is therefore an output too. Without geographic disaggregation of markets and capacity additions, a CLCA cannot say who bears the consequences of a decision; with it, it can, at little extra cost. For Canada, the relevant diversity factors are Indigenous lands and communities, income, and remote/rural regions rather than US racial categories.

## 4. EU/Western focus of LCA databases and methods

**Who produces LCA knowledge.** 1992–2022 output led by the USA (12.6%), China (9.0%) and Italy (6.9%), with co-authorship networks concentrated in Europe and the USA and limited representation of Africa, the Middle East and Central Asia [moutik2023bibliometric]. Africa: 199 LCA studies over 20 years, concentrated in a few countries, with gaps in regional inventories and impact methods [karkour2021africa]. Latin America: as of 2014 a single fully operational LCA database, Mexicaniuh [valdivia2017latinamerica].

**Your own evidence.** Regioinvent (agezRegioinventRegionalizedVersion2026 *(lib)*) opens by stating that LCI databases offer limited country-level coverage and outdated supply-chain representation; regionalization shifts results by 11–14% on average, and spatialized elementary flows matter more than inventory regionalization for regionalized impact categories. Pellan et al. 2026 *(lib)* show proxy datasets miss site heterogeneity by up to a factor of 6.

**Impact methods calibrated on high-income exposure settings.** Indoor intake fractions vary about 100-fold with ventilation, occupancy and dwelling volume [rosenbaum2015indoor]; household air pollution, almost entirely in low- and middle-income countries, caused about 4.3 million deaths in 2012 (WorldHealthOrganization2014 *(lib)*), yet default LCIA is outdoor-only. Weighting sets are EU-derived (§2). The UNEP-SETAC framework (veronesLCIAFrameworkCrosscutting2017 *(lib)*) recommends regionalized characterization where impacts vary spatially.

**Technology representativeness.** A minority of super-polluting power units dominates global power-sector emissions [tong2018superpolluting]: technology-variant resolution (age, controls) matters, and those variants are not evenly distributed geographically.

**AI-assisted model building inherits the skew.** LLMs are systematically biased against regions with lower socioeconomic conditions [manvi2024llmgeobias]. If Pillar 2 uses AI to assemble process models from literature that is itself Europe- and US-heavy, the bias propagates unless the validation set deliberately includes non-OECD instantiations.

**Pushback on "recontextualization opens up the database".** Regionalizing with proxy parameters (electricity, heat, waste, as regioinvent does) improves coverage but can create false precision: a dataset labelled Ghana is not Ghanaian data. Pair recontextualization with region-specific data-quality flags and, ideally, validation by regional LCA networks. That is also the EDI-in-dissemination move.

## 5. Hooks into Pillar I and Pillar II

**Pillar I: scenarios, IAMs, disaggregation**

- *Whose futures.* You already cite de Bortoli et al. 2025 *(lib)*. Add: authorship of the IPCC mitigation assessment, which curates IAM scenarios, shows persistent North–South inequalities, US and UK institutions as dominant training sites, and near-absence of the humanities [corbera2016ipccauthorship]; IAMs under-represent heterogeneity and distribution [peng2021getreal]; degrowth scenarios are absent from mainstream sets [keysser2021degrowth] (Li et al. 2023 *(lib)* for Australia); cost-optimal pathways place investment where abatement is cheapest, which raises fairness questions [pachauri2022fairness].
- *Distribution as a scenario variable.* SSP-consistent income-inequality projections exist [rao2019sspinequality] and can ride along with the SSPs already used (riahiSharedSocioeconomicPathways2017 *(lib)*). Decent-living-standards work [rao2018decentliving; kikstra2021decentliving] gives a principled floor for the material roadmaps you want to link to energy narratives.
- *The diverse panel.* The current text promises "a broad consensus from the perspectives of a diverse panel" from all continents. Two problems: no method or budget, and consensus is the wrong target if the aim is to reduce blind spots, since consensus-seeking suppresses minority perspectives. Reframe as eliciting divergent scenario dimensions, using an established participatory-modelling protocol [voinov2018participatory] (online Delphi is the realistic scale).

**Pillar II: process models by context, maturity and AI**

- *Old, uncontrolled units are where pollution concentrates* [tong2018superpolluting]. Modelling technology variants by age and emission controls is not just accuracy, it is the representation of burdens borne where those fleets operate.
- *Labour and occupational exposure.* Process models carrying labour hours enable occupational indicators (Hofstetter & Norris 2003 *(lib)*) and sex-disaggregated labour indicators [arvidsson2020timebased].
- *Open infrastructure and data governance.* If model classes ingest site data on Indigenous territories (mining in Canada), FAIR alone is not enough; the CARE principles [carroll2020care] are the standard reference.
- *AI-assisted modelling bias* [manvi2024llmgeobias], as in §4.
- *Vocabulary.* Energy justice distinguishes distributional, procedural and recognition justice [jenkins2016energyjustice; sovacool2015energyjustice]. Your program addresses the distributional dimension; say so explicitly rather than implying all three.

## Suggested text for the proposal (≈120 words, to adapt)

> *EDI in the research content.* Consequential LCA identifies which suppliers, and therefore which places, respond to a decision. The communities hosting marginal mines, smelters or power plants are thus an output of our models, not an afterthought. Because the geographic disaggregation of Pillar 1 resolves where consequences occur, we will report results disaggregated by region and, where public spatial data allow, overlaid with exposed-population characteristics (income, Indigenous lands, remote regions), following NSERC's guidance on disaggregated analysis. We will also make value choices explicit (time horizon, weighting set, sharing principle), test whether rankings survive alternative value sets, including weights elicited from lower-income populations, and flag region-specific data quality so that recontextualized datasets are not mistaken for local data.

## Where I would push back

- **Don't add an HQP for this.** With 5–6 HQP and clear niches, treat distributional reporting as a cross-cutting output of existing tasks (disaggregation plus spatial overlay), not a new objective.
- **Don't promise community engagement you can't resource.** Working with Indigenous communities triggers TCPS2 Chapter 9 obligations and needs partners. Public spatial overlays (land, protected areas, conflicts) are defensible; co-design without partners is not.
- **Don't import US race categories.** Use Canadian-relevant diversity factors and say why.
- **Don't overclaim gender.** One sentence at most, tied to labour-hour flows.
- **The current scenario-panel paragraph is the weakest EDI text in the 2026 version.** It promises breadth with no method, budget or timeline. Either scope it (Delphi, named method) or cut it.

## Method and confidence

- Searches covered the five angles with web search and publisher or repository pages; claims above come from abstracts, publisher pages or reports I read during the search, except where flagged.
- Crossref and OpenAlex rate-limited mid-task. Entries whose metadata I could not cross-check carry a `CHECK` note in the .bib (Dorninger 2021 and Pachauri 2022 author lists; a few conference papers; one gap figure).
- Deduplication against the Zotero export was done by semantic search over the project copy, not exact matching. Ekvall 2005 and Jegen 2024 turned up and were removed. After import, run Zotero's Duplicate Items view as a safety net.
- Not covered in depth: Québec-specific justice literature on hydro and wind development (news coverage exists; no peer-reviewed LCA link found), tropical ecotoxicity bias, informal-sector exposure in LCIA.
