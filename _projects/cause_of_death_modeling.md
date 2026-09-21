---
layout: page
title: Cause-of-Death Modeling
permalink: /projects/cause-of-death-modeling/
description: Machine-learning pipelines for automated cause-of-death classification using heterogeneous verbal-autopsy and clinical data.
importance: 3
category: research
related_publications: false
---

<link rel="stylesheet" href="/assets/css/academic.css">

<p class="project-meta">University of Washington · Research Assistant · 2025</p>

> **Public-detail note.** This page summarizes the modeling and evaluation work I completed as a research assistant. Dataset-level performance and other internal results are omitted.

## Research Question

How can machine-learning systems classify causes of death reliably when labels are highly imbalanced, clinical information is heterogeneous, and available datasets differ in structure and diagnostic detail?

## Why It Matters

Reliable cause-of-death information is important for public-health surveillance, but many settings lack complete medical certification. Verbal-autopsy systems therefore need models that can make useful predictions from incomplete, noisy, and unevenly distributed information.

## My Contribution

As a research assistant at the University of Washington, I developed reproducible machine-learning benchmarks and evaluation pipelines for cause-of-death classification across multiple verbal-autopsy datasets.

My work focused on model development, hierarchical prediction, hyperparameter tuning, heterogeneous feature integration, and strict evaluation procedures designed to avoid information leakage.

## Methods

- Support Vector Machines and Random Forest benchmarks
- Multiple verbal-autopsy and diagnostic data sources, including CHAMPS, MDS, and PHMRC
- Hierarchical classification with chapter-to-detail constraints
- Soft-pruning strategies for fine-grained prediction
- Hyperparameter tuning across age-stratified cohorts
- Fusion of text representations and structured clinical features
- Strict no-leakage evaluation across heterogeneous data sources

## Modeling Challenges

The project required balancing predictive performance against several practical constraints:

- highly imbalanced and long-tailed cause-of-death labels;
- small sample sizes in some age or diagnostic subgroups;
- missing or sparse clinical information;
- differences among verbal-autopsy narratives, symptom checklists, and diagnostic sources;
- the risk of leakage when preprocessing or feature construction spans heterogeneous datasets.

## Research Themes

This work strengthened my interest in reliable statistical machine learning for heterogeneous data. In this setting, careful data splitting, evaluation design, and robustness to sparse or imbalanced data were as important as the choice of predictive model itself.
