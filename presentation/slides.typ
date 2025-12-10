#import "@preview/diatypst:0.8.0": *

#show: slides.with(
  title: "Introduction to Explainable AI",
  subtitle: "Deep Learning Tutorial",
  date: "2025-12-11",
  authors: "Padma, Ben, Franco, Luis (Group 4)",
  title-color: rgb("#BA0020").darken(10%),
  count: "number",
  layout: "large",
)

= xAI in Public Policy

== Motivation // Luis

Why xAI?

- Transparency is essential for ethical AI deployment
- Need to understand, trust and govern AI systems, especially when deployed in government-contexts
- Real cases
  - COMPAS recidivism tool
  - Medical triage algorithms
  - Automated eligibility systems

- Regulation is catching up: OECD guidelines and the EU AI Act demand clear explanations, bias checks and human oversight for high-risk systems

- Tradeoff: Performace vs Interpretability?

== Case 1: COMPAS recidivism tool

- Tool used in US courts to predict likelihood of reoffending
- Controversy: Alleged racial bias in predictions
  - A #link("https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing")[ProPublica investigation] revealed that Black defendants were more likely to be incorrectly labeled as high risk

- Model was proprietary and opaque
- Highlighted need for transparency and accountability in AI systems used in critical decision-making


== Case 2: Credit Scoring

- Credit scoring agencies use statistical models to evaluate creditworthiness
- Controversy: Lack of transparency in how scores are calculated
  - Consumers often unaware which factors influencing their scores
  - Individuals might be affected in their ability to obtain loans, housing, or employment

- Regulatory bodies emphasize the need for explainability to ensure fairness and prevent discrimination
- Example: EU's General Data Protection Regulation (GDPR) includes a "right to explanation" for individuals affected by automated decision-making"
- But: Enforcement and practical implementation remain challenging

= Methods

== Taxonomy // Luis

#align(center, image("./assets/xai_taxonomy.png", width: 70%))


== Our Case // Franco
#align(center, text(1.2em, weight: "semibold")[*"I've always paid my loans back on time — what is going on?"*])

#align(center, box(
  clip: true,
  radius: 12pt,
  image("assets/casejuan.jpg", width: 50%),
))

*Meet Juan, a 35-year-old immigrant living in Germany.*

He runs a small bookstore in Pankow, Berlin. Recently, flooding from an adjacent building damaged his shop, so urgently applied for a loan to repair the property.

On paper, Juan looks like a strong applicant, but his loan gets denied. Can XAI methods tell us where the model failed him?

== LIME // Franco

#align(center, text(1.3em, weight: "semibold")[*“Why was Juan classified as high risk and therefore declined?”*])

*What is LIME?*
- Local Interpretable Model-Agnostic Explanations)
- Provides selective, local explanations for individuals predictions

*Why is it relevant?*
- Shows why a single feature drove a specific decision
- Good to zoom in on an individual case and the model's beahvior around that feature


== DiCE // Franco

#align(center, text(1.3em, weight: "semibold")[*“What changes in Juan’s feature profile would flip the decision?”*])

*What is DiCE?*
- Diverse Counterfactual Explanations
- _“What if”_ scenario analysis into the features the model treats as most actionable

*Why is it relevant?*
- Counterfactuals map the applicant's profile and make choices more transparent
- Provide a way forward if we were to make model adjustments

== SHAP

#align(center, text(1.3em, weight: "semibold")[*“Which features matter the most overall, across all combinations?”*])

*What is SHAP?*
- SHapley Additive exPlanations
- If features were players in a _game_, how much would each contribute most to the overall payout, or prediction?

*Why is it relevant?*
- Provides global, game theory explanations of feature importance
- Detects feature interactions and nonlinearities relevant for deep learning

= Takeaways // Luis

== Takeaways

- At core: Human interpretability & oversight

- One should prioritize inherently interpretable models first
- If performance is critical, use of black box models should be accompanied by rigorous evaluation of explainability techniques
- Explainability methods can be useful but are limited; one needs to be cautious about their interpretations

= Q&A

== Acknowledgements

- typst template by #link("https://typst.app/universe/package/diatypst/")[diatypst]
- Image source: https://transferlab.ai/trainings/explainable-ai/
- Bookstore image: provided
- Propublica article: https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing

== Backup

