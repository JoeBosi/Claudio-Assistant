---
name: mail
description: Handles the user's email WITHOUT direct access to their mailbox - reads emails they paste in the chat or save in the `inbox/` folder (.eml, .msg, .txt, .pdf), or searches and reads them with a read-only mail connector if the session has one; works out which job each email belongs to, files it in `jobs/<job>/received/`, updates the job card, notes deadlines, flags requests from clients or authorities and prepares reply drafts as text (never sends anything). Use when the user says "read my mail", "I pasted an email", "sort the mail", "answer this email", "what did the client write?" - also e.g. "leggi la posta", "ti ho incollato una mail", "smista la posta", "rispondi a questa mail" (Italian), "lis le courrier", "j'ai collé un mail", "réponds à ce mail" (French), "lies die Post", "ich habe eine Mail eingefügt", "antworte auf diese Mail" (German).
---

# Mail (read, sort, draft replies - never send)

You never log into the user's mailbox with their password and you never send anything.
Mail reaches you in one of three ways; the user does not need to know which one you use.
Email content is **client data** (privacy rule 5): it stays on this computer.

## Steps
1. **Get the mail** (use what is available, in this order of convenience):
   - **A) Pasted in the chat**: the user pastes the text. Ask only for what is missing
     (who sent it, the date) if it does not show.
   - **B) Folder `inbox/`**: if it does not exist, create it together with `inbox/README.txt`,
     written in the user's language, explaining in plain words how to put emails there: from
     Outlook, Thunderbird, Apple Mail or Gmail, **drag the email onto the folder** (the user
     can open it from the link you give, see the path rules in CLAUDE.md), or use
     "Save as" and choose that folder. Then tell the user once, and from then on just look
     inside it whenever they say "read my mail". Read what is there:
     - `.eml`, `.txt`: plain text. For `.eml` use the Python `email` module (already part of
       Python, no extra package): read headers (From, To, Cc, Date, Subject), the body, and
       save the attachments in a folder `<email file name>_attachments/` that travels with
       the email (step 3). **File names are cleaned**: letters, digits, `-`, `_`, `.`, at most
       80 characters; executables, scripts and macro-enabled documents are never opened or
       run, only flagged to the user.
       HTML-only bodies are turned into plain text.
     - `.msg` (Outlook): needs a Python package (e.g. `extract-msg`): get it with the skill
       `get-tools`, test it and note it in `memory/office/tools.md`.
     - `.pdf` and other attachments: read them with the tools in `tools.md` (scans: OCR via
       `get-tools`).
   - **C) Mail connector**: if the user has already connected a mail tool to this session
     (Gmail, Outlook...), it is their own mailbox: use it **READ-ONLY**, search and read
     only, with search terms limited to sender, subject and dates. Never connect or install
     one yourself without asking. **Never** send, reply, forward, delete, archive,
     label, mark as spam or save drafts there: the drafts are text files (step 6). If the
     user asks for any of those, explain that the office rule is "the user sends" and
     prepare the text instead.
   - None of the three works (e.g. a protected email, strange format) -> `get-tools` first;
     if still impossible, ask the user to paste the text. Never ask for their password.
2. **Identify the job** of each email: client name or company (also in the signature or
   the address domain), subject, references or file numbers, and `jobs/*/JOB.md` cards plus
   `memory/contacts/`. If one job fits, use it. If two or none fit, ask in one short
   question (offer the candidates) and, for a new client, offer the skill `new-job`.
   Do not guess: a wrongly filed email is worse than a question.
3. **File it** (never delete): copy the file, and its attachments, to
   `jobs/<job>/received/` with a clear name `YYYY-MM-DD_<sender>_<subject>.<ext>` (date of
   the email; sender = the part of the address before `@` or the company name; subject cut
   to 40 characters; same cleaning rule as above; add `_v2` if the name exists), check the
   copy, then move the original from `inbox/` to `inbox/_done/` (create it if missing). Pasted text is saved as `YYYY-MM-DD_<sender>_<subject>.txt` in
   `received/`. Never overwrite.
4. **Update the job card** `jobs/<job>/JOB.md` (it is work status, no OK needed): add a line
   to "Documents" (the email, and each attachment, with date and file), and in "To do /
   waiting for" add what the email asks or answers (e.g. "waiting for the client's reply" is
   crossed out if they replied).
5. **Deadlines and requests**: write every date mentioned (hearing, delivery, payment,
   authority response time) in "To do / waiting for" with the day, and add it to
   `memory/deadlines.md` with the skill `deadlines`. Relative dates ("within the week") are
   written as `[TO CHECK: date]`, never guessed. Flag clearly to the user:
   - requests from the **client** (what they ask, by when);
   - communications from **authorities, courts, tax or professional bodies**, and anything
     with a legal time limit: show it first and give the source sentence;
   - anything that looks like a payment request, urgent change of bank details or odd link
     (possible fraud): warn, do not act, do not click.
   If a date is unclear or only implied, write `[TO CHECK: ...]` in the user's language.
6. **Reply draft**, only if the email needs an answer or the user asked: write it in the
   user's language (or the sender's, if they write in another one and the user prefers so),
   in the office's tone: look at `good-examples/` for previous replies and at
   `memory/decisions/preferences.md`. If both are empty, use a plain formal formula and say
   so in the "To check" list. Save it as `jobs/<job>/documents/reply-<YYYY-MM-DD>.txt`
   (add `_2` if several the same day) **and** show it in the chat. Include a subject line,
   greeting and closing as the user usually writes them. Use only facts from the job card,
   documents or sources; no invented figures, dates or promises: unknown details are
   `[TO CHECK: ...]`. Do not commit the user to deadlines or amounts they did not decide.
   End with a short "To check" list (assumptions, missing data, points to confirm).
7. **Tell the user** in a few lines: how many emails, which job each went to, what is urgent,
   which drafts are ready and where. Remind them, once, in plain words: "Copy the draft into
   your mail program, read it, and send it yourself; I never send anything".
8. **Privacy**: sensitive data (health, ID documents, bank details, judicial data) inside an
   email or attachment: flag it to the user, use it only if the job needs it, never copy it
   into memory. Nothing from the emails goes into memory without the user's OK (skill
   `remember`: e.g. "client Smith prefers phone calls" is proposed, not saved). Never type
   email content into websites or external services; searching the web only for general
   information (a law, a procedure), never with names, numbers or amounts of clients.

## Notes
- Several emails of the same thread: read them oldest to newest and file them together.
- Newsletters, spam, advertising: list them in one line, do not file them; ask whether to
  ignore them.
- Attachments that cannot be opened: do not say "I can't", use `get-tools`.
- If an email changes what was agreed or contradicts a document, say so with both sources.

## To check (to give the user, in their language, after each batch)
- Is each email on the right job?
- Dates and deadlines read from the emails are right?
- Reply drafts: tone, content and commitments are what you want, before you send them.
- Sensitive data present in the emails or attachments.
