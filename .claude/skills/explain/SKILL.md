---
name: explain
description: Explains from scratch, in plain words, any technical, legal, tax, IT or professional term, a whole document (a letter from an authority, a contract clause, a tax notice, an error message, a quote) or something Claudio has just done or answered: one short definition, one everyday example, why it matters now and what to do next. Use when the user says "explain it from scratch", "what does X mean", "I don't understand this letter", "in plain words", "explain what you just did" — also e.g. "spiegamelo da zero", "cosa vuol dire", "non ho capito questa lettera", "in parole semplici" (Italian), "explique-moi depuis le début", "qu'est-ce que ça veut dire" (French), "erklär es mir von Grund auf", "was bedeutet das" (German).
---

# Explain — from scratch, in plain words

"From scratch" simply means: starting from zero, with no prior knowledge assumed. It says
nothing about the person. **Forbidden** in every explanation: anything about age or
ability ("as if to a grandparent", "for seniors", "it is easy", "obviously"). Never
reassure or lecture; just explain well.

## 1. Rules for every explanation
- In the user's language (`memory/office/owner.md`, `Language:`).
- Short sentences, one idea each. Everyday words first, the technical word after.
- Every acronym is written out and translated the first time (e.g. "VAT: value added tax,
  the tax added to the price of goods and services"), then the short form is fine.
- Examples come from daily life: shopping, home, car, family. Not from the user's
  profession, unless they ask. One example is enough.
- **Never invent.** If you are not sure of a meaning, a figure or a date, say so, then look it
  up (skill `legal-research` for laws and rules, official sources, `knowledge/`) and cite it.
- Client data (names, tax codes, amounts) is never typed into a search: search the term,
  not the person (CLAUDE.md, rule 5).
- Separate clearly **"What the text says"** from **"What I deduce"**. Deductions go at the
  end, under a heading "My deductions (not written in the text)", so they are never taken
  for facts. What the text does **not** say but one would expect is written plainly too.

## 2. Mode A: a word or a phrase ("what does 'escrow' mean?")
Answer in this order, about 8 lines in total:
1. **In one sentence**: the plain definition.
2. **Everyday example**: a short scene (e.g. a deposit held by a neutral person until the
   goods arrive).
3. **Why it matters now**: for the user or for the client, in the current job if there is
   one (read its `JOB.md`).
4. **What to do next**, if anything. If nothing, say "Nothing to do, just good to know."
5. If the term has a **precise legal meaning**: give the plain version first, then the exact
   source (law, article, paragraph) found with skill `legal-research`, with the date it was
   checked, e.g. "Civil Code, art. 1470, checked on 2026-11-07". If the source cannot be
   found: `[TO CHECK: source]` in the user's language.

## 3. Mode B: a document ("explain this letter")
1. Read the whole document with the tools in `memory/office/tools.md` (skill `get-tools` if
   the format is not readable: scanned PDF, photo, DOCX, P7M). Never ask the user to convert it.
2. **Short summary first**: who writes, to whom, about what, in three or four sentences.
3. **Paragraph by paragraph**: for each paragraph, one line "It says:" in plain words, then
   the definition of every difficult term inside it (as in Mode A, shorter). Quote the
   original words only where the exact wording matters.
4. **What is asked of the user, and by when.** List actions, amounts and deadlines. Every
   deadline goes through skill `deadlines` (counting rules, calendar), and into the
   `JOB.md` if the document belongs to a job.
5. **My deductions (not written in the text)**: what you infer, risks, what looks missing.
6. **"To check"** list in the user's language: terms or sources not verified, readings that
   depend on facts you do not have, anything the user or a professional must confirm.
7. If it is about a job in `jobs/`, save the explanation in that job's folder as
   `explanation-<document>.md` (a working draft, not memory) and say where it is, with the
   full path in the user's system format.

## 4. Mode C: "explain what you just did"
Claudio explains its own previous answer or a technical step (an installation, a file
conversion, a search, a tool added by `get-tools`).
1. Take the last answer or the entries in `memory/office/tools.md` as the base.
2. In order: **what I did** (in daily-life words, e.g. "I installed a small program that
   reads scanned pages, like a reader that turns a photo of a page into text"), **why** I did
   it, **what changed** on the computer, **whether anything needs attention** (a permission,
   a file created, a cost).
3. Be honest about doubts and failures: what worked, what failed, what was not verified.
4. No commands or code on screen. If a file or folder is involved, give the full path in the
   user's format, after checking it exists.

## 5. Optional glossary
After an explanation, if useful, offer in one line: "Do you want me to keep this term in
your glossary?" Only with their OK (skill `remember`), add a row to `knowledge/glossary.md`:

| Term | Plain explanation | Source (date checked) |
|---|---|---|

Search the file first; update the row instead of duplicating it. Create the file if missing
and note it in `memory/INDEX.md`. Never put client data in it.

## 6. After the explanation
- Ask once: "Is it clear, or shall I explain a part in another way?" If not clear, use a
  different example, never the same text repeated.
- If the explanation shows a job to do (a reply, a form, a payment), offer the next step
  (skills `new-job`, `fill-form`, `deadlines`) but do not start without their OK.
- End with the "To check" list, in the user's language, when there is anything to check.
