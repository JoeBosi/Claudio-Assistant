---
name: check-updates
description: Once a week (or on request) checks, read-only, whether a newer version of Claudio-Assistant exists on GitHub, explains in plain words what changed (added, improved, fixed, removed) and, only with the user's OK, updates the standard files without touching memory, jobs or the user's own skills. Use when the startup script says "The weekly update check is due" or when the user asks, e.g. "is there a new version", "check for updates", "update Claudio", "what's new" — also e.g. "c'è una versione nuova", "controlla gli aggiornamenti", "aggiorna Claudio" (Italian), "y a-t-il une mise à jour", "mets à jour" (French), "gibt es eine neue Version", "aktualisiere" (German).
---

# Check for updates — is there a newer Claudio?

Why it matters, in one line for the user (in their language): the assistant gets better over
time (new skills, fixes); a quick weekly look tells you whether something useful is waiting.
The check only **reads**. Updating happens only with the user's OK, and Claudio does it, never
the user.

Rules: read-only on the internet (use the chat's WebFetch tool, or Chromium as in `CLAUDE.md`
to READ pages); nothing is downloaded or executed during the check; nothing is installed
automatically; the only file written is `memory/_maintenance.md`. Never delete (use `_trash/`).
Talk to the user in their language (`memory/office/owner.md`, `Language:`).

## Part A: the check
1. **Installed version**: the file `VERSION.txt` in the folder root (one line, e.g. `1.2.0`;
   older installations have it as `VERSION`, without extension: read that one and, after the
   update, keep only `VERSION.txt`). If
   missing, the first version heading (`## x.y.z`) of `CHANGELOG.md` in the folder. If neither
   exists, the installed version is "unknown" (the check still shows the latest online).
2. **Latest version online**: read these sources (as many as answer) and take the
   **highest** version number found, because a release or tag may lag behind the changelog:
   1. `https://raw.githubusercontent.com/JoeBosi/Claudio-Assistant/main/CHANGELOG.md`: the
      first `## x.y.z` heading (the most reliable source);
   2. `https://api.github.com/repos/JoeBosi/Claudio-Assistant/releases/latest`: field
      `tag_name`, removing a leading `v`;
   3. `https://api.github.com/repos/JoeBosi/Claudio-Assistant/tags`: the highest tag.
3. **No internet** (all three fail): tell the user in one sentence, "I could not check today,
   I will try again next week". Then go to step 7 with result `no internet`.
4. **Compare numerically** major.minor.patch (1.10.0 is newer than 1.9.0). Same or older:
   tell the user "You have the latest version" and go to step 7.
5. **If newer**: read the online `CHANGELOG.md` (the raw URL above). For **every version
   between the installed one and the latest** report, in plain words and the user's language,
   using the changelog headings **Added / Improved / Fixed / Removed**: what it is, and **what
   it means for them in one line each**. Say clearly whether anything they use is removed or
   changed (compare with `memory/job-types.md` and the skills they use).
6. Ask: "Do you want me to update now? I make a safety copy first and keep all your memory
   and jobs untouched." If they are in a hurry or say no: "No problem, I will remind you next
   week", and go to step 7 with result `update available, postponed`.
7. **Log it (always)**, in `memory/_maintenance.md`:
   - the line `last_update_check: <YYYY-MM-DD>` (add it if missing, otherwise change only
     that line; keep every other line untouched);
   - a row in a `## Update checks` table (create the table if missing):

     | Date | Installed | Latest | Result |
     |---|---|---|---|
     | 2026-01-15 | 1.1.0 | 1.2.0 | update available, postponed |

   Results: `up to date`, `no internet`, `update available, postponed`, `no backup, postponed`,
   `updated`, `update failed, restored`.

## Part B: how to update (only after the user's OK)
The folder must **not** be overwritten and **not** updated with `git pull`: the memory would
clash. Instead:
1. **Backup first**: run the skill `backup` (memory, jobs, examples, knowledge, skills,
   settings). **No verified backup, no update**: log `no backup, postponed` and stop.
2. **Get the new version into a separate temporary folder**, never over the real one:
   `git clone --depth 1 https://github.com/JoeBosi/Claudio-Assistant.git` into
   `_trash/update-<version>/`. If git is missing, get it with the skill `get-tools`; only if
   git cannot work, the GitHub ZIP (downloaded by you, or by the user if they prefer) unpacked
   into `_trash/update-<version>/`. Nothing in that folder is run: it is only read and copied.
3. **Copy ONLY the standard files** from there into the real folder:
   - `docs/` (`MANUAL.*.md` and images), `README*`, `GETTING-STARTED.*.md`, `CUSTOMIZING.md`,
     `PRIVACY.md`, `LICENSE`, `CHANGELOG.md`, `VERSION.txt`, `.claude/hooks/README.md`,
     `jobs/_template/`;
   - `CLAUDE.md`: the new version ships it as `CLAUDE.template.md` (older versions as
     `CLAUDE.md`); **merge** it into the user's `CLAUDE.md`, keeping the rows the user's own
     skills added to the skills table, and do not leave a `CLAUDE.template.md` in the folder;
   - `.claude/settings.json` (and, if the new `setup` skill changed the startup checks, rewrite
     `startup.ps1` / `startup.sh` as it describes): first **compare**
     them with the installed ones and tell the user in plain words what changed; then copy
     (settings: merge, keeping the lines the user added; remove the entries the new standard
     file no longer has, such as `defaultMode` and the pre-allowed installers and interpreters
     `winget`, `brew`, `pip`, `python`, `node`, `git clone`, unless the user chose them, and
     tell the user);
   - the **standard skills** in `.claude/skills/` (those listed in the new CHANGELOG or README):
     if the installed copy was edited (compare with the backup), show the user the difference
     and merge, keeping the user's version in `_trash/update-<version>/user-changes/`; never
     touch the skills the user created (listed in `memory/job-types.md`);
   - **new template files and folders** that do not exist yet (e.g. `memory/deadlines.md`,
     `inbox/`, `knowledge/procedures/`): create them from the new version, never overwrite
     existing ones; add missing `last_*:` lines to `memory/_maintenance.md`.
4. **Never touch**: `memory/`, `jobs/`, `good-examples/`, `knowledge/`, `Learn-From-Here/`,
   `inbox/`, `.env`, `.claude/settings.local.json`.
5. **Verify**: check that `startup.sh` (macOS/Linux) or `startup.ps1` (Windows) still run
   without errors; read to the user the names and one-line purpose of the **new skills**;
   confirm `VERSION.txt` shows the new number.
6. **Log it**: result `updated` in the `## Update checks` table, `last_update_check` with
   today's date.
7. **If something goes wrong**: restore from the backup (skill `backup`), tell the user plainly
   what happened, log `update failed, restored`. Never leave the folder half-updated.
8. The temporary folder stays in `_trash/` (the user empties it).

## Plugin case
If Claudio was installed as a Claude Code plugin, the plugin itself updates through Claude Code
(the `/plugin` menu). The folder created from it still needs Part B, because the plugin does
not touch the user's folder.

## The weekly reminder
The startup script `.claude/hooks/startup.sh` / `startup.ps1` prints "The weekly update check
is due" when `last_update_check` in `memory/_maintenance.md` is missing or older than 7 days.
Claudio then **proposes** this skill at a calm moment; it does not impose it. If the user is in
a hurry, leave it for the next time.

## To check (tell the user, in their language)
- Installed version and latest version found (and which source answered).
- What changed, in plain words, and whether anything they use is removed.
- If updated: backup made, standard files replaced, memory and jobs untouched, new skills.
- If it failed or there was no internet: what happened and when Claudio will retry.
