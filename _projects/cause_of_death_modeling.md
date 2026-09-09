---
layout: page
title: Cause-of-Death Modeling
permalink: /projects/cause-of-death-modeling/
description: Machine-learning pipelines for automated cause-of-death classification using heterogeneous verbal-autopsy and clinical data.
importance: 3
category: research
related_publications: false
---

## Research Question

How can machine-learning systems classify causes of death reliably when labels are highly imbalanced, clinical information is heterogeneous, and the available datasets differ in structure and diagnostic detail?

## Why It Matters

Reliable cause-of-death information is important for public-health surveillance, but many settings lack complete medical certification. Verbal-autopsy systems therefore need models that can make useful predictions from incomplete, noisy, and unevenly distributed information.

## My Contribution

As a research assistant at the University of Washington, I developed reproducible machine-learning benchmarks and evaluation pipelines for cause-of-death classification across multiple verbal-autopsy datasets.

## Methods

- Support Vector Machines and Random Forest benchmarks
- Multiple datasets including **CHAMPS, MDS, and PHMRC**
- Hierarchical classification with chapter-to-detail constraints
- Soft-pruning strategies for fine-grained prediction
- Hyperparameter tuning across age-stratified cohorts
- Fusion of text representations and structured clinical features
- Strict leakage-safe evaluation across heterogeneous data sources

## Key Challenges

The project required balancing predictive performance against several practical constraints: long-tailed labels, small sample sizes in some subgroups, missing clinical information, and differences among verbal-autopsy narratives, symptom checklists, and diagnostic sources.

## What I Learned

This work strengthened my interest in statistical machine learning for biomedical data, especially settings where evaluation design, data quality, and uncertainty are as important as the choice of predictive model.
