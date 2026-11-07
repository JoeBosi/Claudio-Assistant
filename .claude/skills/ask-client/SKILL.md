---
name: ask-client
description: Works out which documents and information are still missing for a job (from JOB.md, the checklist, the documents already received and the procedure model) and prepares a ready-to-send message for the client, by email or as a short WhatsApp-style message, in the user's language and the office's tone; the user sends it, you never do. Use when the user says "ask the client for the documents", "what is missing from client Smith", "write to the client what I need" - also e.g. "chiedi al cliente", "cosa manca", "scrivi al cliente i documenti" (Italian), "demande au client", "qu'est-ce qui manque" (French), "frag den Kunden", "was fehlt" (German).
---

# Ask the client — what is missing, and the message to get it

You prepare the message; **the user reads it and sends it** (you never send anything, rule 1).
Talk to the user in their language (`memory/office/owner.md`, `Language:`); the message too,
unless they say otherwise.

## 1. Find the job
1. Identify the job from what the user says (client name or subject). Look in `jobs/`
   (skip `jobs/_template/`, `_backup/`, `_archived/` and `_summaries/`). If several fit, ask which one, in one
   short question. If none exists, propose `new-job` first.
2. If the job is in a folder chosen by the user, `JOB.md` has the "Working folder" path:
   look there too.

## 2. Work out what is missing
Read, in this order:
1. `jobs/<job>/JOB.md`: type of assignment, "Documents" table, "To do / waiting for".
2. `jobs/<job>/CHECKLIST.md`, if the skill `guided-job` made one: the documents marked
   "to ask the client" and not yet received.
3. `jobs/<job>/received/` (if it exists) and the working folder: list what has really
   arrived; if the card names a file that is not there, say so in the "To check" list.
   Also look in `inbox/` and recent emails: if the client has already promised the
   documents, mention it to the user before asking again. Open
   the new files if needed to see what they are (a document with the wrong name or an
   unreadable one counts as received only after you check it; use `get-tools` if you
   cannot open it).
4. `knowledge/procedures/<type>.md`, if it exists, for the full list of documents the
   procedure requires. No model? Look at `good-examples/<type>/` and at what similar past
   jobs asked for. Still nothing? Search the official rules (laws, offices, never client
   data) and cite them, or write `[TO CHECK: ...]`.

Build a table in your head: **required / received / missing / unclear** (e.g. received but
expired, illegible, incomplete, wrong version). Never invent a requirement: each missing
item has a source (checklist, procedure model, example, rule) or is marked `[TO CHECK]`.
Do not ask for what the office can get itself (public registers, documents the office
already holds in `received/` or in another job of the same client: say so to the user).

## 3. Ask the user two short things (one at a time)
1. **Channel**: "Email or a short message (WhatsApp style)?" If memory
   (`memory/decisions/preferences.md`, `memory/contacts/`) already says how this client is
   contacted, use it and just confirm.
2. **Deadline** for the client to reply: propose a date based on the job's deadline (leave
   time to do the work) and let the user change it.
Also ask how they want to receive the documents only if memory does not say (email,
shared folder, bring them to the office).

## 4. Write the message
Look at `good-examples/letters/` (or the closest type) and the preferences in
`memory/decisions/preferences.md`: same greeting, tone, formal or informal address,
closing. Content:
1. **Greeting** to the client, by name as the user usually does.
2. **Why** the documents are needed, in one or two plain sentences (what they are for in
   this job).
3. **Numbered list** of the missing documents. Each item: name, then **one line of plain
   explanation**: what it is and where the client gets it ("from your municipality", "from
   your bank", "from your employer"). Add format hints only if useful (a clear photo is
   enough, original not needed...). If something is received but unusable, say why and what
   to send instead.
4. **Deadline** for sending ("by Friday 20 November").
5. **How to send** (reply to this email, bring them to the office, upload to a folder) and
   an offer to help ("if something is unclear, call me").
6. **Signature** of the user (as in their letters; from `owner.md`).

Rules for the text:
- **Email**: subject line + full text. **Short message**: 5-8 lines, no heavy formatting,
  the list kept but compact.
- Contains **only what the client already knows about their own job**: never other
  clients' data, never internal notes, prices or comments about the client (privacy rule 5).
- No jargon: explain terms in everyday words, as to a person who has never done this.
- Never invent names, dates or amounts: use the data in `JOB.md` and `contacts`, otherwise
  `[TO CHECK: ...]`.

## 5. Save and show
1. Save as `jobs/<job>/documents/request-to-client-<YYYY-MM-DD>.txt` (plain text, UTF-8;
   if the name exists add `_v2`, never overwrite). First line `DRAFT` (in the user's
   language). Then, on separate lines,
   `Channel:` (email/message), `To:` (only if known), `Subject:` (email only), then the text.
2. **Show the full text in chat** and tell the user the file path (full, in their system's
   format, checked to exist) so they can copy it. Say clearly: "I have not sent anything:
   you send it."
3. End with a short **"To check"** list in the user's language: deadline chosen,
   items you are not sure are really needed, `[TO CHECK]` points, anything the client
   may not understand.
4. Offer small changes (shorter, more formal, add an item); each change is saved as a new
   version `_v2`, `_v3`.

## 6. Update the job card and the deadlines
When the user says they sent it (or confirms the text is final):
1. In `JOB.md`, section "To do / waiting for", write: `waiting for documents from client
   (requested on <date>)` followed by the items still missing. If a request was already
   made, this is a **reminder**: replace the old waiting line, keeping the first request
   date ("first requested on …, reminder on …"), and say "reminder" in the message too. In the "Documents" table
   set those documents to "requested".
2. Add a **follow-up date** (a few days after the client's deadline, or as the user says)
   using the skill `deadlines`: row in `memory/deadlines.md`, e.g. "Follow up with client
   Smith on missing documents", job folder name, `open`.
3. If the user has not confirmed sending, write nothing as "requested" yet; say the card
   is still waiting for their OK.

## 7. When documents arrive
When the user says the client replied, or files appear in `received/` (also via the skill
`mail`):
1. Save them in `jobs/<job>/received/` (never overwrite; add `_v2`), check they are the
   right ones and readable (not expired, complete, correct person).
2. Update the "Documents" table and `CHECKLIST.md` (received / doubtful).
3. Recalculate what is still missing. If nothing is missing: write it in "To do / waiting
   for", mark the follow-up row in `memory/deadlines.md` as `done`, and propose the next
   step of the job.
4. If something is missing or unusable: **propose a reminder** (short, polite, only the
   items left) and prepare it with steps 4-5, saved as
   `request-to-client-<new date>.txt`; update the follow-up date.
5. Sensitive documents (ID, health, bank details): use only what the job needs, never copy
   them into memory, and warn the user if the client sent more than requested.

## 8. Memory
If you learn how this client likes to be contacted, or the user corrects your tone, propose
saving it with the skill `remember` (only with the user's OK). If a type of job often
needs the same list, propose to `guided-job` / `create-skill` to keep it as a model.
