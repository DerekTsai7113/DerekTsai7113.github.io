# Derek Tsai Academic Website — Edit Guide

This file is a practical checklist for turning the current al-folio starter into a PhD-application research website.

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

Recommended homepage content:

- Name: **Te-Hsun (Derek) Tsai**
- Current position: **M.S. in Statistics, University of Washington**
- One-line research identity, e.g. **Statistical Machine Learning · Reliable AI · Biomedical Data Science**
- 3–5 sentence biography
- Research interests
- Links to CV, GitHub, LinkedIn, and email
- Later: a 30–60 second introduction video

For now, disable starter sections that are not useful:

```yaml
selected_papers: false

announcements:
  enabled: false

latest_posts:
  enabled: false
```

Replace the placeholder subtitle and office/address text.

Profile image is currently configured as:

`assets/img/prof_pic.jpg`

Replace that file with a professional photo using the same filename, or change `image:` in `_pages/about.md`.

---

## 2. Navigation: what to keep and hide

For a PhD-application website, recommended navigation is initially:

- **About / Home**
- **Research / Projects**
- **CV**

Optional later:

- Publications — only when there is an actual manuscript/publication worth listing
- Repositories — only if the GitHub repositories are cleaned up and useful to reviewers

Hide the following starter pages by changing `nav: true` to `nav: false` in each file:

- `_pages/blog.md`
- `_pages/teaching.md`
- `_pages/profiles.md` (people)
- `_pages/dropdown.md` (submenus)
- `_pages/publications.md` for now
- `_pages/repositories.md` for now, unless there are polished public repositories to showcase

Do **not** invent a Teaching section. No teaching experience is completely fine for a PhD applicant.

Keep:

- `_pages/projects.md`
- `_pages/cv.md`

A simple navigation bar is better than leaving template/example sections visible.

---

## 3. Projects page

Edit:

`_pages/projects.md`

The template currently uses example categories. Replace the starter setup with a research-focused structure.

Recommended featured projects:

1. **Speech–Brain Representation Alignment** — Academia Sinica
2. **Cause-of-Death Modeling** — University of Washington
3. **Adaptive Conformal Prediction for Chaotic Time Series** — University of Washington
4. **Causal Inference for E-cigarette Use and Respiratory Disease** — optional secondary project

Individual project files live in:

`_projects/`

Each project page should eventually follow this structure:

```markdown
## Research Question

## Why It Matters

## My Contribution

## Methods

## Results

## What I Learned / Future Directions
```

Keep **My Contribution** explicit. The website should make it easy for a faculty member to distinguish the overall project from the work I personally performed.

For the homepage/project card, keep the description to roughly 2–3 sentences. Put technical details and figures on the individual project page.

---

## 4. CV page

Edit:

`_pages/cv.md`

The starter currently points to an example PDF. Replace the example with the real PhD CV PDF when ready.

A simple option is to place the PDF under:

`assets/pdf/Derek_Tsai_CV.pdf`

and set:

```yaml
cv_pdf: /assets/pdf/Derek_Tsai_CV.pdf
```

If the template's auto-rendered CV workflow is annoying or fails, it is fine to use the PDF link only. The academic website does not need to regenerate the CV from YAML.

Once the website is presentable, add the website URL to the header of the PhD CV:

`DerekTsai7113.github.io`

---

## 5. Social/contact links

Social icons are controlled through the site's data/config files. At minimum, include:

- Email
- GitHub
- LinkedIn

Google Scholar can be added later if useful.

Avoid filling the page with social accounts that are unrelated to academic/research work.

---

## 6. Suggested homepage bio draft

A starting version:

> I am an M.S. student in Statistics at the University of Washington, with research interests in statistical machine learning, reliable AI, biomedical data science, and neural representation learning. My recent work at Academia Sinica studies how representations from pretrained speech and language models align with EEG and fMRI responses. I have also worked on medical machine learning, uncertainty quantification, conformal prediction, and causal inference. I am currently preparing for Ph.D. study beginning in Fall 2027.

This should be revised once the final PhD research narrative is settled.

---

## 7. Suggested research-interest block

Keep this concise rather than copying every CV keyword.

### Statistical & Reliable Machine Learning

Calibration, uncertainty quantification, conformal prediction, statistical learning.

### Biomedical & Neural Data Science

EEG/fMRI, neural encoding, clinical prediction, multimodal biomedical data.

### Representation Learning

Pretrained speech/language models, representation analysis, multimodal learning.

---

## 8. 30–60 second video — later, not required for first version

A short introduction video can be added after the written website is stable.

Suggested content:

- Name and current degree
- Main research interests
- One sentence about current Academia Sinica research
- One sentence about the type of PhD research being sought

The goal is clear communication and natural spoken English, not high production value.

---

## 9. Fastest useful editing order

### First pass — make the site presentable

1. Hide irrelevant navigation items.
2. Replace homepage placeholder biography/address.
3. Disable starter news/blog/publications blocks.
4. Add a real profile photo.
5. Keep only Home + Projects + CV in the main navigation.

### Second pass — research content

6. Replace sample projects with the real 3–4 research projects.
7. Write short project-card summaries.
8. Add detailed project pages and 1–2 useful figures per major project.

### Third pass — application polish

9. Upload the current PhD CV PDF.
10. Add social/contact links.
11. Record the optional 30–60 second introduction video.
12. Add the website URL to the CV and outreach emails.

---

## 10. How updates go live

Edit files on the `main` branch and commit the changes.

The al-folio GitHub Action builds the site and writes the generated site to the `gh-pages` branch. GitHub Pages is already configured to publish from:

`gh-pages / (root)`

After a successful **Deploy site** workflow, wait a minute or two and refresh:

`https://DerekTsai7113.github.io`

Do not manually edit the generated `gh-pages` branch; edit source files on `main` instead.

---

## Minimum viable PhD website

A useful first version does **not** need every feature in al-folio. It only needs:

- a clean homepage,
- a clear research identity,
- 3 strong research/project summaries,
- a downloadable CV,
- contact links.

Everything else is optional.
