---
layout: page
title: Adaptive Conformal Prediction for Chaotic Time Series
permalink: /projects/adaptive-conformal-prediction/
description: Distribution-free uncertainty quantification and adaptive calibration under closed-loop chaotic forecasting.
importance: 1
category: research
related_publications: false
---

<link rel="stylesheet" href="/assets/css/academic.css">

<p class="project-meta">University of Washington · STAT 538 Graduate Course Project</p>

> **Format note.** The course required the final report to use a NeurIPS-style paper template. This was a course project and was **not** a NeurIPS submission.

## Research Question

Standard conformal prediction offers distribution-free marginal coverage under exchangeability. But what happens when a forecasting model is deployed recursively, so that its own prediction errors change the distribution of future inputs? I used the Lorenz-63 chaotic system as a controlled stress test and asked whether adaptive recalibration could recover useful coverage under this closed-loop distribution shift.

## Experimental Setup

A two-layer LSTM was trained for one-step-ahead forecasting and then evaluated under two rollout protocols:

- **Open loop:** each prediction receives the true previous state.
- **Closed loop:** the model recursively feeds its own predictions back as future inputs.

The second setting creates a mismatch between calibration and deployment: as forecast errors accumulate, the effective input and residual distributions drift away from the calibration distribution.

## Methods

- Split conformal prediction for multivariate prediction intervals
- Rolling-window adaptive recalibration
- Exponentially weighted moving-average (EWMA) recalibration
- Coverage and interval-width evaluation across forecast horizons
- Sensitivity analysis across observation noise and adaptive parameters
- Comparison with an Extended Kalman Filter baseline

## Main Findings

Split conformal prediction remained well calibrated at short horizons but deteriorated substantially under longer closed-loop rollouts. Empirical joint coverage fell from **0.951 at horizon 10** to **0.792 at horizon 50** and **0.723 at horizon 100**, despite a nominal target of 0.90.

Adaptive calibration recovered much of the lost coverage by tracking the evolving residual distribution. At horizon 100, rolling-window and EWMA configurations achieved coverage around the nominal target, but with wider intervals, making the coverage–width trade-off explicit.

The project reinforced a broader lesson that matters to my current research interests: reliability guarantees that are valid under a calibration distribution can degrade once model deployment changes the data-generating process itself.

## Limitations & Extensions

The Lorenz-63 system is intentionally controlled and low-dimensional. The next questions are whether similar failure modes persist in higher-dimensional or real-world sequential systems, how adaptive conformal methods behave under more complex forms of dependence, and how to obtain useful conditional or regional coverage rather than only global marginal coverage.

## Code

[GitHub repository: adaptive-conformal-lorenz63](https://github.com/DerekTsai7113/adaptive-conformal-lorenz63)
