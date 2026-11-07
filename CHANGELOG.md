# Changelog

Every version lists what was **Added**, **Improved**, **Fixed** and **Removed**. The skill
`check-updates` reads this file to tell the user, in plain words, what a new version brings.

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
### Fixed
- Nothing in this version.
### Removed
- Nothing in this version.

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
