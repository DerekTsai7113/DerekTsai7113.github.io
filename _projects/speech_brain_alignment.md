---
layout: page
title: Speech–Brain Representation Alignment
permalink: /projects/speech-brain-alignment/
description: Layer-wise neural encoding and representation analysis across EEG and fMRI using pretrained speech and language models.
importance: 2
category: research
related_publications: false
---

<link rel="stylesheet" href="/assets/css/academic.css">

<p class="project-meta">Academia Sinica · Research Internship · 2026</p>

I use neural-encoding models to study how hidden-state representations from pretrained speech encoders and language models correspond to human neural responses during speech perception. Rather than treating each model as a single representation, I compare intermediate layers and ask how alignment changes across neural modalities, model families, and clean-versus-noisy listening conditions.

## Research Question

Which pretrained representations best explain neural responses to speech, at which model layers, and how stable are those relationships across EEG, fMRI, and acoustic conditions?

## Motivation

Modern speech and language models learn rich internal representations, but benchmark performance alone does not reveal whether those representations capture information related to biological speech processing. Neural encoding provides a direct way to compare model features with measured brain responses.

EEG and fMRI offer complementary views of this problem: EEG emphasizes temporal information, while fMRI provides richer spatial information. Comparing both modalities can help distinguish alignment patterns that are specific to one measurement setting from those that may be more general.

## Data and Experimental Setup

The analysis combines neural responses recorded during speech perception with layer-wise hidden-state representations extracted from pretrained models.

Current comparisons include:

- **Speech encoders:** WavLM, Wav2Vec2, and Whisper
- **Language models:** GPT-2 and Phi-4
- **Neural modalities:** EEG and fMRI
- **Listening conditions:** clean and noisy speech
- **Encoding model:** ridge regression from model representations to neural responses
- **Validation:** leave-run-out cross-validation
- **Evaluation:** Pearson correlation, raw and noise-ceiling-normalized alignment, and robust subject- or channel-level aggregation

## My Contribution

At Academia Sinica, I developed and evaluated the analysis pipeline for speech–brain representation alignment. My work includes extracting and organizing hidden-state representations, implementing reproducible neural-encoding evaluations, comparing models and layers across conditions, and building aggregation and statistical-analysis procedures for EEG and fMRI results.

A central goal is to make model comparisons interpretable. Rather than relying on one aggregate score, I examine whether differences are stable across layers, participants, channels or neural subsets, and acoustic conditions.

## Methods

- **Layer-wise representation analysis.** Intermediate hidden states are evaluated separately so that model depth can be related to neural predictivity instead of collapsing each model into a single feature set.
- **Regularized neural encoding.** Ridge regression provides a controlled mapping from high-dimensional model representations to neural responses.
- **Cross-validated evaluation.** Leave-run-out validation reduces dependence on any particular run and provides a cleaner estimate of generalization.
- **Noise-ceiling normalization.** Encoding performance is interpreted relative to the reliability of the measured neural signal, which is especially important when comparing across subjects, channels, or modalities.
- **Condition and neural-subset comparisons.** Clean-versus-noisy speech and multiple channel groupings are used to test whether observed alignment patterns are robust across analysis settings.

## Current Analysis

I have completed raw and noise-ceiling-normalized comparisons across model families and Clean/Noisy conditions, including all-channel, alpha-band, visual, and semantic neural subsets. The current results show that alignment patterns depend on model family, neural subset, and listening condition, so the project emphasizes robust comparison and interpretation rather than a single headline score.

## Current Directions

I am interested in moving beyond passive representation comparison toward methods that use neural-encoding performance to guide representation selection or adaptation. Another direction is to combine the complementary temporal information available in EEG with the spatial information available in fMRI for multimodal representation learning.
