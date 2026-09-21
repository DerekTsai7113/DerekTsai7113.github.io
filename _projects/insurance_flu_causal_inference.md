---
layout: page
title: Private Insurance and Flu Vaccination: A Causal Inference Study
permalink: /projects/insurance-flu-causal-inference/
description: Observational causal inference with DAG-based adjustment, doubly robust estimation, diagnostics, and sensitivity analysis.
importance: 2
category: research
related_publications: false
---

<link rel="stylesheet" href="/assets/css/academic.css">

<p class="project-meta">University of Washington · Graduate Course Project · Joint work with Yuhe Zhang</p>

## Research Question

Among adults in the United States, how does private health-insurance coverage relate to the probability of receiving a flu vaccination, and what causal conclusions are defensible from observational survey data?

Rather than treating the observed difference between insured and uninsured adults as automatically causal, we framed the problem around an explicit identification strategy and examined the assumptions needed to interpret adjusted estimates causally.

## Data & Identification

We used the **2018 Medical Expenditure Panel Survey (MEPS)** Full-Year Consolidated File. After restricting the analysis to adults who were either privately insured or uninsured, the analytic sample contained **13,612 observations**: 11,992 privately insured adults and 1,620 uninsured adults.

A causal DAG was used to define a back-door adjustment set including age, race/ethnicity, education, poverty status, region, physical health, and mental health. The analysis therefore relies on consistency, conditional exchangeability given the measured covariates, and positivity.

## Methods

- Causal DAG and back-door adjustment
- Logistic outcome regression
- Hájek inverse-probability weighting (IPW)
- Augmented inverse-probability weighting (AIPW)
- 500-sample nonparametric bootstrap confidence intervals
- Propensity-score overlap and covariate-balance diagnostics
- E-value sensitivity analysis for unmeasured confounding

## Main Findings

The naive insured-versus-uninsured difference was 31.8 percentage points. After adjustment, the estimated average treatment effects were **22.0 percentage points** from outcome regression, **28.1 percentage points** from Hájek IPW, and **26.7 percentage points** from AIPW. The corresponding bootstrap confidence intervals excluded zero.

The diagnostics also showed why those estimates should not be read mechanically. Weighting substantially improved observed covariate balance, but propensity-score overlap was imperfect because privately insured adults were concentrated near high treatment probabilities. The E-value analysis suggested that a relatively strong unmeasured confounder would be required to fully explain away the adjusted association, but residual confounding cannot be ruled out.

## Interpretation

Under the assumed DAG and identification assumptions, the results are consistent with a positive causal effect of private insurance coverage on flu vaccination. The project was equally useful as an exercise in identifying where that statement can fail: limited overlap, model specification, and unmeasured confounding all constrain how strongly an observational estimate should be interpreted.

## What I Took Away

This project strengthened my interest in reliability beyond predictive accuracy. In causal inference, reliability depends on whether the identification assumptions, overlap, diagnostics, and sensitivity analyses support the scientific claim—not only on whether an estimator returns a precise number.
