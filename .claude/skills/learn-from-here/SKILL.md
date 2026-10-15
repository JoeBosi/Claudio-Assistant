---
name: learn-from-here
description: Studies the work the user has left in the Learn-From-Here folder (finished documents, with or without a note of theirs), works out what type of job each one is, moves it among the good examples and updates memory. Use when the folder is not empty, when the startup script flags it, or when the user says "I've put some work in there", "look at the folder", "learn from these" — also e.g. "ti ho messo dei lavori", "guarda la cartella", "impara da questi" (Italian), "regarde le dossier", "apprends de ceux-ci" (French), "schau in den Ordner", "lerne daraus" (German).
---

# Learn-From-Here — studying the user's successful work

The `Learn-From-Here/` folder is the inbox where the user leaves work they were happy with.
They can put in:
- just the finished document (PDF, Word, Excel, drawings, photos…);
- the document **plus a note** written by them (a `.txt`, a saved email, a transcribed voice
  memo) explaining what it is or what is good about it;
- a subfolder with several files from the same job.

At the end the inbox must be empty again (except `README.txt`): **files are not deleted,
they are moved** among the examples.

## Steps
1. **List** the contents (excluding `README.txt`). Group them: one subfolder = one job;
   loose files with similar names or the same client = one job. A short `.txt`/`.md`, or one
   named like "note", "description", "for claude" (in any language) = **a message from the
   user**: read it first, it takes precedence over what you deduce yourself.
2. **Read** every job, whatever the format. How to read each format is written in
   `memory/office/tools.md` (PDF, Word, Excel, RTF, drawings, photos, scans…).
   If you cannot read a format yet, **get the tool** with `get-tools` and then carry on.
   Do not ask the user to convert or export anything.
   For drawings and charts: turn them into an image, so you can really **look** at them.
3. **Understand** each job: type of document (report, contract, quote, minutes, …), client,
   year, structure (chapters, order, attachments), what makes it good work (completeness,
   tone, particular details), recurring data (suppliers, authorities, people).
4. **Report to the user** briefly, one job per line: "It's a report for client X (2025).
   It looks especially well done for …. Is that right?". Ask only about what you did not
   understand.
5. **After the OK**, for each job:
   - move it to `good-examples/<type>/<year>-<place-or-client>/` (type folder in lowercase
     with hyphens: `report`, `quote`, `minutes`, … — you may use the user's language for
     the type names, but keep them consistent);
   - next to it write `EXAMPLE.md`: what it is, why it is a good example, the user's note,
     **structure** (list of chapters), particular features to imitate;
   - update `memory/job-types.md` (+1 to the type, or a new row);
   - if a type reaches 2-3 examples without a skill → propose `create-skill`; if the skill
     already exists → see whether the example teaches something the skill does not say and
     propose updating it.
6. **Memory**: clients, suppliers, offices or preferences found in the documents → propose
   them with `remember` (with the user's OK, as always).
7. Unusable things (broken files, duplicates): move them to `_trash/` with a line of
   explanation in your message to the user.
8. Close with a summary: how many jobs studied, where they ended up, what you learned.
