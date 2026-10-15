---
name: archive
description: Copies the finished documents of a job to the office's shared server, or to the archive folder the user uses (computer, server, cloud), following the office's folder organisation, and writes on the job card where they ended up. Use when the user says "archive", "put it on the server", "save it to the office" — also e.g. "archivia", "metti sul server" (Italian), "archiver", "mets-le sur le serveur" (French), "archivieren", "auf den Server legen" (German).
---

# Archive (office server, folder or cloud)

The archive path and how its folders are organised are in `memory/office/office.md`.
If they are missing, ask the user and offer to save them there.

## Steps
1. Identify the job and the files to archive (usually `documents/`; ask whether they also
   want `received/`). List for the user what you will copy and **where**, following the
   office's rules (folder and file names). Wait for their OK.
2. **Copy** (never move, never delete) (Windows `Copy-Item` only after `Test-Path` says the target does not exist; Mac/Linux
   `cp -n`, which never overwrites).
   If a file with the same name already exists on the server: **do not overwrite**, ask
   (usually you add `_v2`).
3. **Check** that the copy is complete (same number of files and same sizes).
4. Update the job's `JOB.md`: the "Archived in" line with the exact path, and the status.
5. Offer to move the local folder to `jobs/_archived/` (privacy rule: fewer copies of
   client data around, and the list stays clean). The card stays readable: future chats
   will always know where the files are on the server and can read them from there.

## If the user archives by hand
That is perfectly fine: later chats will not break. Just ask them where they put the files,
so you can update "Archived in" and find them next time.
