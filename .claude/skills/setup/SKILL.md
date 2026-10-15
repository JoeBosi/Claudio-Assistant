---
name: setup
description: First setup of the assistant — a guided interview with the user (who they are, their language, their profession, the office, where they keep their files, their programs, their preferences) and an initial study of their profession. Use at the first start (when memory/office/owner.md contains NOT_CONFIGURED) or when the user asks to redo or update the setup, e.g. "setup", "configure", "let's start" — also "configurazione", "configura" (Italian), "configuration", "configurer" (French), "Einrichtung", "einrichten" (German).
---

# Setup — the questions at the first start

Goal: in a 15-20 minute chat, fill in `memory/office/owner.md`, `memory/office/office.md`,
`memory/decisions/preferences.md` and prepare `memory/profession.md`. Friendly, simple tone.
Talk to the user **in the language they write in** from the very first message.

## 0. First of all (on your own, without telling the user)
1. **Operating system**: detect it from the environment you run in (Windows, macOS or
   Linux) and write it in `memory/office/tools.md` on the `operating_system:` line.
2. **Startup script**: if `.claude/settings.local.json` does not exist, create it with the
   right block for the system (if it already exists, add only the `hooks` part, without
   removing anything else). It takes effect from the next chat.
   - Windows:
     ```json
     { "hooks": { "SessionStart": [ { "hooks": [ { "type": "command",
       "command": "powershell.exe",
       "args": ["-NoProfile", "-ExecutionPolicy", "Bypass", "-File",
                "${CLAUDE_PROJECT_DIR}/.claude/hooks/startup.ps1"] } ] } ] } }
     ```
   - macOS and Linux:
     ```json
     { "hooks": { "SessionStart": [ { "hooks": [ { "type": "command",
       "command": "sh",
       "args": ["${CLAUDE_PROJECT_DIR}/.claude/hooks/startup.sh"] } ] } ] } }
     ```
   Then test it once by hand (`powershell -NoProfile -ExecutionPolicy Bypass -File
   .claude\hooks\startup.ps1` or `sh .claude/hooks/startup.sh`): it must print the date.
   If it does not work, note it in `lessons.md`: you do the checks yourself at every chat
   anyway (see `CLAUDE.md`, "At the start of every chat").

## Interview rules
- Introduce yourself in 3 lines: who you are, that you will help them with their work, that
  you will now ask a few questions to get to know them (they can skip any and answer later).
- **One block at a time**, at most 3 questions per message. They can answer by voice
  (dictation: Windows `Win`+`H`; Mac press `Fn` twice or 🎤; Linux if their desktop offers
  it) and in any order: you put things in order.
- What they don't know or don't want to say: leave it empty, don't insist.
- Write nothing until you have shown the summary (step 9).

## The blocks
1. **Who you are**: full name; **language** they prefer you to use (usually the one they
   are writing in: just confirm it) and the language of their documents if different;
   **what profession** they practise (and specialisations); professional body / order /
   chamber / register and membership number, if any; certified email (where it exists),
   email, phone, office address. (Tax code and VAT number: ask whether they want you to
   keep them at hand — they stay only on this computer.)
2. **Qualifications and obligations**: special qualifications, mandatory courses,
   continuing-education credits, professional insurance, renewals → note the **deadlines**.
3. **How comfortable they are with computers**: "do you use the computer only for Word and
   email, or are you fine with more technical things too?" → adapt how you talk (write it
   in `owner.md`).
4. **The office**: do they work alone or with others (who does what)?
5. **Where they keep their files**: office server (e.g. `\\SERVER\Jobs` on Windows,
   `smb://SERVER/Jobs` on Mac/Linux), a folder on the computer, cloud (OneDrive, iCloud,
   Google Drive, Dropbox)? How are the folders organised (by year? by client?) and how do
   they name files?
   → With their OK, **try to read** the list of folders (read only: Windows
   `Get-ChildItem`, Mac/Linux `ls`) and describe what you see, to confirm. If it cannot be
   reached, note it.
6. **Programs**: programs specific to the profession (management software, technical
   software, databases), Word, Pages or LibreOffice, digital signature, certified email,
   public portals they use.
   **Document format**: what format do they want drafts in (usually Word .docx)?
   → You install the tools to produce it yourself (step 10). They don't need to know
   anything about programs or commands.
7. **The work**: what kind of clients? which jobs do they do most often? which take up the
   most time or do they like least? (No need for a complete list: you learn it over time
   from the `Learn-From-Here` inbox.)
8. **Preferences**: how do they want documents (tone, length, things they never want to
   see)? how do they prefer you to talk to them?

## 9. Summary and saving
- Show a short summary, divided by blocks. Ask "is this right?".
- After the OK: fill in the memory files (in the user's language), write the language in
  `owner.md` (`- Language:` line, e.g. `Italian (it)`), **remove the `NOT_CONFIGURED`
  line** from `owner.md`, and write `last_tidy: <today's date, YYYY-MM-DD>` in `memory/_maintenance.md`.
- Clients, suppliers or offices mentioned during the interview → propose them for
  `memory/contacts/` (with OK).

## 10. Basic toolkit (on your own)
Start `get-tools`, section "Basic toolkit": install and test the tools for Word, Excel,
PDF, scans, internet, then the official document skills. Add the tools typical of their
profession if needed (e.g. CAD for technical professions, spreadsheets for accountants).
Warn them first in two simple lines: they may have to click "Yes" on a system window (or
type the computer's password), and meanwhile they can grab a coffee. At the end write
`base_tools_status: OK (<date>)` in `memory/office/tools.md`, or the list of what did not
work.

## 11. Study the profession (on your own, then report)
Research official sources (websites of the national professional body / order / chamber,
official law databases of their country, ministries, regional or local authorities, trade
associations) and write `memory/profession.md`:
- **the typical documents and jobs** of the profession (list, one line each);
- **the main laws and rules** that govern them (with link and date consulted);
- **the official sources** to use (databases, price lists, forms, portals);
- the professional's **recurring obligations and deadlines**.
Then fill `memory/job-types.md` with the typical jobs ("Times seen" column at 0) and
download into `knowledge/` the most useful free sources, citing source and date in
`knowledge/README.md`.
Report to the user in 5 lines and ask: "which of these do you actually do? are there
others?". Correct the list based on their answers. Also look for **ready-made skills** for
their profession (`npx -y skills@1.7.0 find <profession in English>`) and propose the best
ones (checked with `get-tools`).

## 12. Two conveniences (ask first)
- **Desktop shortcut to the `Learn-From-Here` inbox**. With their OK, you create it:
  - Windows (PowerShell):
    ```powershell
    $desk = [Environment]::GetFolderPath('Desktop')
    $ws = New-Object -ComObject WScript.Shell
    $lnk = $ws.CreateShortcut("$desk\Learn-From-Here (Claude).lnk")
    $lnk.TargetPath = (Resolve-Path '.\Learn-From-Here').Path
    $lnk.Save()
    ```
  - macOS: `ln -s "$(pwd)/Learn-From-Here" "$HOME/Desktop/Learn-From-Here (Claude)"`
  - Linux: the desktop folder is found with `xdg-user-dir DESKTOP` (its name depends on the
    language, e.g. `~/Desktop`, `~/Scrivania`, `~/Bureau`, `~/Schreibtisch`):
    `ln -s "$(pwd)/Learn-From-Here" "$(xdg-user-dir DESKTOP)/Learn-From-Here (Claude)"`
  You may name the shortcut in the user's language (e.g. "Learn-From-Here (Claude)" plus a
  translation); the folder itself keeps its name. Then check that the shortcut opens
  (`Test-Path` / `test -e`).
- **Memory in other chats too**: if they also open Claude from other folders, you can add to
  their user `CLAUDE.md` (Windows `%USERPROFILE%\.claude\CLAUDE.md`, Mac/Linux
  `~/.claude/CLAUDE.md`) a line `@<path of this folder>/memory/INDEX.md` and one with
  `.../memory/office/owner.md`. If they say yes, you do it. Explain that it is usually not
  needed: it is enough to always open this folder.

## 13. Privacy (always, in two lines)
- Suggest checking in Claude → Settings → Privacy the option that allows Anthropic to use
  chats to improve its models, and **turning it off**, because client data will pass
  through the chats.
- Where the law requires it, remind them to **inform clients** that they use AI tools
  (e.g. in Italy Law 132/2025 for intellectual professions; check the rules of their
  country and professional body): offer to prepare later a standard paragraph to put in
  their engagement letters.

## 14. Closing
- Explain in 4-5 lines how to work from now on (basically the content of `/help`).
- Suggest putting 2-3 successful jobs in the `Learn-From-Here` inbox right away and going
  through them together with `learn-from-here`: it is the best way to show them how it
  works.
