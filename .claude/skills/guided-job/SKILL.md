---
name: guided-job
description: Guides the user step by step through a TYPE of job they do not know well or do rarely (e.g. an appeal against a tax notice, a building permit application, a company incorporation, a translation certification). Identifies the type, uses or builds a reusable procedure model from official sources (checklist, documents to ask the client for, steps, timing and legal deadlines, forms, fees, common mistakes, all cited), opens the job, ticks the checklist as it goes and does the technical parts itself. Use when the user says "guide me through", "how do I do a ...", "step by step", "what do I need for ..." — also e.g. "guidami", "passo passo", "come si fa una pratica di", "cosa serve per" (Italian), "guide-moi", "étape par étape", "comment faire un dossier de" (French), "führe mich", "Schritt für Schritt", "was brauche ich für" (German).
---

# Guided job

A job done one phase at a time, with you as the guide, for a **type** of job (not for one
client only). The result is the job itself **and** a reusable procedure model in
`knowledge/procedures/`. Talk in the user's language (`memory/office/owner.md`, `Language:`);
the model and the checklist are written in that language too.

## 1. Identify the type of job
1. Read what the user asked. Look in `memory/job-types.md` (types already known) and
   `memory/profession.md` (what the profession does, its authorities and rules).
2. Name the type in one short phrase (e.g. "appeal against a tax notice") and confirm it
   with the user in one question, only if it is doubtful. Ask also, once and briefly, the
   facts that change the procedure (country/region, who the client is, urgency).
3. If the user mentions a deadline already running (a notice received, a date), note it now:
   it is the first thing to protect.

## 2. Find or build the procedure model
1. Look for `knowledge/procedures/<type>.md` (also similar names). If it exists, read it,
   check the "Last checked" date and, if older than 6 months or the rules may have changed,
   refresh the rules and deadlines (step 2.3) before using it.
2. Also look in `good-examples/<type>/` and the user's old jobs of the same type: their
   method and documents are the first source and set the style.
3. If there is no model, **build it** (do not say "I don't know how"):
   - study **official sources**: the laws and regulations, the authority's website and
     forms, the professional body's guides. Use the skill `legal-research` for the rules;
     browse with Chromium (fix it with `get-tools` if it fails). Search only the procedure,
     never client names, tax codes or amounts (rule 5);
   - save useful official documents under `knowledge/<source>/` and add a line to
     `knowledge/README.md` (what, link, date, how to cite);
   - write `knowledge/procedures/<type>.md` with these sections:
     1. **What it is and when it applies** (and when it does not);
     2. **Checklist of phases**, each with `- [ ]` items;
     3. **Documents to ask the client for**;
     4. **Steps in order**: who does what, where, with which form;
     5. **Timing**: typical durations and **legal deadlines**, with the day they start from;
     6. **Forms and where to file** (office, online portal, certified email), with links;
     7. **Costs and fees** (stamp duties, fees, the professional's tariff if any), each with source;
     8. **Rules cited**: article/regulation, link, **date consulted**;
     9. **Common mistakes** and how to avoid them;
     10. **Last checked: YYYY-MM-DD** and the sources used.
   - Every rule, number and deadline carries its source. What you do not find is written as
     `[TO CHECK: ...]` (in the user's language, e.g. `[DA VERIFICARE: ...]`,
     `[À VÉRIFIER : ...]`, `[ZU PRÜFEN: ...]`). Never fill gaps from memory.
   - If sources disagree or the procedure differs by place, say so in the model and ask the
     user which case applies.

## 3. Open or link the job
1. Check in `jobs/` whether a job for this client and subject already exists; if so, link
   to it and read its card. Otherwise start the skill `new-job` (it asks where to work and
   makes the backup if needed). If the user only wants to learn the procedure with no client,
   skip the job and work on the model alone.
2. Copy the checklist (section 2 of the model) into `jobs/<job>/CHECKLIST.md`, with the job
   name and the date at the top. In `JOB.md` add the line "Procedure model:
   `knowledge/procedures/<type>.md`" and the deadlines found (they also go in "To do /
   waiting for").
3. Tick items (`- [x]`, with the date) as they are done. Never tick what is not really done.

## 4. Guide, one phase at a time
1. Show the user the whole road first, in 5-8 plain lines (the phases), then take **one
   phase at a time**: say what it is for, what happens in it, what you will do and what
   only they can do (sign, decide, pay, meet the client).
2. Do the technical parts yourself and show the result, not the method:
   - drafts of letters, deeds, appeals, reports in the user's style (`good-examples/`);
   - forms with the skill `fill-form` (missing data is asked, never invented);
   - the list of missing documents and the message to the client with the skill
     `ask-client` (the user sends it);
   - calculations, tables and deadline dates; check the dates against the calendar.
3. At the end of each phase: update `CHECKLIST.md`, say in two lines what is done and
   what comes next, and wait for the user's go-ahead before the next phase.
4. Payments, filings, signatures, submissions on portals and anything sent outside are
   **never done by you**: prepare everything and tell the user exactly what to click or
   sign (rule 1). Client data never goes into websites or external services (rule 5).
5. If the user wants something that conflicts with the sources (a missed deadline, a wrong
   form, a cheaper but invalid route), tell them kindly, with the source, and give the
   alternatives (rule 6).

## 5. Close and keep what was learned
1. Check that `CHECKLIST.md` is complete and update `JOB.md` (status, decisions, where the
   files are).
2. Update `knowledge/procedures/<type>.md` with what the real job taught: steps that
   differed, extra documents, true timing, mistakes found. Set **Last checked** to today.
   The model contains no client data: use made-up names ("client Smith") if an example helps.
   Technical notes only; personal lessons go through `remember`.
3. Update `memory/job-types.md` (+1). If this type has come up for the 2nd or 3rd time
   without a skill, propose `create-skill`, built on this model and the job's documents.
4. Propose `remember` for the 2-5 things worth keeping (always with the user's OK), and
   `archive` for the finished documents.

## Final warning (always, in the user's language)
Everything produced is a **draft**: the procedure was prepared from public sources and the
professional **verifies it** before using it, as they are responsible for the job. End every
phase summary and the final message with a short **To check** list: assumptions, `[TO
CHECK: ...]` points, deadlines to confirm with the authority, rules that may have changed.

## Never
- Never invent a rule, deadline, fee or form: cite it or write `[TO CHECK: ...]`.
- Never delete: move to `_trash/`. Never overwrite the user's files: add `_v2`.
- Never send, file or pay anything on the user's behalf.
- Never hand technical problems back to the user (skill `get-tools`).
