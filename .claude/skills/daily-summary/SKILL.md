---
name: daily-summary
description: Gives a short summary of the day or the week, read from the job cards, the deadlines list, the unprocessed mail and the Learn-From-Here folder - what was done, which jobs are stalled, what we are waiting for and from whom, and the next steps and deadlines in the coming 7 days - then asks which ones to prepare. Use when the user asks for "summary of the day", "what did we do this week", "where are we", "briefing", "what is stuck", or at the start of the day as a briefing - also e.g. "riepilogo della giornata", "a che punto siamo", "cosa è fermo" (Italian), "résumé de la journée", "où en est-on" (French), "Tageszusammenfassung", "wo stehen wir" (German).
---

# Daily summary - the day or the week in one page

A short, honest picture of the work, built **only from what is written** in the office's
files. Talk to the user in their language (`memory/office/owner.md`, `Language:`), plain
words, short sentences, no IT jargon. Never ask them to open or edit anything: you read.

## 1. Decide the period and the "stalled" limit
- "today" / "summary of the day" = today; "yesterday" = the previous working day.
- "this week" = Monday to Friday of the current week; "last week" = Monday to Friday of the
  previous one. Work out the exact dates from today's date and say them in the answer
  ("week 2 to 6 November").
- "Stalled" = a job with no change for more than **N days**. Default **10**. If the user
  says "stuck for 3 weeks", use that number for this answer. If they want it always, propose
  saving it with the skill `remember`.
- At the start of the day, with no period given, offer the **briefing**: yesterday's
  summary in two lines plus parts 3 and 4 below.

## 2. Read the sources (read only, change nothing yet)
1. Every `jobs/*/JOB.md` (skip `jobs/_template/`, `jobs/_archived/`, `jobs/_summaries/`):
   Status, Dates row, "Decisions taken" (with dates), "To do / waiting for", Documents table.
2. `memory/deadlines.md`: rows with status `open`. If the file is missing, rely on the
   cards and say so.
3. `inbox/`, if it exists: mail not yet processed (count and, per message, sender and
   subject only). If the folder does not exist, say nothing about mail.
4. `Learn-From-Here/`: files waiting (other than `README.txt`): count them.
5. The **modification dates** of the files inside each job folder (`documents/`,
   `received/`, the card itself). Get them with a command of the user's system (see
   `CLAUDE.md`, table), never by guessing. A job's "last change" is the most recent of: the
   latest dated decision on the card, and the latest file date.

## 3. Build the four parts
**1) Done** (in the period). From decisions dated in the period and from files created or
changed in the period: "Smith appeal: reply drafted (Tuesday)". One line per job, grouped
by job. If nothing is dated in the period, say "I find nothing recorded for these days".

**2) Stalled jobs.** Open jobs whose last change is older than N days: job, days without
change, what the card says is the next step. Jobs with status closed/archived are left out.

**3) Waiting.** From each card's "To do / waiting for" (and the Decisions): what we are
waiting for, **from whom** (client, authority, supplier; use `memory/contacts/` only to
name them properly) and **since when** (the date written on the card). If the card gives
no date or no name, write `[TO CHECK: since when]` / `[TO CHECK: from whom]` - never guess.

**4) Next steps and deadlines, next 7 days.** From `memory/deadlines.md` and the cards:
all `open` rows from today to today + 7, **ordered by urgency** (overdue first, clearly
marked, then by date). Next to each one, the concrete next step you can take.

## 4. Never invent - fix the cards
If a card has no dates (no decision dates, empty Dates row) you cannot tell whether the job
moves or is stalled: write "card without dates: I cannot say" for that job and propose to
**fix the card** ("shall I add the dates from the files I see?"). Fixing job cards you do
on your own (they are work status, not memory), but only with facts found in the files; the
rest stays `[TO CHECK: ...]`. If a deadline in `deadlines.md` is missing from a card or the
other way round, mention it and align them with the skill `deadlines`.

## 5. The answer
Four short blocks with the headings above, in the user's language, at most about 25 lines
in total; jobs named by client and subject, dates written out ("Friday 13 November"), no
file paths unless asked. Then **always one single question**:
> "Shall I prepare any of these?"
(in the user's language). If the user picks one, open that job's card and continue with the
right skill (`deadlines`, `mail`, `new-job`...).
Mail in `inbox/`: say "3 messages not yet read" and offer to go through them; do not copy
their content into the summary if they hold sensitive data (CLAUDE.md, rule 5).

## 6. Saving a record (optional)
Ask once, only if the summary is a week's or the user seems to want to keep it: "Do you
want me to keep a copy of this summary?" If yes:
- create the folder `jobs/_summaries/` if it does not exist;
- save the answer in `jobs/_summaries/YYYY-MM-DD.md` (today's date). If the file exists,
  add `-2`, never overwrite;
- written in the user's language, same four parts, ending with the "To check" list.
Without a yes, save nothing. These files are work status, so they need no `remember`.

## 7. Privacy
Everything stays on this computer. No web searches, no external services. Client names
appear in the summary because the user is the only reader; sensitive data (health, bank,
ID, judicial) is never written in it: say "a document with personal data arrived" instead.

## To check
End every summary with a short list in the user's language: cards without dates, "since
when" or "from whom" left as `[TO CHECK]`, jobs whose last change was taken from file dates
only, deadlines found in only one of the two places (card or `deadlines.md`).
