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

> **Public-detail note.** This page summarizes the methods and analysis work I completed during the internship. Detailed numerical findings are omitted because follow-up work remains within the collaboration.

During my research internship at Academia Sinica, I used neural-encoding models to study how hidden-state representations from pretrained speech encoders and language models correspond to human neural responses during speech perception. Rather than treating each model as a single representation, I compared intermediate layers and examined alignment across neural modalities, model families, and clean-versus-noisy listening conditions.

## Research Question

Which pretrained representations best explain neural responses to speech, at which model layers, and how stable are those relationships across EEG, fMRI, and acoustic conditions?

## Motivation

Modern speech and language models learn rich internal representations, but benchmark performance alone does not reveal whether those representations capture information related to biological speech processing. Neural encoding provides a way to compare model features with measured brain responses under a common predictive framework.

EEG and fMRI offer complementary views of this problem: EEG emphasizes temporal information, while fMRI provides richer spatial information. Comparing both modalities helps distinguish alignment patterns that are specific to one measurement setting from those that may generalize across modalities.

## Data and Experimental Setup

The analysis combined neural responses recorded during speech perception with layer-wise hidden-state representations extracted from pretrained models.

The comparisons included:

- **Speech encoders:** WavLM, Wav2Vec2, and Whisper
- **Language models:** GPT-2 and Phi-4
- **Neural modalities:** EEG and fMRI
- **Listening conditions:** clean and noisy speech
- **Encoding model:** ridge regression from model representations to neural responses
- **Validation:** leave-run-out cross-validation
- **Evaluation:** Pearson correlation, raw and noise-ceiling-normalized alignment, and robust subject- or channel-level aggregation

## My Contribution

I developed and evaluated the analysis pipeline for speech–brain representation alignment. My work included extracting and organizing hidden-state representations, implementing reproducible neural-encoding evaluations, comparing models and layers across conditions, and building aggregation and statistical-analysis procedures for EEG and fMRI results.

A central goal was to make model comparisons interpretable. Rather than relying on one aggregate score, I examined whether patterns were stable across layers, participants, channels or neural subsets, modalities, and acoustic conditions.

## Methods

- **Layer-wise representation analysis.** Intermediate hidden states were evaluated separately so that model depth could be related to neural predictivity instead of collapsing each model into a single feature set.
- **Regularized neural encoding.** Ridge regression provided a controlled mapping from high-dimensional model representations to neural responses.
- **Cross-validated evaluation.** Leave-run-out validation reduced dependence on any particular run and provided a cleaner estimate of generalization.
- **Noise-ceiling normalization.** Encoding performance was interpreted relative to the reliability of the measured neural signal, which is especially important when comparing across subjects, channels, or modalities.
- **Condition and neural-subset comparisons.** Clean-versus-noisy speech and multiple neural subsets were used to test whether alignment patterns were robust across analysis settings.

## Analysis Scope

During the internship, I completed raw and noise-ceiling-normalized comparisons across model families and Clean/Noisy conditions, including analyses over all channels and selected functional or frequency-based neural subsets. I also developed statistical summaries for model and layer comparisons across subjects and channels.

## Project Status

My active work on this project concluded with the end of my Academia Sinica internship in September 2026. Follow-up analyses may continue within the collaboration, while the methods and contributions described here reflect the work I completed during the internship.
