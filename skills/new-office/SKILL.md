---
name: new-office
description: Creates a new Claudio office-assistant folder (from the Claudio-Assistant template) in a place the user chooses, then explains how to open it. Use when the user asks to set up, create or install Claudio, an office assistant, an assistant for their office/practice/studio, or says "create my office assistant", "install Claudio", "crea l'assistente", "installa Claudio", "créer l'assistant", "Assistent einrichten".
---

# Create a new Claudio office-assistant folder

The user is probably **not technical**. Talk in their language, plain words, one question at a
time. Do the technical work yourself; never ask them to type commands.

## 1. Find the template
The template is the plugin itself: two levels above this skill's folder.
- Template folder: `${CLAUDE_SKILL_DIR}/../..`
- Check it is right: it must contain `CLAUDE.md`, `memory/office/owner.md` and
  `.claude/skills/setup/SKILL.md`. If not, stop and say the plugin looks damaged
  (suggest reinstalling it).

## 2. Ask where to create it
- Propose a stable place, by system: Windows `C:\Users\<user>\Documents\Claudio-Assistant`,
  macOS `/Users/<user>/Documents/Claudio-Assistant`, Linux `~/Documents/Claudio-Assistant`
  (or the localised Documents folder: `xdg-user-dir DOCUMENTS`). Offer a different name if
  they like (e.g. "Smith-Office").
- Explain in one line: once created, **the folder should not be moved**, because the chat
  history is tied to its location (the memory is inside the folder and is never lost).
- Do not put it on a network share or a synced cloud folder unless they insist.
- If the target already exists: **never overwrite**. Propose another name.

## 3. Copy the template (everything except the plugin's own files)
Exclude: `.git`, `.github`, `.claude-plugin`, `skills` (this plugin skill) — everything else
is the assistant folder.
- **Windows (PowerShell):**
  ```powershell
  robocopy "<template>" "<target>" /E /XD .git .github .claude-plugin skills /NFL /NDL /NJH /NJS
  ```
  robocopy exit codes 0-7 mean success; 8 or more is an error.
- **macOS / Linux:**
  ```sh
  mkdir -p "<target>" && (cd "<template>" && tar cf - --exclude=./.git --exclude=./.github --exclude=./.claude-plugin --exclude=./skills .) | (cd "<target>" && tar xf -)
  ```
- Check the copy: `CLAUDE.md`, `memory/office/owner.md` (still containing `NOT_CONFIGURED`),
  `.claude/skills/` with 10 skills, `.claude/hooks/startup.ps1` and `startup.sh`,
  `docs/MANUAL.*.html`. Get the full path with a command (Windows `Resolve-Path`,
  Mac/Linux `realpath`) and check it exists.

## 4. Tell the user how to open it (in their language, short)
- **Claude Desktop app (Windows, macOS):** open the **Code** tab, choose the new folder as the
  working folder, trust it when asked, pick the **"Auto"** permission mode if available
  (otherwise "Accept edits"), and write "hi". Claudio introduces himself and starts the
  setup interview (15-20 minutes; it also installs the tools it needs).
- **Terminal (Linux or anyone using the CLI):** `cd "<target>"` then `claude`, and write "hi".
  Mode switching: Shift+Tab.
- Give the full path in the format of their system, and the user manual:
  `<target>/docs/MANUAL.<language>.html` (en, it, fr, de).
- Privacy tip in one line: in Claude's settings, turn off the option that lets Anthropic use
  chats to improve its models, because client data will pass through the chats.

Do not start the setup interview here: it runs inside the new folder, where Claudio's own
rules and memory are loaded.
