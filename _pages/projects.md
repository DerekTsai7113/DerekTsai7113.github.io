---
layout: page
title: Research
permalink: /projects/
description: Public projects in reliable machine learning, uncertainty quantification, sequential modeling, and causal inference.
nav: true
nav_order: 1
horizontal: false
---

<link rel="stylesheet" href="/assets/css/academic.css">

My research interests center on reliable machine learning under distribution shift, uncertainty quantification, and sequential or multimodal learning. The projects below are work that I can discuss publicly in detail. Some ongoing and collaborative research is intentionally omitted from this site.

Each project page focuses on the research question, assumptions, methods, empirical findings, limitations, and what I learned from the analysis rather than reproducing a CV bullet list.

<section class="research-entry" markdown="1">

## [Adaptive Conformal Prediction for Chaotic Time Series](/projects/adaptive-conformal-prediction/)

<p class="research-meta">University of Washington · STAT 538 Graduate Course Project</p>

I studied how standard split conformal prediction behaves when an LSTM is deployed recursively on the Lorenz-63 system. Closed-loop rollout creates an endogenous distribution shift as prediction errors feed back into future inputs, causing coverage to deteriorate with forecast horizon. I then evaluated rolling-window and EWMA recalibration strategies that adapt prediction intervals to the evolving error distribution.

[Read project →](/projects/adaptive-conformal-prediction/){: .research-read-more }

</section>

<section class="research-entry" markdown="1">

## [Private Insurance and Flu Vaccination: A Causal Inference Study](/projects/insurance-flu-causal-inference/)

<p class="research-meta">University of Washington · Graduate Course Project · Joint work with Yuhe Zhang</p>

Using the 2018 Medical Expenditure Panel Survey, we studied the relationship between private insurance coverage and flu vaccination among adults. The analysis combines a DAG-based identification strategy with outcome regression, Hájek inverse-probability weighting, AIPW, covariate-balance diagnostics, bootstrap uncertainty, and sensitivity analysis for unmeasured confounding.

[Read project →](/projects/insurance-flu-causal-inference/){: .research-read-more }

</section>
