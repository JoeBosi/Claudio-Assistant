---
name: fill-form
description: Fills in a form (PDF or Word) with the data already in memory (owner profile, office data, clients, the job card and its documents) and saves a draft copy with a "To check" list showing the source of every value. Handles PDFs with form fields, Word forms with blanks or tables, and flat or scanned PDFs (text overlaid on a preview the user approves). Missing data is asked, never invented; checkboxes and signatures are left to the user. Use when the user says "fill in this form", "compile the form", "complete the PDF" — also e.g. "compila il modulo", "riempi il modello" (Italian), "remplis le formulaire" (French), "füll das Formular aus" (German).
---

# Fill in a form (PDF or Word)

Sources of data, in this order of trust: the job's `JOB.md` and `documents/` / `received/`
(most reliable, they are the real papers), then `memory/office/owner.md` (the user),
`memory/office/office.md` (the office), `memory/contacts/clients.md` (clients).
Talk to the user in their language (`Language:` in `memory/office/owner.md`).

## 1. Look at the form
1. Find the file (job folder, usually `received/`). Never work on the original: all work
   happens on a copy. If the job is unclear, ask which one (skill `new-job` if none exists).
2. Read `memory/office/tools.md` to see which libraries are already known to work.
   If `pypdf`, `python-docx`, `pdf2image` (with Poppler) or `reportlab` is missing,
   get it with skill `get-tools`: never ask the user to install anything.
3. Decide the case: PDF with form fields (A), Word `.docx` (B), flat or scanned PDF (C).
   A PDF that is **XFA (dynamic), encrypted or digitally signed** is treated as case C on a
   copy (filling it directly would fail or break the signature): tell the user.
   An old `.doc` file: convert it to `.docx` with LibreOffice (get-tools) and work on the copy.

## 2. Build the list of fields and values
1. Write the list of every field of the form (name or label as printed, page).
2. For each field find the value in the sources above. Write next to it **where it comes
   from** (file and line, or document and page).
3. **Missing data is asked, never invented**, and never guessed from a similar name
   (two clients called alike are two different people). Ask the user all missing items in
   one short list, then continue. If they do not know, write `[TO CHECK: ...]`
   (in their language) in the field or leave it empty, and list it.
4. **Double-check against the source document** every tax code, VAT number, date, amount,
   cadastral or registry number, IBAN: re-read the source and compare character by
   character. Dates in the format the form asks for.
5. **Sensitive data** (health, ID documents, bank details, judicial data): fill it only
   if the form really requires it, and flag it to the user in the "To check" list.
   Never copy it into memory.
6. **Checkboxes, choices between options (yes/no), signatures, initials and stamps are left
   to the user.** You may suggest the likely choice in the "To check" list, but you do not
   tick it. Claudio never signs, and never writes the date of signing.

## Case A: PDF with form fields
1. With `pypdf` list the fields (`PdfReader(...).get_fields()`): name, type, current value,
   options for choice fields. Field names are often cryptic ("Text1", "Campo_12"): when
   the meaning is unclear, render the page to an image (case C, step 1) and look at where
   the field sits, or read the tooltip text of the field.
2. Map each field to its value (section 2) and fill the text fields: `PdfWriter(clone_from=
   reader)`, then `writer.update_page_form_field_values(page, values)` for each page and
   `writer.set_need_appearances_writer(True)` so the values are visible in every program.
   If step 4 shows the text is not visible, switch to case C on the same copy.
3. Save as `<name>-filled.pdf` **next to the original**, in the same job folder. If that name
   already exists use `-filled-2`. The original is never overwritten.
4. Re-open the new file, read the field values back and compare with the list; render a page
   to an image and look at it to see that the text is visible and not cut off.

## Case B: Word (.docx) form
1. With `python-docx` look for what needs filling: underscores (`_____`), dots (`.....`),
   placeholders (`[name]`, `{{date}}`, `<...>`), text after a label ("Name:"), content
   controls, and **tables with empty cells** next to a label cell. Do not forget headers,
   footers and text boxes: `python-docx` does not reach text boxes and content controls
   through its normal API, so edit their XML (the document's `element` tree, lxml) or, if
   that fails, get another library with `get-tools`.
2. List what you found with the proposed value for each (section 2).
3. Write the values keeping the original formatting (font, size, bold: write into the existing
   runs, do not rebuild the paragraph) and the layout of the tables.
4. Save as `<name>-filled.docx` next to the original (original untouched). Convert a copy to PDF
   with LibreOffice and look at the page to check that nothing moved or overflowed.

## Case C: flat or scanned PDF (no fields)
1. Render each page to an image (`pdf2image` + Poppler) at about 150 dpi. If the PDF is a scan
   without text, read it with Tesseract (get-tools).
2. Find where each field is: the label, the line or box next to it. Note the position in PDF
   coordinates (use the real page size, not the pixels of the image).
3. Make a **preview image**: the form with the proposed values written in place and a
   **number** next to each field. Show it to the user and ask: "Is everything in the right
   place?". Wait for the OK or the corrections, and repeat until it is right.
4. Only then write the final text on a transparent page with `reportlab` and merge it onto
   the original pages with `pypdf`. Save as `<name>-filled.pdf` next to the original.
5. **If the layout is uncertain** (blurred scan, crowded boxes, rotated pages): do not force it.
   Offer the user the numbered list of values to write by hand instead, in the order of the form,
   ready to read and copy.

## 3. Deliver: draft and "To check" list
1. Tell the user in two lines: which file you created and its full path in their system's
   format (see CLAUDE.md, "Operating system"), after checking that it exists.
2. Always attach a **"To check"** list in their language, one line per value:
   `field | value | source (memory file or document)`. Then separate lists:
   - fields left empty or marked `[TO CHECK: ...]` (missing data);
   - sensitive data used;
   - checkboxes, signatures and dates to complete by the user;
   - doubts (a value taken from an old document, two possible sources that differ).
3. Say clearly that the form is a **draft**: the user reads it, completes it and signs.
   Never send it, upload it to a website or submit it anywhere without their explicit OK.
4. Update `JOB.md`: the form filled, the file name and the date.
5. Privacy: client data is never typed into websites or external services, and never
   leaves the computer (rule 5 of `CLAUDE.md`). Use only local libraries.

## 4. Afterwards
1. Write in `memory/office/tools.md` which library worked for which case (e.g. "PDF with
   fields: pypdf; flat PDF: pdf2image + reportlab + pypdf"), with the date. This is a technical
   inventory: no OK needed.
2. If the user corrected a value or a rule ("this authority wants the date written
   like this"), propose to keep it with skill `remember`. If the same form comes back a third
   time, offer skill `create-skill` or to keep an empty model of it with its field map.
3. Never delete anything: wrong drafts go to `_trash/`.
