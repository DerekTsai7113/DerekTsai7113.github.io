# Derek Tsai Academic Website — Edit Guide

This file is the working checklist for the PhD-application research portfolio.

## Current status — 2026-09-09

The basic website structure is now essentially complete.

### Completed

- GitHub Pages publishes from `gh-pages / (root)`.
- Source edits are made on the `main` branch.
- Homepage identity, biography, research interests, and contact links are customized.
- The homepage includes a compact **Methods & Expertise** section.
- The profile photo is displayed on the right and intentionally kept relatively small so the research text remains the visual focus.
- Search / `Ctrl+K` has been disabled because it added little value for a small academic portfolio.
- Navigation is intentionally minimal: **About / Research / CV**.
- The CV link opens the current PDF directly rather than adding an unnecessary intermediate page.
- The site defaults to light mode for new visitors while preserving the theme toggle.
- Starter project pages have been removed.
- Four real Research pages now exist:
  1. **Speech–Brain Representation Alignment**
  2. **fMRI Cross-Condition Speech Decoding**
  3. **Cause-of-Death Modeling**
  4. **Adaptive Conformal Prediction for Chaotic Time Series**

At this point, the main unfinished work is not site structure. The remaining task is to make the **Research pages substantially stronger and more informative than the CV**.

---

## Main next task — strengthen the Research portfolio

The website should not simply repeat CV bullets. The CV is the compressed record; the website should explain the research story, technical choices, personal contribution, and what was learned.

For each major project, aim to answer questions that a faculty reader may have after seeing the CV:

- What was the actual research problem?
- Why was the problem technically or scientifically difficult?
- What data and evaluation setup were used?
- What methods were compared, and why?
- What part of the work did Derek personally implement or analyze?
- What did the results show?
- What limitations remained?
- How did the project influence later research interests or possible future work?

Avoid copying CV bullets sentence-for-sentence. It is fine for the underlying facts to match the CV, but the website should add context and technical explanation.

### Recommended project-page structure

Use a structure close to this where appropriate:

```markdown
## Research Question

## Motivation / Why It Matters

## Data and Experimental Setup

## My Contribution

## Methods

## Results and Interpretation

## Limitations / Open Questions

## Future Directions
```

Not every page needs every heading. The goal is clarity, not filling a template.

### Length target

Each major page should be readable in roughly 3–6 minutes without figures, and around 5–10 minutes once figures are added.

Good project pages can be more detailed than the CV, but should still be much shorter and easier to scan than a paper or technical report.

---

## Priority order for strengthening the current projects

### 1. Speech–Brain Representation Alignment

This should remain the primary Academia Sinica project because it is the main internship line and connects directly to current interests in representation learning, neural data, and statistical modeling.

The detailed page should eventually explain more than the CV about:

- WavLM / GPT-2 representations and why layer-wise analysis is useful
- neural encoding setup
- EEG versus fMRI roles
- cross-validation and aggregation choices
- clean versus noisy speech comparisons
- noise-ceiling normalization and interpretation
- what the analysis suggests about model–brain representation alignment
- limitations and possible follow-up directions

### 2. fMRI Cross-Condition Speech Decoding

Keep this separate from the main internship project because the research question, modeling pipeline, and collaboration structure are different.

The page should clearly separate the overall team project from Derek's contribution. It can later explain:

- the decoding task and listening conditions
- ROI-level analysis
- model-comparison logic
- Wave-4 S5 / classical baselines at an appropriate level of detail
- statistical testing and reproducibility choices
- what cross-condition behavior means scientifically

Do not claim a finalized paper title, authorship order, or submission status before those facts are actually settled.

### 3. Cause-of-Death Modeling

This page can provide more context than the CV about:

- verbal-autopsy / clinical prediction setting
- long-tailed and hierarchical labels
- heterogeneous features
- why leakage-safe evaluation mattered
- modeling and validation decisions
- error analysis and practical limitations

### 4. Adaptive Conformal Prediction for Chaotic Time Series

This is particularly useful for Statistics / ML applications because it demonstrates uncertainty quantification rather than only applied biomedical modeling.

The website can explain:

- why ordinary split conformal prediction can lose coverage in iterative chaotic forecasting
- closed-loop versus one-step prediction
- rolling-window and EWMA calibration ideas
- coverage–width tradeoffs
- failure modes and future directions

---

## NCTS experience — secondary Research item

The **National Center for Theoretical Sciences (NCTS)** experience is worth keeping in the CV and is also a reasonable addition to the Research page, but it should not displace the four stronger current projects on the homepage.

Current project identity:

**Forecasting & Data Assimilation for Chaotic Systems** — NCTS, 2024

Core content that could justify a concise Research entry:

- Lorenz-63 nonlinear dynamics
- hybrid LSTM / ARIMA forecasting
- Kalman-filter-based data assimilation
- noisy observations and model misspecification
- 200+ controlled experiments across architecture, data size, forecast horizon, observation noise, and model specification
- robustness / RMSE comparisons

Recommended treatment:

- Keep it **off the homepage Featured Research** for now.
- Add it later as a fifth Research item or an **Earlier Research** entry if the page benefits from more breadth.
- A shorter page is sufficient unless there are strong figures or technical results worth showing.

This project is more valuable on the website than a generic skills section because it demonstrates actual time-series / dynamical-systems research experience.

---

## Research figures — discuss later

Do not add figures merely to make the pages look fuller.

For each major project, eventually choose only 1–2 figures that materially help a reader understand either the method or the result.

Strong candidates are:

- one clear method / pipeline diagram
- one representative result figure
- one compact comparison table when visual comparison is genuinely useful

For the fMRI collaboration in particular, likely candidates are one architecture / pipeline figure and one representative decoding-result figure after the analysis and manuscript framing stabilize.

Images should be stored under `assets/img/` or a clearly named project subfolder.

---

## Homepage policy

The homepage should remain a short academic overview, not a duplicate CV.

Keep:

- name and degree
- short research biography
- Research Interests
- Methods & Expertise
- 3 Featured Research links
- profile photo
- Email / GitHub / LinkedIn

Do not add full Education, Coursework, Experience, or programming-language sections unless they become necessary later. Those details already belong in the CV.

Current Featured Research set:

1. **Speech–Brain Representation Alignment**
2. **Cause-of-Death Modeling**
3. **Adaptive Conformal Prediction for Chaotic Time Series**

The fMRI collaboration can replace one of these later if it reaches a strong finalized / submitted form.

---

## CV policy

Current CV PDF:

`assets/pdf/Derek_Tsai_CV.pdf`

Navigation should link directly to the PDF so a faculty reader does not need an extra click.

The website and CV should remain complementary:

- **CV:** concise facts, dates, roles, and bullets
- **Website:** research motivation, technical context, personal contribution, interpretation, limitations, and figures

When the CV changes, replace the PDF at the same path so the website link does not need to change.

---

## Publications / manuscript status

Only enable a Publications section when there is something real to list: a submitted manuscript, public preprint, accepted paper, or publication.

If the fMRI collaboration becomes a real submission, update the website only after the following are settled:

- exact paper title
- exact author list and order
- exact venue
- accurate status such as `Submitted`, `Under Review`, `Accepted`, or `Preprint`

Until then, describe it only as an ongoing research collaboration / project.

---

## Optional later additions

These are not priorities now:

- 30–60 second introduction video
- Publications page
- polished public repository links
- additional secondary projects such as the causal-inference course project

Do not spend time on these before the main Research pages are strong.

---

## Files that matter most

### Homepage

`_pages/about.md`

Controls the homepage biography, research interests, Methods & Expertise, profile photo, social display, and Featured Research links.

Current profile image:

`assets/img/Photo.png`

### Research index

`_pages/projects.md`

### Detailed Research pages

`_projects/`

### CV

`assets/pdf/Derek_Tsai_CV.pdf`

`_pages/cv.md` exists mainly as a compatibility redirect; navigation now opens the PDF directly.

### Social / contact links

`_data/socials.yml`

### Site-wide settings

`_config.yml`

### Search disabling

`_plugins/disable_search.rb`

---

## Current research identity

### Statistical & Reliable Machine Learning

Calibration, uncertainty quantification, conformal prediction, statistical learning.

### Biomedical & Neural Data Science

EEG/fMRI, neural encoding, clinical prediction, multimodal biomedical data.

### Representation Learning

Pretrained speech/language models, representation analysis, multimodal learning.

This remains broad enough to support Statistics, Statistical ML, Data Science, and related biomedical / computational PhD applications.

---

## Goal of the website

Use the site as a two-layer research portfolio:

1. **Homepage: roughly 1–3 minute overview** — who I am, research interests, and strongest projects.
2. **Project pages: roughly 5–10 minute detail** — research question, motivation, methods, contribution, results, limitations, figures, and future direction.

The site does not need to reproduce every line of the CV.

---

## How updates go live

Always edit source files on the `main` branch.

The GitHub Action builds the site and writes generated output to `gh-pages`. GitHub Pages publishes from:

`gh-pages / (root)`

After committing a change:

1. Open **Actions**.
2. Check **Deploy site**.
3. Wait for it to turn green.
4. Refresh `https://DerekTsai7113.github.io`.

Do not manually edit `gh-pages`.

A failed Prettier workflow usually means code-formatting differences rather than a broken public site. The **Deploy site** workflow is the main indicator of whether the website itself updated successfully.

---

## Immediate next-session checklist

1. Strengthen the **Speech–Brain Representation Alignment** page.
2. Strengthen the **fMRI Cross-Condition Speech Decoding** page.
3. Strengthen the **Cause-of-Death Modeling** and **Adaptive Conformal Prediction** pages.
4. Decide whether to add **NCTS — Forecasting & Data Assimilation for Chaotic Systems** as a fifth / Earlier Research item.
5. Discuss and choose project figures only after the written explanations are solid.
6. Re-check fMRI manuscript / submission wording after the collaboration status is finalized.

Everything outside this list is currently lower priority.
