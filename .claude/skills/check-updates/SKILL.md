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
1. **Installed version**: the file `VERSION` in the folder root (one line, e.g. `1.2.0`). If
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

   Results: `up to date`, `no internet`, `update available, postponed`, `updated`,
   `update failed, restored`.

## Part B: how to update (only after the user's OK)
The folder must **not** be overwritten and **not** updated with `git pull`: the memory would
clash. Instead:
1. **Backup first**: run the skill `backup` (memory, jobs, examples, knowledge, skills,
   settings). Check that the copy exists before going on.
2. **Get the new version into a separate temporary folder**, never over the real one:
   `git clone --depth 1 https://github.com/JoeBosi/Claudio-Assistant.git` into
   `_trash/update-<version>/`. If git is missing, get it with the skill `get-tools`. Alternative:
   the GitHub ZIP, if the user prefers to download it themselves into the Downloads folder:
   then unpack it into `_trash/update-<version>/`.
3. **Copy ONLY the standard files** from there into the real folder:
   - `CLAUDE.md`, `docs/MANUAL.*.html`, `README*`, `CHANGELOG.md`, `VERSION`;
   - `.claude/hooks/startup.ps1` and `startup.sh`;
   - `.claude/settings.json`: **merge**, keeping the lines the user added;
   - the **standard skills** in `.claude/skills/` (those listed in the new CHANGELOG or README);
     never touch the skills the user created (listed in `memory/job-types.md`);
   - `jobs/_template/`.
4. **Never touch**: `memory/`, `jobs/`, `good-examples/`, `knowledge/`, `Learn-From-Here/`,
   `inbox/`, `.env`, `.claude/settings.local.json`.
5. **Verify**: check that `startup.sh` (macOS/Linux) or `startup.ps1` (Windows) still run
   without errors; read to the user the names and one-line purpose of the **new skills**;
   confirm `VERSION` shows the new number.
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
