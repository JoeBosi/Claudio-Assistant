# Changelog

Every version lists, where applicable, what was **Added**, **Improved**, **Fixed** and
**Removed**. The skill
`check-updates` reads this file to tell the user, in plain words, what a new version brings.

## 1.2.4 — 2026-11-07
### Fixed
- The eight `.keep` placeholder files are no longer empty: an empty file has no detectable text
  encoding and the Claude directory refused the plugin for that.

## 1.2.3 — 2026-11-07
### Fixed
- The startup script `startup.sh` no longer begins with a shebang line: the hook already runs it
  with `sh`, and the Claude directory accepts only plain text files from non-verified publishers.
### Removed
- The SVG diagram `docs/how-it-works.svg`, replaced by `docs/how-it-works.png` (same content):
  SVG is not among the image formats the directory accepts.

## 1.2.2 — 2026-11-07
### Improved
- After a review and live tests with made-up data: `backup` copies folder by folder (structure
  kept, exclusions respected on Windows and Mac/Linux), logs before copying memory and never
  moves files on servers or cloud folders; `deadlines` status is always `open`/`done`, archived
  rows are plain list lines and "this week" is defined at weekends; `mail` cleans file names
  and uses connectors read-only; `transcribe` is honest about speakers and keeps temporary
  files in `_trash/`; `check-updates` merges `CLAUDE.md` and edited skills, creates new
  template files and stops without a verified backup; `fill-form` names the pypdf calls and
  handles XFA, encrypted and signed PDFs; `ask-client` handles reminders; `daily-summary`
  has a default period.
- `CLAUDE.md` rule 4 lists `memory/deadlines.md` and `memory/_maintenance.md` as work status.
- Manuals and READMEs: `VERSION`, `inbox/` and `deadlines.md` in the folder trees.

## 1.2.1 — 2026-11-07
### Removed
- The `npx` permission rules in `.claude/settings.json`: no skill uses that launcher any more.

## 1.2.0 — 2026-11-07
### Added
- 11 new skills: `deadlines` (deadlines and agenda, warnings at startup), `mail` (emails
  pasted or dropped in `inbox/`, filed by job, reply drafts, never sends), `guided-job`
  (step-by-step jobs with a reusable procedure model in `knowledge/procedures/`),
  `fill-form` (PDF and Word forms filled from memory, missing data asked), `ask-client`
  (missing documents and the message to the client), `daily-summary` (day and week
  summary), `transcribe` (voice notes, calls and meetings to text, on the computer),
  `backup` (verified safety copies with rotation and guided restore), `explain` (any term
  or document explained from scratch), `legal-research` (official sources only, dated,
  with links) and `check-updates` (weekly read-only check of new versions on GitHub).
- `VERSION` file, `memory/deadlines.md`, `inbox/` folder, `knowledge/procedures/`,
  `knowledge/research/`, `jobs/_summaries/`.
- Startup scripts: weekly reminders for the update check and the backup, and the list of
  deadlines falling within 7 days.
- `memory/_maintenance.md` now records `last_backup` and `last_update_check` with their logs.
### Improved
- `help` lists all 21 skills; `tidy-memory` hands backup, update check and deadlines to the
  new skills; `.claude/settings.json` pre-allows the tools they use (ffmpeg, zip, robocopy…).
- READMEs in the four languages, manuals and plugin description updated.

## 1.1.7 — 2026-11-07
### Improved
- Skills no longer run packages through download-and-run launchers: skills are copied from
  their GitHub repository after reading them; the browser comes from the package manager and
  is driven with the Python `playwright` package; Git added to the basic toolkit.
### Removed
- References to the project the template came from; generic wording for the path rule and
  the test notes.

## 1.1.6 — 2026-11-07
### Fixed
- `get-tools`: plain PATH export instead of `eval` of `brew shellenv`.

## 1.1.5 — 2026-10-29
### Added
- Author links (website, LinkedIn) in all READMEs, manuals and plugin metadata.
- Website added as a contact in the privacy policy.
- This changelog.

## 1.1.4 — 2026-10-15
### Improved
- Pinned package versions in skill instructions.

## 1.1.3 — 2026-10-15
### Added
- Privacy policy (`PRIVACY.md`) and `privacyPolicyUrl`.

## 1.1.1 – 1.1.2 — 2026-10-15
### Added
- Plugin icon (Noto Emoji "flexed biceps", credited).

## 1.1.0 — 2026-10-15
### Added
- Packaged as a Claude Code plugin and marketplace; transparency section.

## 1.0.0 — 2026-10-15
### Added
- First release: autonomous office assistant folder, manuals in EN/IT/FR/DE, screenshots, diagram.
