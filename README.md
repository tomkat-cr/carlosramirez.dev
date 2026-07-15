# carlosramirez.dev

Personal profile/link-in-bio site for Carlos Ramirez — Software Engineer and Architect (Python, React, JS, PHP, AWS, AI).

Live at [carlosramirez.dev](https://carlosramirez.dev).

## About

This is a static, single-page site: a profile photo, bio, and links out to other places (GitHub, LinkedIn, etc.). The HTML and CSS are exported static output rather than hand-authored source, so there's no framework or build step in this repo.

## Getting started

Requires PHP (for the built-in dev server).

```bash
make run
```

Serves the site at [http://localhost:8000](http://localhost:8000).

## Project layout

```
website/
├── index.html        # the page
├── css/               # compiled stylesheet
├── assets/            # background images, webfont, manifest.json, brand icons
└── images/            # favicon/logo and profile photo
```

## Other Makefile targets

`build`, `start`, `clean`, and `deploy` are currently no-ops, kept for interface consistency with other projects. There is no CI, test suite, or deploy pipeline configured yet.
