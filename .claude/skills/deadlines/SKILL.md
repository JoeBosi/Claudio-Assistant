---
name: deadlines
description: Keeps the list of deadlines and the agenda in memory/deadlines.md, collecting them from the job cards, the owner's file and the profession notes; answers "what is due this week / this month / for client X", adds a deadline the user mentions and marks done ones. Use when the user asks "what is due this week", "deadlines", "remind me", "agenda", or tells you a date to keep in mind — also e.g. "cosa scade", "scadenze", "ricordami", "agenda" (Italian), "qu'est-ce qui arrive à échéance", "échéances", "rappelle-moi" (French), "Fristen", "was ist fällig", "erinnere mich" (German).
---

# Deadlines — one list, always up to date

All deadlines live in **one file**: `memory/deadlines.md`. The startup script
(`startup.sh` on Mac/Linux, `startup.ps1` on Windows, created from `.claude/hooks/startup-scripts.md`) reads it at
every start and warns you when a row falls **within 7 days**. So the file format must never
change. Talk to the user in their language (`memory/office/owner.md`, `Language:`); write the
file in their language too.

## 1. The file format (stable, do not change it)
```
# Deadlines

(a short intro paragraph, as shipped: keep it)

| Date | What | Job or source | Status |
|---|---|---|---|
| 2026-11-20 | Reply to the tax office | 2026-Smith-Appeal | open |
| 2026-12-31 | Professional training credits | owner | open |

## Archive
- 2026-10-01 Old deadline, superseded (2026-Smith-Appeal)
```
- Header line `# Deadlines` (translate the word if the user's language is not English, but keep
  it the first line, starting with `# `).
- One row per line, **date first**, written `YYYY-MM-DD`, then what, then the job folder name
  or the source (`owner`, `profession`, `contacts`, `user`), then the status.
- Status: **always exactly** `open` or `done`, in every language (the startup script looks for
  the word `done`); translate it only when you talk to the user. Never use the `|` character
  inside a cell.
- Rows sorted by date, oldest first. Never put two deadlines on one row; never leave a date
  out (no date → write `[TO CHECK: date]` in your answer and do not add the row).
- If the file does not exist, create it with this format.

## 2. Collecting deadlines (rebuild or refresh)
Do it when the user asks for deadlines, at the start of a week, and after the tidy-up. Read:
1. every `jobs/*/JOB.md`: the **Dates** row (deadline) and the **To do / waiting for**
   section (anything with a date); skip `jobs/_template/`;
2. `memory/office/owner.md`: training credits, insurance expiry, membership renewals;
3. `memory/profession.md`: recurring obligations (yearly filings, periodic renewals);
4. `memory/contacts/*`: appointments or promised dates with clients, suppliers, offices;
5. dates found in emails (skill `mail`) and transcripts (skill `transcribe`), once they are
   written in the job card.
For the **Dates** row of a card, the "What" text is the job's subject (first line of the card),
e.g. "Tax return 2025, filing"; for "To do" lines, the text of the line.

Then:
- add rows that are missing, update rows whose date changed, **never delete** a row: a
  finished deadline gets status `done`; a row that is wrong or obsolete is moved to the
  `## Archive` section at the bottom of the file as a plain list line (`- date text (job)`),
  **not** as a table row, so the startup script ignores it;
- keep the job column as the exact job folder name so the user can find it;
- one deadline, one row: if a job card and `profession.md` mention the same date, keep one.

## 3. Rules on what may be written
- A deadline taken from **a job card** or **said by the user** is written straight into
  `memory/deadlines.md` without asking: it is work status, like the job cards (no OK needed).
- A **legal or official deadline** found on the web (tax, court, authority) must carry its
  **source and the date you read it**: put them in the "What" cell, e.g. `Tax return filing
  (source: official portal, read 2026-11-07)`. Without a source do not write it: put
  `[TO CHECK: deadline and source]` in your answer to the user instead.
- Never invent a date. If the user says "next Friday", work out the exact date from today's
  date and confirm it ("Friday 2026-11-13, correct?") when there is any doubt.
- Privacy: no sensitive data in the "What" cell (no health, ID, bank or judicial details);
  write "Reply to the tax office", not the details. No web searches with client names.

## 4. Answering questions
1. Update the file first (section 2), then read it.
2. Filter by the question:
   - "this week": from today to the coming Sunday; if today is Saturday or Sunday, or fewer
     than 3 days are left, use the **next 7 days** and say so; "this month": to the end of
     the month;
   - "for client X": rows whose job folder or text contains X;
   - overdue: past dates still `open`, shown **first** and clearly marked.
3. Answer short, by date, in the user's language, e.g.:
   > This week: Tuesday 10, reply to the tax office (Smith appeal); Friday 13, send the
   > quote to Jones Ltd. Overdue: none.
4. Offer the next step: open the job, prepare the draft, or move the date.

## 5. Adding, moving and closing
- "Remind me on 20 November to call the bank" → add the row (`user` as source or the job
  folder), then tell the user in one line that it is saved and that you will warn them in the
  7 days before.
- "Postponed to 5 December" → change the date in the row and note it in the job's `JOB.md`
  (Dates row and "To do / waiting for").
- "Done" → status `done`; also tick it off in the job card.

## 6. When to update the job cards
Whenever a date appears in a conversation, a document or an email: put it in the job's
`JOB.md` (Dates row or "To do / waiting for") **and** in `memory/deadlines.md`. At the end of
each job: set the deadline rows of that job to `done`. Job cards stay the source of truth for
the job; `deadlines.md` is the summary.

## 7. Weekly agenda (propose it)
On the first start of the week (Monday), or when the user says "agenda", offer a short
view: the week day by day, then what falls in the following 7 days, then overdue items.
Ask once whether they want it every Monday; if yes, propose to save the preference with the
skill `remember`.

## To check
Finish every answer or agenda with a short list in the user's language: dates worked out from
words ("next Friday") to confirm, deadlines with missing or doubtful sources, rows you could
not date, and jobs whose card has no deadline yet.
