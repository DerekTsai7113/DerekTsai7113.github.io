---
layout: page
title: Research
permalink: /projects/
description: Research in reliable machine learning, uncertainty quantification, sequential modeling, neural data, and causal inference.
nav: true
nav_order: 1
horizontal: false
---

<link rel="stylesheet" href="/assets/css/academic.css">

My research interests center on reliable machine learning under distribution shift, uncertainty quantification, and sequential or multimodal learning. The pages below describe both research experience and selected graduate course projects.

For collaborative or submitted work, I summarize the research question, methods, evaluation design, and my contribution while omitting detailed final results that are not yet publicly available. Course projects include fuller empirical results and downloadable reports.

<section class="research-entry" markdown="1">

## [Decoding Prior-Induced Speech States from fMRI under Identical Acoustics](/projects/fmri-cross-condition-decoding/)

<p class="research-meta">Academia Sinica · Submitted to IEEE ICASSP 2027</p>

I worked on a state-space neural-decoding framework for distinguishing prior-induced perceptual states from fMRI responses while holding the degraded acoustic waveform constant. My work focused on model development, reproducible evaluation, cross-condition testing, statistical analysis, and manuscript preparation.

[Read project →](/projects/fmri-cross-condition-decoding/){: .research-read-more }

</section>

<section class="research-entry" markdown="1">

## [Speech–Brain Representation Alignment](/projects/speech-brain-alignment/)

<p class="research-meta">Academia Sinica · Research Internship · 2026</p>

I developed analysis pipelines for comparing layer-wise representations from pretrained speech encoders and language models with EEG and fMRI responses across clean and noisy speech, using regularized neural encoding, cross-validation, noise-ceiling normalization, and robust aggregation.

[Read project →](/projects/speech-brain-alignment/){: .research-read-more }

</section>

<section class="research-entry" markdown="1">

## [Cause-of-Death Modeling](/projects/cause-of-death-modeling/)

<p class="research-meta">University of Washington · Research Assistant · 2025</p>

I developed machine-learning benchmarks and hierarchical classification pipelines for heterogeneous verbal-autopsy and clinical data, with emphasis on severe class imbalance, multimodal feature fusion, age-stratified evaluation, and strict leakage control.

[Read project →](/projects/cause-of-death-modeling/){: .research-read-more }

</section>

<section class="research-entry" markdown="1">

## [Adaptive Conformal Prediction for Chaotic Time Series](/projects/adaptive-conformal-prediction/)

<p class="research-meta">University of Washington · STAT 538 Graduate Course Project</p>

I studied how standard split conformal prediction behaves when an LSTM is deployed recursively on the Lorenz-63 system. Closed-loop rollout creates an endogenous distribution shift as prediction errors feed back into future inputs, and I evaluated rolling-window and EWMA recalibration strategies that adapt prediction intervals to the evolving error distribution.

[Read project →](/projects/adaptive-conformal-prediction/){: .research-read-more }

</section>

<section class="research-entry" markdown="1">

## [Private Insurance and Flu Vaccination: A Causal Inference Study](/projects/insurance-flu-causal-inference/)

<p class="research-meta">University of Washington · Graduate Course Project · Joint work with Yuhe Zhang</p>

Using the 2018 Medical Expenditure Panel Survey, we studied the relationship between private insurance coverage and flu vaccination among adults. The analysis combines a DAG-based identification strategy with outcome regression, Hájek inverse-probability weighting, AIPW, covariate-balance diagnostics, bootstrap uncertainty, and sensitivity analysis for unmeasured confounding.

[Read project →](/projects/insurance-flu-causal-inference/){: .research-read-more }

</section>
