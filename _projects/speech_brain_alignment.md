---
layout: page
title: Speech–Brain Representation Alignment
permalink: /projects/speech-brain-alignment/
description: Neural encoding and layer-wise representation analysis across EEG and fMRI using pretrained speech and language models.
importance: 1
category: research
related_publications: false
---

<link rel="stylesheet" href="/assets/css/academic.css">

<p class="project-meta">Academia Sinica · Research Intern · 2026</p>

I use neural encoding models to study how internal representations from pretrained speech and language models correspond to human neural responses during speech perception. Rather than treating each model as a single representation, I compare intermediate layers and ask how alignment changes across neural modalities and listening conditions.

## Research Question

Which pretrained representations best explain neural responses to speech, at which model layers, and how stable are those relationships across EEG, fMRI, and clean-versus-noisy listening conditions?

## Motivation

Modern speech and language models learn rich hierarchical representations, but predictive performance on machine-learning benchmarks does not tell us whether those representations capture information that resembles biological speech processing. Neural encoding provides a direct way to test this by measuring how well model features predict recorded brain responses.

EEG and fMRI also provide complementary views of the problem: EEG offers fine temporal resolution, while fMRI provides substantially richer spatial information. Comparing both modalities helps separate model–brain alignment that is specific to one measurement setting from patterns that may be more general.

## Data and Experimental Setup

The analysis combines neural responses recorded during speech perception with layer-wise representations extracted from pretrained models. I compare speech-focused encoders and language-model representations rather than relying on a single architecture.

Key components include:

- **Pretrained representations:** WavLM, Whisper, HuBERT, wav2vec 2.0, and GPT-2, analyzed layer by layer
- **Neural modalities:** complementary analyses using EEG and fMRI
- **Listening conditions:** clean and noisy speech
- **Encoding model:** ridge regression from model representations to neural responses
- **Validation:** leave-run-out cross-validation to evaluate out-of-run generalization
- **Evaluation:** raw and noise-ceiling-normalized encoding performance with subject- and channel-level aggregation

## My Contribution

At Academia Sinica, I developed and evaluated the analysis pipeline for speech–brain representation alignment. My work includes extracting and organizing layer-wise representations, implementing reproducible neural-encoding evaluations, comparing models and layers across conditions, and building aggregation and statistical-analysis procedures for EEG and fMRI results.

A central part of the project is making model comparisons interpretable: the goal is not only to identify the strongest score, but also to understand whether differences are consistent across layers, participants, channels or regions, and acoustic conditions.

## Methods

- **Layer-wise representation analysis.** Intermediate representations are evaluated separately so that model depth can be related to neural predictivity instead of collapsing each model into a single feature set.
- **Regularized neural encoding.** Ridge regression provides a simple, controlled mapping from high-dimensional model features to neural responses.
- **Cross-validated evaluation.** Leave-run-out validation reduces dependence on any particular run and provides a cleaner estimate of generalization.
- **Noise-ceiling normalization.** Encoding performance is interpreted relative to the reliability of the measured neural signal, which is especially important when comparing across subjects, channels, or modalities.
- **Condition and modality comparisons.** Clean-versus-noisy speech and EEG-versus-fMRI analyses are used to test whether observed alignment is robust to changes in acoustic input and measurement modality.

## Current Directions

I am interested in moving beyond passive representation comparison toward methods that use neural encoding performance to guide representation selection or adaptation. Another direction is to study how the temporal information available in EEG and the spatial information available in fMRI can be combined more systematically for multimodal representation learning.
