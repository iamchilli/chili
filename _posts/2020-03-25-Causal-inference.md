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

## Potential outcome and counterfactuals

Treatment A on outcome Y: A=1 if receive treatment; A=0 otherwise.

Y<sup>1</sup> is the outcome that would be observed if treatment was set to A=1.

- Before the treatment decision is made, any outcome is a **potential outcome**:  Y<sup>0</sup> and  Y<sup>1</sup>.

- After the study, if my treatment was A=1, then my observed outcome is <sup>1</sup>, my **counterfactual outcome** is Y<sup>0</sup>.

## Hypothetical interventions

Make sure there is no hidden version of treatment. For example, to study weight on health, as weight is not directly manipulable, better to think of interventions that aim at manipulating weight. Like weight loss drug, exercise, smoking.

Less clear what a causal effect of an immutable variable. Like race, gender, age, blood type.

No direct intervention --> Manipulable Intervention
Race --> Name on resume
Obesity --> drug
socioeconomic status --> gift of money

Key: try to think of an intervention that can be randomized in a hypothetical trial. Meaning of the outcome? Potentially actionable?
