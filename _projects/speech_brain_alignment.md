---
layout: page
title: Speech–Brain Representation Alignment
permalink: /projects/speech-brain-alignment/
description: Neural encoding and representation analysis across EEG and fMRI using pretrained speech and language models.
importance: 1
category: research
related_publications: false
---

## Research Question

How do internal representations learned by pretrained speech and language models correspond to human neural responses during speech perception, and how does that relationship change across recording modalities and listening conditions?

## Why It Matters

Pretrained models contain rich hierarchical representations, but strong predictive performance alone does not tell us which model layers or features best correspond to biological information processing. Comparing model representations with EEG and fMRI can help characterize what information is shared between artificial and neural representations.

## My Contribution

At Academia Sinica, I developed and evaluated neural encoding pipelines for studying speech–brain representation alignment. My work focuses on reproducible layer-wise analyses and on comparing representation quality across neural modalities and acoustic conditions.

## Methods

- Layer-wise representations from pretrained models including **WavLM** and **GPT-2**
- Ridge-regression neural encoding models
- Leave-run-out cross-validation
- Noise-ceiling normalization
- Subject- and channel-level aggregation
- Clean-versus-noisy speech comparisons
- Complementary analyses across **EEG** and **fMRI**

## Current Directions

I am interested in moving beyond passive representation comparison toward methods that use neural encoding performance to guide representation selection or adaptation. A related direction is to investigate how EEG's temporal resolution and fMRI's spatial resolution can provide complementary signals for multimodal representation learning.
