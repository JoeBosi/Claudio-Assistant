---
name: forget
description: Finds all the data the office holds about a person or a company (memory, jobs, examples, knowledge) and, if the user decides so, removes or anonymises it. Use when the user says "forget X", "delete X's data", "what data do we have on X", or when a client exercises their privacy rights — also e.g. "dimentica X", "cancella i dati di X" (Italian), "oublie X", "supprime les données de X" (French), "vergiss X", "lösche die Daten von X" (German).
---

# Forget — finding and removing a person's data

## 1. Search everything
Ask the user for the name and, if they have them, other references (company name, tax
code/VAT number, email, address). Search **all folders**: `memory/` (including
`_history/`), `jobs/` (including `_archived/` and `_backup/`), `good-examples/`,
`Learn-From-Here/`, `knowledge/`, `_trash/`. Do not search for the person on the internet.
For Word/PDF documents use the tools listed in `memory/office/tools.md`.

## 2. Report
A short list: where the person appears, in what kind of document, which data (name,
contact details, sensitive data…). Remind the user in one line that **some documents must
be kept by law** (tax documents, contracts, filed deeds: it depends on the profession and
the country): those are not touched. Data is removed from memory, examples and working
copies.

## 3. Remove only what the user approves
- **memory**: delete the entries (by rewriting the file);
- **good examples**: replace the data with placeholders (`[CLIENT]`, `[COMPANY_A]`) in an
  anonymised copy, and move the original to `_trash/`;
- **copies in `memory/_history/`**: there too;
- whole files to remove: into `_trash/`, and tell the user to empty it.
Do not touch anything on the office server or cloud: if needed, tell the user.

## 4. Record
Add a line to `memory/decisions/privacy.md`, section "Forget requests": date, who (initials
only), what was removed. No data about the person in that line.
