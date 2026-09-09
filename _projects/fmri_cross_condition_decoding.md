---
layout: page
title: fMRI Cross-Condition Speech Decoding
permalink: /projects/fmri-cross-condition-decoding/
description: ROI-wise fMRI decoding across noisy and speech-enhanced listening conditions.
importance: 2
category: research
related_publications: false
---

<link rel="stylesheet" href="/assets/css/academic.css">

<p class="project-meta">Academia Sinica · Ongoing Research Collaboration</p>

## Research Question

Can speech-related information be decoded reliably from fMRI across different acoustic conditions, including noisy and speech-enhanced listening, and which brain regions provide the most useful information for that decoding?

## Why It Matters

A model that performs well only within one narrowly defined condition may not capture robust neural structure. Cross-condition decoding provides a way to test whether learned representations generalize when the acoustic input changes while the underlying speech information remains related.

## My Contribution

This is a collaborative project at Academia Sinica. My contribution focuses on the machine-learning and evaluation side of the study, including model implementation and benchmarking, ROI-wise analyses, reproducible evaluation pipelines, and statistical comparisons across models and conditions.

## Methods

- ROI-based feature construction from fMRI data
- Grouped cross-validation designed to avoid stimulus leakage
- Linear and neural-network baselines
- State-space / sequence-model approaches for neural decoding
- Comparisons across noisy and speech-enhanced conditions
- Statistical significance testing for model and ROI comparisons

## Current Status

This work is an **ongoing research collaboration**. I describe it here as a research project rather than as a publication; any manuscript title, venue, authorship, or submission status will be added only after those details are finalized.

## Future Directions

I am interested in understanding when more structured sequence models provide real advantages over simpler baselines for small-sample neural data, and in developing evaluation strategies that distinguish genuine cross-condition generalization from condition-specific effects.
