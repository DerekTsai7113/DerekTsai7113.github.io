# Derek Tsai Academic Website — Edit Guide

This file is the working checklist for turning the current al-folio site into a PhD-application research portfolio.

## Current audit — 2026-09-03

The basic site setup and cleanup are now complete enough to pause safely and continue later.

### Completed

- GitHub Pages is publishing from `gh-pages / (root)`.
- Source edits are made on the `main` branch.
- Homepage identity is customized for **Te-Hsun (Derek) Tsai**.
- Homepage subtitle is **M.S. in Statistics, University of Washington**.
- Homepage biography and research-interest sections are customized.
- Starter announcements, latest posts, and selected-paper blocks are disabled.
- Main navigation has been simplified to the useful pages only.
- Starter pages such as blog, teaching, people, submenus, publications, and repositories are hidden with `nav: false`.
- Research page title and description are customized.
- Profile photo is now configured as:

  `assets/img/Photo.png`

  and `_pages/about.md` points to `Photo.png`.

- Social/contact links have been cleaned. `_data/socials.yml` now contains only:
  - Email: `testat0929@gmail.com`
  - GitHub: `DerekTsai7113`
  - LinkedIn: `te-hsun-tsai`
- Template social links such as InspireHEP, the sample Google Scholar profile, RSS, example CV link, and Albert Einstein custom link have been removed.
- CV is intentionally hidden for now with `nav: false` because the final PhD CV will be prepared after the school list and manuscript/publication status are clearer.

### Current site state

The homepage is now a usable first-pass academic profile. The largest unfinished part is the **Research** section: the page exists, but the real detailed project cards/pages still need to be created.

The current CV file still contains template content internally, but this is acceptable for now because the page is hidden from navigation. Do not spend time polishing it until the final PhD CV is ready.

### Important research-organization decision

There are **two distinct Academia Sinica research lines**, and they should not be merged simply because they were done at the same institution.

1. **Speech–Brain Representation Alignment** — the main internship project.
   - Focus: EEG / speech–brain representation alignment, pretrained speech/language representations, neural encoding/evaluation, and clean-versus-noisy speech analyses.
   - Treat this as the primary Academia Sinica internship project on the website and CV.

2. **fMRI Cross-Condition Speech Decoding / ICASSP 2027 Collaboration** — a separate collaboration with another lab member.
   - Keep the public-facing title provisional until the paper title is finalized.
   - Current research setting: fMRI Pre/Post/Clean decoding, 21 participants, grouped stimulus folds, left-hemisphere ROI analysis, and sequence/tabular model comparisons including S5, TabM, and TabPFN.
   - The collaboration is targeting **ICASSP 2027**, with a working internal draft deadline of **2026-09-16**.
   - A publication/manuscript output is **not guaranteed yet**; whether this becomes a submitted paper depends on the final results.
   - Do not state an authorship position publicly until the author list/order is actually settled.

For the website, it is appropriate to create two separate Research project pages because the research questions, data, methods, and collaboration structures are different.

For the CV, keep one **Research Intern — Academia Sinica** experience block unless there is a strong reason to split employment entries; the two projects can be separated as project-level bullets/subheadings inside that experience.

---

## Next tasks — do these later

### Priority 1 — Build the Research portfolio

Edit:

`_pages/projects.md`

Individual project source files live in:

`_projects/`

Replace the starter/example project files with real research projects.

Recommended order:

1. **Speech–Brain Representation Alignment** — Academia Sinica
2. **fMRI Cross-Condition Speech Decoding** — Academia Sinica collaboration; ICASSP 2027 target, output contingent on final results
3. **Cause-of-Death Modeling** — University of Washington
4. **Adaptive Conformal Prediction for Chaotic Time Series** — University of Washington
5. **Causal Inference for E-cigarette Use and Respiratory Disease** — optional secondary project

The second Academia Sinica title above is a **working website label**, not a claimed paper title. Replace it with the real title only after the collaboration finalizes the manuscript title.

Each major project page should follow roughly this structure:

```markdown
## Research Question

## Why It Matters

## My Contribution

## Methods

## Results

## What I Learned / Future Directions
```

Keep **My Contribution** explicit so a faculty reader can quickly distinguish the overall project from the work personally performed.

For the ICASSP collaboration in particular, clearly distinguish the overall team project from Derek's own contribution. Do not imply sole ownership of the project or a finalized publication before submission.

For project cards or homepage summaries, keep descriptions to about 2–3 sentences. Put technical detail, figures, and extended explanations inside the individual project page.

### Priority 2 — Decide homepage Featured Research after the ICASSP result is clearer

The Research page can contain both Academia Sinica projects, but the homepage does not need to show every project.

For now, the likely featured set is:

1. **Speech–Brain Representation Alignment**
2. **Adaptive Conformal Prediction for Chaotic Time Series** or **Cause-of-Death Modeling**
3. One additional strongest project

If the fMRI collaboration produces a credible ICASSP 2027 submission, it will likely deserve a Featured Research slot. If it does not reach submission, it can still remain on the Research page as a substantive collaboration, but it does not need to displace a stronger completed project on the homepage.

### Priority 3 — Add figures to major projects

For each major project, use only the most informative 1–2 figures rather than turning the site into a full report.

Good figure types include:

- a simple method/pipeline diagram
- one representative result figure
- one summary table or comparison if it genuinely helps

Store project images under `assets/img/` or a clearly named subfolder.

For the fMRI collaboration, good candidates later would be one architecture/pipeline figure and one representative ROI/model result figure, but only after the final analysis and paper framing stabilize.

### Priority 4 — Add the final PhD CV

Wait until the school list and manuscript/publication status are settled.

When ready:

1. Export the final PhD CV PDF.
2. Upload it to:

   `assets/pdf/Derek_Tsai_CV.pdf`

3. Edit `_pages/cv.md` so the PDF link points to:

```yaml
cv_pdf: /assets/pdf/Derek_Tsai_CV.pdf
```

4. Replace the remaining starter description/content on the CV page.
5. Change:

```yaml
nav: false
```

to:

```yaml
nav: true
```

6. Add the website URL to the CV header:

   `DerekTsai7113.github.io`

There is no need to use the template's RenderCV system if a normal PDF link is simpler.

### Priority 5 — Optional 30–60 second introduction video

Add this only after the written site is stable.

Suggested content:

- name and current degree
- main research interests
- one sentence about current/recent Academia Sinica work
- one sentence about the kind of PhD research being sought

The goal is clear communication and natural spoken English, not high production value.

### Priority 6 — Publications / manuscript section, only if applicable

If there is a real manuscript, submission, preprint, or publication worth listing later, then enable the Publications page and add it accurately.

The most likely near-term candidate is the separate **fMRI / ICASSP 2027 collaboration**, but its status is still contingent on the final results. Until a manuscript is actually submitted or made public, keep the Publications page hidden and describe the work only as an ongoing research collaboration/project.

Once the submission status is real, update all of the following together:

- exact paper title
- exact author list and author order
- exact venue
- accurate status such as `Submitted`, `Under Review`, `Accepted`, or `Preprint`
- project page link to the manuscript/preprint only if it is publicly accessible

Do not create a Publications section merely to fill space, and do not label work as `Submitted` before submission actually occurs.

---

## Goal of the website

Use the site as a two-layer research portfolio:

1. **Homepage: 2–3 minute overview** — who I am, research interests, and major projects.
2. **Project pages: 5–10 minute detail** — research question, methods, personal contribution, results, figures, and future direction.

The site does **not** need teaching, lab-member, blog, or publication sections unless there is real content to show.

---

## Files that matter most

### Homepage

`_pages/about.md`

Controls:

- homepage bio
- subtitle
- research interests
- profile photo
- social links display
- Featured Research text

Current profile image:

`assets/img/Photo.png`

### Research page

`_pages/projects.md`

Controls the overall Research page.

Detailed projects:

`_projects/`

### CV

`_pages/cv.md`

Currently hidden intentionally. Update only when the final application CV is ready.

### Social/contact links

`_data/socials.yml`

Current intended content:

```yaml
# Social and contact links

email: testat0929@gmail.com
github_username: DerekTsai7113
linkedin_username: te-hsun-tsai
```

### Site-wide settings

`_config.yml`

Contains site name, URL, description, theme behavior, search settings, and other global configuration.

---

## Current homepage research identity

### Statistical & Reliable Machine Learning

Calibration, uncertainty quantification, conformal prediction, statistical learning.

### Biomedical & Neural Data Science

EEG/fMRI, neural encoding, clinical prediction, multimodal biomedical data.

### Representation Learning

Pretrained speech/language models, representation analysis, multimodal learning.

This is intentionally broad enough to support Statistics, Statistical ML, Data Science, and related biomedical/computational PhD applications. Refine it later only if the final application narrative becomes substantially narrower.

---

## Navigation philosophy

Keep the site small and intentional.

Current useful navigation:

- **About / Home**
- **Research**
- **CV** — hidden until final CV is ready

Optional later:

- **Publications** — only when there is genuine content
- **Repositories** — only if public repositories are polished and useful to faculty readers

Do **not** invent a Teaching section. No teaching experience is completely fine for a PhD applicant.

---

## Search / demo-content cleanup — optional later

The al-folio starter contains demo posts and other example assets internally. Even when their navigation pages are hidden, some template/demo material may remain in search or the repository.

This is not urgent while the site is still private/work-in-progress.

Before widely sharing the site, either:

- remove unused demo posts/content, or
- disable search in `_config.yml` if search adds no value.

Do not delete template files blindly while the site is working; clean them gradually after the main Research pages are finished.

---

## How updates go live

Always edit source files on the `main` branch.

The al-folio GitHub Action builds the site and writes the generated output to the `gh-pages` branch. GitHub Pages publishes from:

`gh-pages / (root)`

After committing a change:

1. Open **Actions**.
2. Check **Deploy site**.
3. Wait for it to turn green.
4. Refresh:

   `https://DerekTsai7113.github.io`

Do not manually edit `gh-pages`.

If **Deploy site** fails, inspect that workflow first. Formatting/test workflows such as Prettier are secondary; the deployment workflow is the key indicator for whether the website itself updated successfully.

---

## Where to find this website again

The entire website is this GitHub repository:

`DerekTsai7113/DerekTsai7113.github.io`

To find it after reopening GitHub:

1. GitHub profile icon → **Your repositories**.
2. Open **DerekTsai7113.github.io**.
3. Confirm the branch is **main**.
4. Edit files from there.

The public website is:

`https://DerekTsai7113.github.io`

The public website is the rendered result; the GitHub repository is where edits are made.

---

## Where to find this guide again

This file is in the **root of the repository**:

`WEBSITE_EDIT_GUIDE.md`

Fastest method:

1. Open the repository on the **Code** tab.
2. Confirm branch = `main`.
3. Click **Go to file** or press `t`.
4. Search `WEBSITE_EDIT_GUIDE.md`.

---

## Minimum viable PhD website

Before adding the URL to applications or outreach emails, the site should have:

- a clean homepage — **done**
- a clear research identity — **done**
- professional profile photo — **done**
- correct Email / GitHub / LinkedIn links — **done**
- 3 strong research/project summaries — **remaining**
- detailed pages for the major projects — **remaining**
- a downloadable final CV — **wait until final CV is ready**
- optional short video — **later**

Everything else is optional.
