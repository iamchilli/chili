---
title: "Causal inference from observational data"
date: "2020-03-25"
categories: Causal inference
tags: [Causal inference]
---

Introduction of concepts, methods and so on.

**Spurious Correlation** Many science reporting headlines do not use the forms of the word cause, but do get interpreted causally, e.g. Bill lived to be 105 years old. He said his secret was eating an apple a day.

**Reverse Causality** Even if there is causal relationship, sometimes the direction is unclear, e.g. urban green space and exercise.

Therefore, we need
- formal definition of causal effects
- assumptions to identify causal effects from data
- rules about what variables need to be controlled for
- sensitivity analyses to determine the impact of violations of assumptions on conclusions

It is important to remember Causal inference requires make some untestable assumptions.

### Potential outcome and counterfactuals

Treatment A on outcome Y: A=1 if receive treatment; A=0 otherwise.

Y<sup>1</sup> is the outcome that would be observed if treatment was set to A=1.

- Before the treatment decision is made, any outcome is a **potential outcome**:  Y<sup>0</sup> and  Y<sup>1</sup>.

- After the study, if my treatment was A=1, then my observed outcome is Y<sup>1</sup>, my **counterfactual outcome** is Y<sup>0</sup>.

Fundamental problem of Causal inference is that we can only observe one potential outcome.

### set to v.s. given

In general,
    average causal effect E(Y<sup>1</sup>-Y<sup>0</sup>) is not equal to E(Y|A=1)-E(Y|A=0).
- E(Y<sup>1</sup>) is on **whole population**, if everyone was treated as A=1
- E(Y|A=1) is on a **subpopulation** who actually had A=1


### Causal Assumptions (identifiability)

1. Stable unit treatment value assumption: no spillover, no interference, no crossover
2. Consistency: potential outcome = observed outcome: E(Y<sup>1</sup>|A=1)=E(Y|A=1)
3. Ignorability: Y<sup>1</sup>, Y<sup>0</sup> *ind of* A | X : E(Y<sup>1</sup>| X)=E(Y<sup>1</sup>|A=1, X)
4. Positivity P(A=a|X=x)>0 for all a and x

By above assumptions, E(Y<sup>1</sup>|X)=E(Y<sup>1</sup>|A=1,X)=E(Y|A=1,X), which is observed. Then we can take weighted average to get average causal effect.

### Hypothetical interventions, some designs

Make sure there is no hidden version of treatment. For example, to study weight on health, as weight is not directly manipulable, better to think of interventions that aim at manipulating weight. Like weight loss drug, exercise, smoking.

Less clear what a causal effect of an immutable variable. Like race, gender, age, blood type.

No direct intervention --> Manipulable Intervention
Race --> Name on resume
Obesity --> drug
socioeconomic status --> gift of money

**Key**
1. try to think of an intervention that can be randomized in a hypothetical trial.** Meaning of the outcome? Potentially actionable?
2. try to think of an initation of the intervention, to avoid the potential confounder of past treatment by the cross-sectional design.  
3. try to compare two active treatments, because subjects using active treatment are more alike.

Example: yoga effect on BMI, initation of yoga compared with zomba
