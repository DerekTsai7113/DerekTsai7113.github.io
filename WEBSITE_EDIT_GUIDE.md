# Derek Tsai Academic Website — Edit Guide

This file is a practical checklist for turning the current al-folio starter into a PhD-application research website.

## Current audit — 2026-09-03

The basic cleanup is working correctly on the generated GitHub Pages site.

### Completed

- GitHub Pages is publishing from `gh-pages / (root)`.
- Homepage title and identity are customized for **Te-Hsun (Derek) Tsai**.
- Homepage subtitle is **M.S. in Statistics, University of Washington**.
- Homepage biography and research-interest sections are customized.
- Starter announcements, latest posts, and selected-paper blocks are disabled on the homepage.
- Main navigation is now only:
  - **about**
  - **research**
  - **CV**
- The following starter navigation pages are successfully hidden (`nav: false`):
  - blog
  - teaching
  - people
  - submenus
  - publications
  - repositories
- The Research page title/description are customized.

### Remaining issues found in the generated site

These should be fixed before putting the website on the CV or sending it to faculty:

1. **Profile photo is still the template `prof_pic.jpg`.** Replace it later with a real professional photo.
2. **Social/contact icons still contain template data.** `_data/socials.yml` currently includes:
   - example CV PDF
   - `you@example.com`
   - example InspireHEP ID
   - example Google Scholar ID
   - Albert Einstein custom social link
     These must be removed/replaced. Until then, an easy temporary option is to set `social: false` in `_pages/about.md`.
3. **Research page is currently empty.** The title and description are correct, but the real project cards/pages have not been added yet.
4. **CV page still points to `/assets/pdf/example_pdf.pdf` and still uses starter RenderCV content.** Replace this with the real PhD CV PDF.
5. **The built-in search still indexes starter blog/demo content.** For a minimal application site, either set `search_enabled: false` in `_config.yml` for now, or later remove/disable the demo posts and keep search.

### Current recommended next order

1. Clean `_data/socials.yml` or temporarily set `social: false`.
2. Replace the CV example PDF with the real PhD CV.
3. Build 3 major Research pages/cards.
4. Choose and replace the profile photo.
5. Add the optional 30–60 second introduction video last.

---

## Goal

Use the website as a two-layer research portfolio:

1. **Homepage: 2–3 minute overview** — who I am, research interests, and 3–4 featured projects.
2. **Project pages: 5–10 minute detail** — research question, methods, my contribution, results, figures, and future direction.

The site does **not** need teaching, lab-member, blog, or publication sections unless there is real content to show.

---

## 1. Files that matter most

### Homepage

Edit:

`_pages/about.md`

This controls the homepage text, profile picture, short bio, announcements, and recent posts.

The current homepage already has the first-pass biography and research-interest blocks. Continue refining it rather than rebuilding it.

Profile image is configured as:

`assets/img/prof_pic.jpg`

Replace that file with a professional photo using the same filename, or change `image:` in `_pages/about.md`.

### Photo recommendation

For this academic site, use a **head-and-shoulders / upper-torso portrait**, not an extreme passport-style crop and not a full-body photo. Ideal characteristics:

- face clearly visible at small size
- shoulders or upper chest included
- simple background
- natural lighting
- normal professional clothing; a suit is not required
- expression can be friendly rather than formal-ID style

Because the profile image sits in a relatively narrow right-hand column, a chest-up portrait usually works better than a wider half-body image.

---

## 2. Navigation

Current desired navigation is already implemented:

- **About / Home**
- **Research**
- **CV**

Optional later:

- Publications — only when there is an actual manuscript/publication worth listing
- Repositories — only if the public GitHub repositories are cleaned up and useful to reviewers

Do **not** invent a Teaching section. No teaching experience is completely fine for a PhD applicant.

---

## 3. Research page

Edit:

`_pages/projects.md`

The page title and description are already cleaned, but the generated Research page is currently empty.

Individual project source files live in:

`_projects/`

The starter still contains example files such as `1_project.md`, `2_project.md`, etc. These should eventually be replaced with real research projects rather than shown as demo content.

Recommended featured projects:

1. **Speech–Brain Representation Alignment** — Academia Sinica
2. **Cause-of-Death Modeling** — University of Washington
3. **Adaptive Conformal Prediction for Chaotic Time Series** — University of Washington
4. **Causal Inference for E-cigarette Use and Respiratory Disease** — optional secondary project

Each major project page should eventually follow this structure:

```markdown
## Research Question

## Why It Matters

## My Contribution

## Methods

## Results

## What I Learned / Future Directions
```

Keep **My Contribution** explicit. The website should make it easy for a faculty member to distinguish the overall project from the work personally performed.

For the homepage/project card, keep the description to roughly 2–3 sentences. Put technical details and figures on the individual project page.

---

## 4. CV page

Edit:

`_pages/cv.md`

The starter still points to an example PDF. Replace the example with the real PhD CV PDF when ready.

A simple option is to place the PDF under:

`assets/pdf/Derek_Tsai_CV.pdf`

and set:

```yaml
cv_pdf: /assets/pdf/Derek_Tsai_CV.pdf
```

Also update `_data/socials.yml`, because its CV icon separately points to the example PDF.

If the template's auto-rendered CV workflow is annoying or fails, it is fine to use the PDF link only. The academic website does not need to regenerate the CV from YAML.

Once the website is presentable, add the website URL to the header of the PhD CV:

`DerekTsai7113.github.io`

---

## 5. Social/contact links

Edit:

`_data/socials.yml`

The starter data must be replaced before sharing the site.

At minimum, keep:

- Email
- GitHub
- LinkedIn
- CV PDF

Google Scholar can be added later if useful.

Remove unrelated starter entries such as InspireHEP, RSS (unless wanted), and the Albert Einstein custom social link.

Avoid filling the page with social accounts that are unrelated to academic/research work.

---

## 6. Homepage research identity

Current structure:

### Statistical & Reliable Machine Learning

Calibration, uncertainty quantification, conformal prediction, statistical learning.

### Biomedical & Neural Data Science

EEG/fMRI, neural encoding, clinical prediction, multimodal biomedical data.

### Representation Learning

Pretrained speech/language models, representation analysis, multimodal learning.

This is intentionally broader than one narrow research topic. It can be refined after the final PhD application narrative is settled.

---

## 7. 30–60 second video — later

A short introduction video can be added after the written website is stable.

Suggested content:

- Name and current degree
- Main research interests
- One sentence about current Academia Sinica research
- One sentence about the type of PhD research being sought

The goal is clear communication and natural spoken English, not high production value.

---

## 8. How updates go live

Edit source files on the `main` branch and commit the changes.

The al-folio GitHub Action builds the site and writes the generated site to the `gh-pages` branch. GitHub Pages is configured to publish from:

`gh-pages / (root)`

After a successful **Deploy site** workflow, wait a minute or two and refresh:

`https://DerekTsai7113.github.io`

Do not manually edit the generated `gh-pages` branch.

---

## 9. Where to find this guide again

This file is stored in the **root of the repository**, not inside `_pages`:

`WEBSITE_EDIT_GUIDE.md`

To find it quickly after reopening GitHub:

1. Open the repository and stay on the **Code** tab.
2. Click **Go to file** (or press `t`).
3. Type `WEBSITE_EDIT_GUIDE.md`.
4. Open the file.

---

## Minimum viable PhD website

A useful first version does **not** need every feature in al-folio. It only needs:

- a clean homepage,
- a clear research identity,
- 3 strong research/project summaries,
- a downloadable real CV,
- correct contact links.

Everything else is optional.
