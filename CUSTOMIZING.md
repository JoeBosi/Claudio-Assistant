# Customizing Claudio-Assistant (for whoever prepares the folder)

This page is for the person who prepares the assistant for someone else. The end user does
not need it.

Claudio-Assistant is a **generic template**: a folder for Claude Code (Claude Desktop app,
Code tab, on Windows and macOS; Claude Code CLI or VS Code extension on Linux) that learns the
work of any professional. It derives from a real assistant built for an Italian surveyor's
office in October 2026, from which all personal data and trade-specific parts were removed.

## What it does on its own, with no customization

- At the first start it interviews the user (including about their profession) and installs
  the programs it needs.
- It studies the profession on official sources and prepares `memory/profession.md`,
  `memory/job-types.md` and the first sources in `knowledge/`.
- It learns from the work dropped into `Learn-From-Here/` and creates skills for repeated jobs.

## If you want to prepare it in advance for a profession

1. Rename the folder (e.g. `Accountant-Claudio`) **before the first start**, and update the
   name in the manuals in `docs/` (`MANUAL.<language>.html`) and in
   `GETTING-STARTED.<language>.txt`.
2. Put the official sources of the profession in `knowledge/` and describe them in
   `knowledge/README.md`.
3. Fill in `memory/profession.md` and the table in `memory/job-types.md`. Write them in the
   user's language: memory is their notebook.
4. If you already know a typical job, create its skill in `.claude/skills/<name>/SKILL.md`
   (see the `create-skill` skill for the structure) and add it to the skills table in
   `CLAUDE.md`. If you change skills or rules, update the manuals in `docs/` too.
5. The user's example work goes into `Learn-From-Here/`: Claudio studies it at the first start.
6. **Do not put personal data** in the folder before handing it over, except the user's own
   work.

## Things to know

- The Anthropic `docx`, `pdf`, `xlsx` and `pptx` skills have a licence that **does not allow
  copying and redistributing them**: do not put them in the folder. The assistant installs
  them (or free alternatives) on its own, through the `get-tools` skill.
- The "auto" and "bypassPermissions" permission modes cannot be set from the project's
  settings file: the user chooses "Auto" in the app (see `GETTING-STARTED.<language>.txt`).
- The startup scripts read some markers exactly: `NOT_CONFIGURED` in `memory/office/owner.md`,
  `base_tools_status: TO_INSTALL` in `memory/office/tools.md`, `last_tidy:` and
  `interval_days:` in `memory/_maintenance.md`. Do not translate or rename them.
- `.claude/hooks/startup.ps1` (Windows) must stay **ASCII with Windows line endings (CRLF)**.
  `startup.sh` (macOS/Linux) must keep Unix line endings (LF). Keep the two scripts aligned:
  a change in one goes into the other.
- `.claude/settings.local.json` is created on the user's computer at the first start (skill
  `setup`, step 0) for their operating system. Do not ship it.
- **Tested:** a real installation with the Claude Desktop app (October 2026) worked end to
  end; `startup.sh` was also tested on Linux and `startup.ps1` with PowerShell 7. Still, watch
  the first session on a new system or app version.
- Problem already seen: Claude tends to write "Linux-style" paths on Windows. There is a rule
  against it in `CLAUDE.md`, but keep an eye on it in the first sessions.
- Folder and skill names stay in English so the package works everywhere. Claudio talks to
  the user in their language and explains the folder names the first time.

## The plugin wrapper
The repository is also a Claude Code plugin and a one-plugin marketplace:
- `.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json`: the manifests
  (check them with `claude plugin validate .`).
- `skills/new-office/SKILL.md`: the plugin's only skill. It copies the repository (the
  template) to the folder the user chooses, leaving out `.git`, `.github`, `.claude-plugin`
  and `skills/`.
These files are not part of the assistant folder: Claude Code ignores a root-level `skills/`
directory in a project, and `new-office` never copies them. If you customize the template,
bump `version` in `plugin.json` so installed copies get the update.
