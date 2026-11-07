---
name: backup
description: Makes a safety copy of the assistant folder's valuable parts (memory, jobs, good examples, knowledge, skills, settings, inbox) to a place the user chooses (office server, external disk or USB, cloud-synced folder), checks it, rotates old copies, and can guide a restore if something is lost. Use when the user says "make a backup", "save a copy of everything", "restore the backup", "I lost the memory", when the startup script proposes it because the last backup is older than 7 days — also e.g. "fai una copia di sicurezza", "ripristina" (Italian), "fais une sauvegarde", "restaure" (French), "mach eine Sicherung", "stelle wieder her" (German).
---

# Backup and restore

Why it matters, in one line for the user (in their language): the mail and the Claude cloud
keep the conversations, but **the memory, the jobs and the examples live only on this
computer**: if the computer breaks, they are gone unless a copy exists elsewhere.

Rules: never delete (old copies go to `_trash/`), never overwrite, never ask the user to type
commands (you run them; if a program is missing use skill `get-tools`). Read the user's
language and OS from `memory/office/owner.md` and `memory/office/tools.md`. Client data
is copied only to the place the user chose, never to websites or external services.

## What is copied (and what is not)
Copied: `memory/`, `jobs/`, `good-examples/`, `knowledge/`, `.claude/skills/`,
`.claude/settings.json`, `inbox/`, `VERSION`.
NOT copied: `_trash/`, `jobs/_backup/` (these are copies already), `.git`.

## A. Make a backup
1. **Destination.** Read `backup_destination:` in `memory/office/office.md`.
   - If missing: ask once, in simple words, where copies should go, offering three options:
     a folder on the office server, an external disk or USB stick, or a folder that the
     computer already syncs to the cloud (OneDrive, Google Drive, Dropbox, iCloud).
     Recommend a place that is **not this computer's own disk**. Find the real path yourself
     (look at the mounted drives and the user's home folder), confirm it with the user,
     and save the line `backup_destination: <full path>` in `memory/office/office.md`
     (technical inventory: no extra OK needed, but tell the user).
   - Check the destination is reachable (the folder exists and you can create a file in it).
     If not (disk unplugged, server offline): say so plainly, ask to plug it in, or propose
     another destination. Never silently write somewhere else.
2. **Format.** Default: a plain dated folder `Claudio-Backup-<YYYY-MM-DD_HHMM>/` that the
   user can open with no tools. If they prefer a single file, make a zip with the same name.
   If the folder with that name already exists, wait one minute or add `_2`: never overwrite.
3. **Copy.**
   - Windows (PowerShell): `robocopy <source> <destination>\Claudio-Backup-<date> /E /XD _trash .git _backup`
     for each part (robocopy returns codes 0-7 for success: that is normal), or `Copy-Item -Recurse`
     for single items. Zip: `Compress-Archive`.
   - Mac/Linux: `cp -R` for each part (skip `_trash`, `.git`, `jobs/_backup`; use `rsync -a --exclude`
     if available). Zip: `zip -r`, or Python `shutil.make_archive`.
   - Keep the same structure inside the copy (`memory/`, `jobs/`, ...), so a restore is a plain copy back.
   - Put a short note in the copy, named `README-BACKUP.txt`, in the user's language:
     date, what is inside, "to restore, ask Claudio".
4. **Verify.** Count files and total size in the source parts and in the copy (for a zip: open
   it and count the entries). They must match. Open one random file from the copy and read
   its first lines. If anything differs, repeat the copy for the missing part; do not report
   success until it matches.
5. **Rotation.** Keep the last **7 daily** copies and the last **4 weekly** copies (one per week,
   the most recent of each week). Older ones are **moved** to `_trash/` inside the destination
   (create it if needed), never deleted. If the destination does not allow moving, list the
   old copies for the user to delete and say which ones. Tell the user what was moved.
6. **Log.** In `memory/_maintenance.md`:
   - set `last_backup: <YYYY-MM-DD>` (exact format; add the line right under `interval_days:`
     if missing; keep `last_tidy:` and `interval_days:` untouched);
   - add a row to a `## Backup log` table (create it at the end of the file if missing):

     | Date | Destination | Files | Size | Result |
     |---|---|---|---|---|
     | 2026-11-07 | D:\Backups | 412 | 38 MB | OK, verified |

   The startup script reads `last_backup:` and proposes this skill when it is older than 7 days.
7. **Report** to the user in 3-4 short lines: where the copy is (full path in their format),
   how many files, the size, "verified: same as the original". Mention a reminder: a copy on
   the same disk as the computer does not protect against a broken disk.

## B. Restore (guided)
Typical triggers: "restore the backup", "I lost the memory", a job folder deleted by mistake.
1. Reach the destination (see A.1; if unreachable, ask where the copies are).
2. **List** the available copies with date and size, newest first, in simple words
   ("7 November, 10:30 - 38 MB").
3. Ask two questions: **which copy**, and **what**: everything, or only `memory/`, or only one job
   (or one file). Suggest the newest copy unless the user says otherwise.
4. Choose how, and explain it in one line each:
   - **Safest**: restore into a NEW folder next to the current one (`Claudio-Ripristino-<date>/`),
     so the user can compare before deciding.
   - **Copy back**: first move the current files that would be replaced into `_trash/`
     (with a dated subfolder), then copy the backed-up ones. Never overwrite directly.
   Wait for the user's OK on what will be replaced.
5. Do it, then **verify** as in A.4 (same file count and size as the part in the copy; open one file).
6. Tell the user to **close and reopen the assistant folder** so the restored memory is read from the start.
   If the restored folder is a new one, say exactly where it is and how to open it.
7. Log it: a row in `memory/_maintenance.md` under `## Backup log` with Result "restored <what> from <date>".

## Rules
- Never overwrite, never delete: old or replaced things go to `_trash/`.
- Never change `last_tidy:` or `interval_days:`.
- Never copy the backup into the folder being backed up (it would grow forever).
- If you cannot do something (a drive format, a locked file), solve it yourself with `get-tools`
  or choose another way; do not hand the problem to the user.

## To check (end every answer with this list, in the user's language)
- The copy is in the place I chose, and that place is not only this computer's disk.
- I know how to find it (path shown above).
- Old copies listed or moved to `_trash/` are really ones I no longer need.
- After a restore: reopen the folder and check a job and the memory look as expected.
