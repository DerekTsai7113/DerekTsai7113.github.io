---
layout: page
title: Adaptive Conformal Prediction for Chaotic Time Series
permalink: /projects/adaptive-conformal-prediction/
description: Adaptive calibration for uncertainty quantification under closed-loop chaotic forecasting.
importance: 4
category: research
related_publications: false
---

<link rel="stylesheet" href="/assets/css/academic.css">

<p class="project-meta">University of Washington · Graduate Research Project</p>

## Research Question

How reliable is standard split conformal prediction when forecasts are generated recursively in a chaotic dynamical system, and can adaptive calibration recover useful coverage as forecast errors evolve over time?

## Why It Matters

Conformal prediction provides distribution-free coverage guarantees under exchangeability, but recursive forecasting can create strong temporal dependence and distribution shift. Chaotic systems are a useful stress test because small prediction errors can grow rapidly as the forecast horizon increases.

## My Contribution

I designed and analyzed a graduate research project on uncertainty quantification for closed-loop chaotic forecasting. The main goal was to identify when standard calibration breaks down and to evaluate simple adaptive alternatives.

## Methods

- Split conformal prediction
- Closed-loop forecasting on chaotic time series
- Rolling-window recalibration
- Exponentially weighted moving-average calibration
- Coverage and interval-width evaluation across forecast horizons

## Main Finding

Standard split conformal prediction showed substantial coverage degradation at longer horizons. Adaptive calibration based on rolling windows and exponentially weighted updates recovered coverage closer to the nominal target, while making the trade-off between coverage and interval width explicit.

## Future Directions

I am interested in extending this line of work to nonstationary and dependent data more broadly, including principled adaptive conformal methods, calibration under temporal shift, and uncertainty quantification for scientific machine-learning systems.
