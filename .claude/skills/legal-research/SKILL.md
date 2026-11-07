---
name: legal-research
description: Researches up-to-date laws, regulations, official guidance, deadlines, fees and procedures from OFFICIAL sources only, and writes a dated research note with links, the text in force and the warning that a professional must verify it. Use when the user asks "what does the law say about", "look up the rule", "is this still in force", "find the deadline for", "search the regulation" — also e.g. "cosa dice la legge", "cerca la normativa", "è ancora in vigore" (Italian), "que dit la loi", "cherche le texte" (French), "was sagt das Gesetz", "such die Vorschrift" (German).
---

# Legal research — official sources, text in force, always dated

Works in any country. Talk to the user in their language (`memory/office/owner.md`,
`Language:`); write the research note in their language too. Never answer a legal question
from memory: always open the official text first.

## 1. Understand the question and the country
1. Restate the legal question in one sentence (what rule, which situation, which date it
   must apply to: today, or a past date for an old case).
2. Find the country (and region/municipality if relevant) in `memory/office/owner.md`. Read
   `memory/profession.md`: the profession's usual sources are listed there. If the question
   concerns another country or the EU, say so and use that country's sources.
3. **Privacy (rule 5):** type only the legal question into searches, never client names or
   case data. Use "late filing penalty for a tax return", not "Mr Smith's return".

## 2. Where to look, in this order
1. **Official law databases of the country.** Examples (not exhaustive):
   - Italy: Normattiva, Gazzetta Ufficiale, Agenzia delle Entrate, INPS.
   - France: Légifrance, service-public.fr.
   - Germany: gesetze-im-internet.de, Bundesanzeiger.
   - EU: EUR-Lex, Official Journal of the European Union.
   - UK: legislation.gov.uk.
2. **Ministries, agencies, courts, regions and municipalities** (circulars, guidance,
   forms, fee tables, case law published by the court itself).
3. **Professional bodies** (bar, chamber, order, association): guidance and model texts.
4. **Specialised publishers, only last**, and always labelled "secondary source" in the note.

**Never use:** forums, generic blogs, AI summaries, unofficial copies of laws, social media.
If only an unofficial page is found, use it only to learn the name of the rule, then go
and find the official text.

## 3. How to search
- Use WebSearch/WebFetch; if a site blocks them, use Chromium (CLAUDE.md, "Browsing the
  internet"). If a tool is missing, get it yourself (skill `get-tools`).
- Check the address belongs to the official body (domain, publisher name) before relying
  on a page.
- Open the actual text. Never cite an article, number or date you have not seen on the
  official page.

## 4. Verify it is in force
1. Use the **consolidated version** (text as amended) and note the date of the last
   amendment shown by the database, plus the date the version is valid from.
2. Look for **later changes**: search "<rule name> amended / repealed / reform", and look at
   the news section of the competent agency's site. Note anything not yet in the
   consolidated text.
3. Note **transitional rules** (entry into force, old cases, deferred dates).
4. If the case is old, find the version that applied **at the date of the facts**.
5. For fees, rates and thresholds, find the table of the current year and note the year.

## 5. Write the research note
Save `knowledge/research/<YYYY-MM-DD>-<topic>.md` (create the folder if missing; never
overwrite: if the topic exists, add a new dated file and mention the old one). In the
user's language, with:
- **Question** (one sentence, no client data).
- **Short answer** in plain words, 3-6 lines.
- **Relevant text**: exact article/paragraph reference and a short quote, as found.
- **Sources**: for each one title, link, publisher, date consulted, version in force
  (and "secondary source" where it applies).
- **Not settled or contradictory**: gaps, conflicting sources, interpretations that differ,
  points a professional must decide.
- **Deadlines found**: list them and add them with the skill `deadlines` (`memory/deadlines.md`
  is work status: no OK needed, but the source and read date go in the row).
- Fixed last line, translated into the user's language: **"Research prepared by an AI
  assistant on <date>: to be verified by a professional before use."**

If the official text is a PDF, save it in `knowledge/` with the source and the date in the
file name or in a short note beside it, and link it from the research note.

## 6. Tell the user
1. Give the short answer, the main link, the date of the version in force and the closing
   warning. Keep it brief; the note has the detail.
2. **If the law has changed something the user did before** (a form, a deadline, a rate,
   a procedure), say it clearly and early (CLAUDE.md, rule 6), even if they did not ask.
3. If you are not sure, say so: write `[TO CHECK: ...]` rather than guess.

## 7. Memory
Propose adding useful official sources to the sources section of `memory/profession.md`,
and save only after the user's OK (skill `remember`). Never copy client or sensitive data
into memory.

## To check (list for the user, in their language)
- [ ] The text quoted is the version in force on the date that matters for the case.
- [ ] No later amendment, repeal or pending reform changes the answer.
- [ ] Deadlines, fees and rates are those of the right year.
- [ ] The points listed as "not settled" have been decided by a professional.
- [ ] The note was verified by a professional before being used with a client.
