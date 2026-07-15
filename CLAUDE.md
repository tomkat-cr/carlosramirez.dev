# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

`carlosramirez.dev` — a static, single-page profile/link site (Linktree-style personal landing page). There is no build system, no package manager, and no source framework in this repo: `website/index.html` and its CSS are pre-built/exported static output (note the `data-next-head` attributes and hashed asset filenames like `70e28b3294062f19.css`, `background-desktop.8d7b6145a56063aa.png` — artifacts of a Next.js export, not something generated locally). Treat `website/index.html` and `website/css/*.css` as generated/vendored output rather than hand-authored source: prefer small, targeted edits over structural rewrites, since there's no local pipeline that regenerates them.

## Commands

All commands run from the repo root via the `Makefile`:

- `make run` — serve the site locally at `http://localhost:8000` (`cd website && php -S localhost:8000`). Requires PHP's built-in server; any static file server would also work since there's no server-side logic.
- `make build` / `make start` / `make clean` — no-ops (`"No build/start/clean required"`), present for interface consistency, not functionality.
- `make deploy` — no-op placeholder; no deploy pipeline is wired up yet.

## Structure

- `website/index.html` — the entire page markup (single file, ~560 lines).
- `website/css/` — single hashed, minified CSS bundle (~17k lines).
- `website/assets/` — background images, manifest.json (PWA manifest), webfont (`LinkSansProduct.woff2`), brand SVG icons (GitHub/LinkedIn).
- `website/images/` — favicon/logo assets and profile photo (including `.HEIC` originals alongside processed images).

## Working in this repo

- There are no tests, linters, or CI configured.
- Because the HTML/CSS are exported artifacts, avoid reformatting or "cleaning up" them wholesale — diffs should stay minimal and scoped to the actual change (e.g., updating a link, swapping an image, editing meta tags).
