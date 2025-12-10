#import "@preview/diatypst:0.8.0": *

#show: slides.with(
  title: "Introduction to Explainable AI",
  subtitle: "Deep Learning Tutorial",
  date: "2025-12-11",
  authors: "Padma, Ben, Franco, Luis. (Group 4)",
  title-color: rgb("#BA0020").darken(10%),
  count: "number",
  layout: "large",
)

= xAI in Public Policy

== Motivation: Why XAI? // Luis

As technology progresses, transparency is essential for ethical AI deployment.

The core of this idea lies in _human interpretability_:

- *"Interpretability is the degree to which a human can understand the cause of a decision" (Biran & Cotton, 2017)*

We need to  interpret the _methods_ and _predictions_ behind AI models (Molnar, 2025), in order to trust and govern AI systems, especially when deployed in society, such as...
  - COMPAS recidivism tool
  - Medical triage algorithms
  - Automated eligibility systems

*Regulation is catching up:* 

- OECD guidelines and the EU AI Act demand clear explanations, bias checks and human oversight for high-risk systems
- Tradeoff: Performance vs Interpretability?

== Case 1: COMPAS recidivism tool
- Correctional Offender Management Profiling for Alternative Sanctions, or COMPAS
- Tool used in U.S. courts to predict likelihood of reoffending
- *Controversy:* Alleged racial bias in predictions

  - A #link("https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing")[ProPublica investigation] revealed that Black defendants were more likely to be incorrectly labeled as risky, despite not re-offending

- Model was proprietary and opaque
- Highlighted need for transparent and accountable AI-based decision making systems

#align(center, 
figure(image("./assets/table1_compass.png", width: 70%), caption: text(1.0em, fill: black)[Example of Risk Prediction and Recidivism in Florida, source: ProPublica])
)
== Case 2: Credit Scoring

- Credit scoring agencies use statistical models to evaluate creditworthiness
- *Controversy:* Lack of transparency in how scores are calculated
  - Consumers are often unaware which factors influence their scores
  - Individuals might be affected in their ability to obtain loans, housing, or employment

- Regulators stress the need for explainability to ensure fairness, prevent discrimination
- *Example:* EU's General Data Protection Regulation (GDPR) includes a _"right to explanation"_ for individuals affected by automated decision-making
- ...yet enforcement and practical implementation remain challenging

#align(center, box(
  clip: true,
  radius: 3pt,
  image("assets/blackbox_molnar.png", width: 62%),
))

= Methods

== Taxonomy // Luis

#align(center, image("./assets/xai_taxonomy.png", width: 75%))

== Our Case // Franco
#align(center, text(1.2em, weight: "semibold")[*"I've always paid my loans back on time — what's going on?"*])

#align(center, box(
  clip: true,
  radius: 12pt,
  image("assets/casejuan.jpg", width: 50%),
))

*Meet Juan, a 35-year-old immigrant living in Germany.*

He runs a small bookstore in Pankow, Berlin. Recently, flooding from an adjacent building damaged his shop, so he urgently applied for a loan to repair the property.

On paper, Juan looks like a strong applicant, but his loan gets denied. Can XAI methods tell us where the model failed him?

== Toy Model: FFNN and Methods // Franco

// Top box: FFNN

#align(center)[
#box(inset: 7pt,
  stroke: 1pt + black,
  text(0.8em)[
    *Base Model: FFNN* \
    (Black Box Classifier)
  ]
)
#v(0.1em)
↓
#v(0.1em)
// Middle box: Creditability
#box(
  inset: 7pt,
  stroke: 1pt + black,
  text(0.8em)[
    *Trained FFNN: Prediction* \
    (Creditworthiness = good/bad)
  ]
)
#v(0.1em)
↓
#v(0.1em)
// Middle box: Test cases
#box(
  inset: 7pt,
  stroke: 1pt + black,
  text(0.8em)[
    *Introduction of Test Cases* \
    (Is the FFNN fair to Juan?)
  ]
)
#v(0.1em)
↓
// Bottom
#table(
  columns: 3,
  align: center,
  [
    #box(
      inset: 9pt,
      stroke: 0.5pt + red,
      radius: 8pt,
      text(0.8em)[
        *LIME* \
        "Why this prediction?" \
        Local explanation
      ]
    )
  ],
  [
    #box(
      inset: 9pt,
      stroke: 0.5pt + red,
      radius: 8pt,
      text(0.8em)[
        *DiCE* \
        "What if scenarios?" \
        Counterfactual explanations
      ]
    )
  ],
  [
    #box(
      inset: 9pt,
      stroke: 0.5pt + red,
      radius: 8pt,
      text(0.8em)[
        *SHAP* \
        "What matters most?" \
        Feature contributions
      ]
    )
  ],
)
]

== LIME // Franco

#align(center, text(1.3em, weight: "semibold")[*“Why was Juan classified as high risk and therefore declined as a credit applicant?”*])

*What is LIME?*
- Local Interpretable Model-Agnostic Explanations
- Provides selective, local explanations for individual predictions

*Why is it relevant?*
- Shows why a single feature drove a specific decision
- Good to zoom in on an individual case and the model's behavior around that feature


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
- If features were players in a _game_, how much would each contribute to the overall payout, or prediction?

*Why is it relevant?*
- Provides global, game theory explanations of feature importance
- Detects feature interactions and nonlinearities relevant for deep learning

= Takeaways // Luis

== Takeaways

- *At core:* Human interpretability & oversight
  - Explaining both the _model_ and the _cause_ behind the _prediction_

- One should *prioritize inherently interpretable models whenever possible*
- If performance is critical, *use of black box models should be paired with rigorous evaluation of explainability methods* throughout their application
- Explainability methods are helpful but are limited
  - *One method is not enough* (see local/ global) 
  - *Interpretations require caution* ("importance" of what, and in what sense?)
  - We can try to capture uncertainty... but data and efficiency constraints remain  

= Q&A

== Acknowledgements
_References_
- Angwin, J., Larson, J., Mattu, S., & Kirchner, L. (2016). Machine bias: There’s software used across the country to predict future criminals. And it’s biased against Blacks. ProPublica. https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing  
- Molnar, C. (2025). Interpretable machine learning: A guide for making black box models explainable (3rd ed.). https://christophm.github.io/interpretable-ml-book/  
- TransferLab. (n.d.). Explainable AI training materials. https://transferlab.ai/trainings/explainable-ai/  

_Template & Images_
- typst template by #link("https://typst.app/universe/package/diatypst/")[diatypst]
- Bookstore image: provided
- Blackbox image: Molnar, 2025

== Annex I: LIME 
#align(center, 
figure(image("./assets/examplelime.png", width: 100%), caption: text(1.0em, fill: black)[Local Explanations of FFNN Predictions: The Cases of Juan and Maximilian])
)


== Annex II: DiCE 
#align(center, 
figure(image("./assets/exampledice.png", width: 100%), caption: text(1.0em, fill: black)[Counterfactual Analysis based on Scenarios 1-3 of Potential Feature Changes])
)

== Annex III: SHAP 
#align(center, 
figure(image("./assets/exampleshap.png", width: 50%), caption: text(1.0em, fill: black)[Global  Feature Importance Based on SHAP])
)
