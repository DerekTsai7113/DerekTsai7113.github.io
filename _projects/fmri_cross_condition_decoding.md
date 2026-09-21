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

> **Public-detail note.** The manuscript has been submitted to ICASSP 2027 but is not yet publicly available through the conference. This page therefore focuses on the research question, methodology, evaluation design, and my contribution while omitting detailed numerical results until they are public.

## Research Question

When the acoustic waveform is held constant, can fMRI patterns distinguish speech-perception states induced by different prior knowledge, and can a learned neural-state boundary transfer to a separate speech condition?

## Why It Matters

Many decoding tasks risk exploiting differences in the stimulus itself. Here, the critical comparison uses the same degraded waveform before and after exposure to its clean counterpart. Because the Pre and Post stimuli are acoustically identical, the modeling problem is designed to isolate differences in the neural response associated with a change in perceptual state rather than trivial acoustic differences.

The setting is also challenging from a machine-learning perspective: fMRI is high dimensional, sample sizes are limited, and relevant information may be distributed across multiple cortical regions.

## Experimental Setup

The study includes 21 native Mandarin-speaking participants who heard 24 ten-word sentences in a Pre–Clean–Post sequence. The Pre and Post presentations use the same degraded speech waveform, while the intervening Clean sentence provides informative exposure.

Decoding is evaluated across bilateral speech-related regions, including auditory, language, frontal, and sensorimotor areas. The analysis includes single-ROI and paired-ROI settings anchored by the precentral gyrus.

## Modeling

I worked on the machine-learning side of the project, including the development and evaluation of a bidirectional S5-based decoder for high-dimensional, small-sample fMRI data.

The model combines:

- ROI-specific voxel projections;
- bidirectional state-space modeling;
- position-preserving voxel representations;
- an MLP readout for binary neural-state decoding.

The model is compared with linear SVM, residual MLP, and Transformer baselines under matched fold-specific inputs and evaluation procedures.

## Evaluation Design

The project uses stimulus-identity folds so that matched Pre, Clean, and Post observations from the same sentence remain in the same fold. Standardization, fitting, model selection, and early stopping use only the appropriate training-fold data to reduce leakage.

Two complementary evaluations are used:

1. **Pre/Post decoding:** balanced accuracy on held-out acoustically identical Pre and Post responses.
2. **Cross-condition evaluation:** after training, the decoder is frozen and applied to unseen Clean responses to examine how the learned decision boundary transfers across conditions.

The analysis also includes participant-level statistical testing, baseline comparisons, and Benjamini–Hochberg false-discovery-rate correction for multiple comparisons.

## My Contribution

My work focused on the machine-learning and evaluation components of the project, including:

- S5 implementation and architecture development;
- SVM, residual MLP, Transformer, and S5 model comparisons;
- fold-specific preprocessing and reproducible evaluation pipelines;
- ROI-wise and paired-ROI analyses;
- hyperparameter and voxel-selection experiments;
- participant-level statistical testing and multiple-comparison correction;
- result interpretation and manuscript preparation.

## Research Themes

This project connects several themes that now motivate my broader research interests: reliable evaluation in small-sample, high-dimensional settings; generalization beyond the condition used for training; and the use of sequential or state-space models for structured scientific data.

## Manuscript

Francis Pingfan Chien<sup>&#42;</sup>, Vincent Cheng-Sheng Li<sup>&#42;</sup>, **Te-Hsun Tsai<sup>&#42;</sup>**, et al. · <sup>&#42;</sup>Co-first authors (equal contribution).  
“Decoding Prior-Induced Speech States from fMRI under Identical Acoustics.”  
_Submitted to IEEE ICASSP 2027._
