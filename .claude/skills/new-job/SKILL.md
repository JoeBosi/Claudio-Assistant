---
name: new-job
description: Opens a new job — asks where to do it (standard subfolder in jobs/ or a folder chosen by the user, backed up first), creates the JOB.md card (client, subject, type of job, status). Use when the user talks about a new client, assignment, case or project, or says "new job", "open a file", "new project" — also e.g. "nuovo lavoro", "apri una pratica" (Italian), "nouveau dossier", "nouveau travail" (French), "neuer Auftrag", "neues Projekt" (German).
---

# New job

1. Ask only what is strictly necessary (do not ask again what the user has already said):
   - client;
   - subject of the job (what is to be done, and where if it matters);
   - type of assignment (look at `memory/job-types.md` for the types already known).
2. Look in `memory/contacts/` to see whether the client, suppliers or authorities are
   already known, and use that data.
3. Check in `jobs/` that the job does not already exist (also under a similar name).
4. **Ask where they want to work** (a single, simple question):
   - **A) standard folder**: a new subfolder `jobs/<YYYY>-<Short client>-<Short subject>/`
     here in the assistant (e.g. `2026-Smith-ContractRenewal`, no odd characters);
   - **B) a folder of theirs**, for example the one where they have already put the
     client's documents (on the computer, the server or the cloud). If they cannot type the
     path, have them describe it in words ("it's on the desktop, it's called…") and find it
     yourself.
5. **If they choose B, back up first** (never skip it, not even if the folder is empty or
   nearly so):
   - copy the whole folder to `jobs/_backup/<folder name>-<YYYY-MM-DD>/` (Windows
     `Copy-Item -Recurse` into a backup folder that does not exist yet, Mac/Linux `cp -R -n`);
   - check that the copy is complete (same number of files and same sizes);
   - only then start working. Documents already there are not renamed, moved or
     overwritten: what you produce goes in a `documents/` subfolder (or wherever the user
     says); if a name already exists, add `_v2`;
   - study the documents already there: they are the starting material of the job.
6. Create the card:
   - **case A**: in the new subfolder put `JOB.md` (from `jobs/_template/JOB.md`, filled
     in), `received/` and `documents/`;
   - **case B**: still create `jobs/<YYYY>-<Short client>-<Short subject>/JOB.md` (so all
     jobs can be found in one place) and fill in the "Working folder" line (the chosen path)
     and "Initial backup".
7. Update `memory/job-types.md` (+1 to the type of job).
8. Tell the user where the folder is (and the backup, in case B), with the full path in
   their system's format, checked, and propose the first step.
