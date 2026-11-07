# Plan — 10 new skills and weekly update check (2026-11-07)

Goal of the plugin: a non-technical professional fully assisted by an assistant that
specialises in their field. This release (1.2.0) adds the skills a real office needs every
day and a weekly, read-only check for new versions.

## A. New skills (`.claude/skills/<name>/SKILL.md`)
Same style as the existing ten: frontmatter `name` + `description` with typical phrases in
EN/IT/FR/DE, English text, numbered steps, never hand the problem back to the user, drafts
that the user checks, privacy rules (CLAUDE.md rule 5).

| Skill | What it does | Writes to |
|---|---|---|
| deadlines | deadlines and agenda from JOB.md and memory; "what is due this week"; warning at startup within 7 days | `memory/deadlines.md` |
| mail | reads mail the user pastes or exports into `inbox/` (eml/txt), or read-only mail connectors if present; sorts by job; reply drafts; never sends | `inbox/`, `jobs/*/received/` |
| guided-job | step-by-step procedure for a type of job: checklist, documents to ask for, steps, timing, cited rules; saved as reusable model | `knowledge/procedures/<type>.md` |
| fill-form | fills PDF/Word forms with data from memory; PDF with fields, Word placeholders, flat PDF overlay; missing data asked, never invented | the job folder |
| ask-client | list of missing documents from the job, ready message for the client (user sends) | the job folder |
| daily-summary | day/week summary: done, stalled, waiting on whom, next steps | chat (optionally `jobs/_summaries/`) |
| transcribe | voice notes, calls, meetings to text with local/free tools got via get-tools; API key only in local `.env` | the job folder |
| backup | copy of memory, jobs, examples, knowledge, skills to a user-chosen place; rotation, verification, restore; proposed when older than 7 days | `memory/_maintenance.md` (`last_backup`) |
| explain | "explain it from scratch": every technical/legal/tax term in plain words with everyday examples | chat |
| legal-research | up-to-date rules from official sources, with link, date consulted and "check with a professional" | `knowledge/` |
| check-updates | compares installed version (`.claude-plugin/plugin.json` is not shipped in the folder, so the version is read from `VERSION`) with GitHub releases/tags/CHANGELOG, read-only; explains in plain words | `memory/_maintenance.md` (`last_update_check`) |

## B. Weekly update check
- `VERSION` file in the folder root (copied by `new-office`), source of the installed version.
- `startup.sh` / `startup.ps1`: new step 4 reads `last_update_check` in `memory/_maintenance.md`
  and, after 7 days, asks Claude to run `check-updates`; step 5 reads `last_backup` and, after
  7 days, proposes `backup`; step 6 reads `memory/deadlines.md` and flags lines due within 7 days.
- Read-only: GitHub API (`releases/latest`, `tags`) or raw `CHANGELOG.md`. No downloads, no
  automatic installation, no download-and-run commands.
- `CHANGELOG.md` with sections Added / Improved / Fixed / Removed per version.

## C. Directory constraints (unchanged)
No download-and-run launchers; no external scripts; context in the skills, not in a plugin
CLAUDE.md; no personal data; `plugin.json` 1.2.0 with updated description; four READMEs,
`help` skill, manuals and `CHANGELOG.md` updated.

## D. Method
1. Read the repo. 2. This plan. 3. One sub-agent per skill (Sonnet 5.5, medium effort), then
review of every file. 4. Test: critical reading + real run of the startup scripts and of
`check-updates` logic in a test folder with made-up data. 5. Policy scan (`npx`, `curl`,
`wget`, `iwr`, `iex`, `bash -c`, `sh -c`, `python -c` with URL). 6. Commit and push to
`JoeBosi/Claudio-Assistant`. 7. Summary to the controller chat.
