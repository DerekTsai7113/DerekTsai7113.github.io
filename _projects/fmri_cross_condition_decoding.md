---
layout: page
title: Decoding Prior-Induced Speech States from fMRI under Identical Acoustics
permalink: /projects/fmri-cross-condition-decoding/
description: State-space decoding of prior-induced neural speech states from fMRI while holding acoustic input constant.
importance: 1
category: research
related_publications: false
---

<link rel="stylesheet" href="/assets/css/academic.css">

<p class="project-meta">Academia Sinica · Submitted to IEEE ICASSP 2027 · 2026</p>

## Research Question

When the acoustic waveform is held constant, can fMRI patterns distinguish speech-perception states induced by different prior knowledge, and can the learned neural-state boundary generalize to an unseen speech condition?

## Why It Matters

Many decoding tasks risk exploiting differences in the stimulus itself. Here, the critical comparison uses the same degraded waveform before and after exposure to its clean counterpart. Because the Pre and Post stimuli are acoustically identical, successful decoding must rely on differences in the neural response associated with a change in perceptual state rather than on trivial acoustic cues.

The setting is also challenging from a machine-learning perspective: fMRI is high dimensional, sample sizes are limited, and the relevant information may be distributed across multiple cortical regions.

## Experimental Setup

The study includes 21 native Mandarin-speaking participants who heard 24 ten-word sentences in a Pre–Clean–Post sequence. The Pre and Post presentations use the same degraded speech waveform, while the intervening Clean sentence provides informative exposure. Behavioral comprehension improves strongly from Pre to Post despite identical degraded acoustics.

Decoding is evaluated across bilateral speech-related regions, including auditory, language, frontal, and sensorimotor areas. The analysis uses Heschl's gyrus alone and ROI pairs anchored by the precentral gyrus.

## Modeling

I worked on the machine-learning side of the project, including the development and evaluation of **Wave-4 S5**, a neural decoder designed for high-dimensional, small-sample fMRI data.

The model combines:

- local position-preserving voxel descriptors;
- ROI-specific feature projections;
- independent bidirectional S5 state-space branches;
- an MLP readout that retains information across selected voxel positions.

The model is compared against linear SVM, residual MLP, and Transformer baselines under the same fold-specific inputs and evaluation protocol.

## Evaluation

The project uses four stimulus-identity folds so that matched Pre, Clean, and Post observations remain in the same fold. Standardization, fitting, and early stopping use only training-fold Pre and Post data.

Two complementary evaluations are used:

1. **Pre/Post decoding:** balanced accuracy on held-out acoustically identical Pre and Post responses.
2. **Cross-condition generalization:** after training, the decoder is frozen and applied to previously unseen Clean responses; the analysis measures how often Clean projects toward the learned Post state.

Participant-level statistical tests and model comparisons use Benjamini–Hochberg false-discovery-rate correction.

## Results

Wave-4 S5 achieved significant above-chance decoding across all five left-hemisphere ROI pairs. The highest held-out Pre/Post balanced accuracy was **64.29%**, and significant improvements over the strongest baseline were observed in key ROI pairs.

The frozen decoder also generalized to unseen Clean responses. Clean-to-Post projection reached **68.45%** in PreCG+STG and **67.06%** in PreCG+SMG, indicating that the learned Pre/Post boundary carries information that transfers across speech conditions.

## Behavioral Validation

The cross-condition projection was not only a decoding effect. Stronger Clean-to-Post projection was significantly associated with larger sentence-level comprehension improvement, including a Spearman correlation of **ρ = 0.632 (q = 0.0014)** in PreCG+SMG.

This provides behavioral validation that the learned neural-state boundary tracks a perceptually meaningful change rather than only a classification artifact.

## My Contribution

My work focused on the machine-learning and evaluation components of the project, including:

- Wave-4 S5 implementation and model development;
- baseline and architecture comparisons;
- fold-specific preprocessing and reproducible evaluation;
- ROI-wise analyses and hyperparameter experiments;
- participant-level statistical testing and multiple-comparison correction;
- result interpretation and manuscript preparation.

## Interpretation

The main result is that perceptual-state information can be recovered from fMRI even when the degraded acoustic input is held constant. The strongest effects are distributed across cortical ROI pairs rather than isolated to auditory cortex alone, and the learned state boundary generalizes to an unseen speech condition while tracking behavioral comprehension gains.

From a machine-learning perspective, the project highlights the value of evaluating models not only by held-out classification accuracy but also by transfer to an unseen condition and by whether the learned representation relates to external behavior.

## Limitations and Open Questions

The dataset remains small relative to the dimensionality of fMRI, and the analysis is based on a controlled sentence-level paradigm and predefined ROIs. Important open questions include whether similar state-space modeling advantages hold across new participants, more naturalistic speech, and other neural datasets, and how robustly prior-induced state representations transfer beyond this experimental design.

## Manuscript

**Te-Hsun Tsai, Francis Pingfan Chien, Vincent Cheng-Sheng Li, et al.**  
“Decoding Prior-Induced Speech States from fMRI under Identical Acoustics.”  
*Submitted to IEEE ICASSP 2027*, 2026.
