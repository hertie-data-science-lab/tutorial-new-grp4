#import "@preview/diatypst:0.8.0": *

#show: slides.with(
  title: "Introduction to Explainable AI",
  subtitle: "Deep Learning Tutorial",
  date: "2025-12-11",
  authors: "Names...",
  title-color: rgb("#BA0020").darken(10%),
  count: "number",
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

#align(center, text(
  "Source: https://transferlab.ai/trainings/explainable-ai/",
  size: 0.5em,
))

== Our Case // Franco

// Present Case (Franco)

#lorem(20)

== LIME // Franco

#lorem(20)

== Counterfactual Explanations // Franco

#lorem(20)

== SHAP // Franco

#lorem(20)

= Takeaways // Luis

- At core: Human interpretability
- Inherently interpretable first
- Ethical use of black box models
- Explanability methods useful but limited

= Q&A
