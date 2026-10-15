---
name: help
description: Explains to the user, in plain words, what they can ask the assistant and how it works. Use when the user types /help or asks things like "what can you do?", "how does this work?", "I don't remember how to…" — also in their own language, e.g. "aiuto", "cosa sai fare?", "come funziona?" (Italian), "aide", "que sais-tu faire ?" (French), "Hilfe", "was kannst du?" (German).
---

# Help — what the user can ask

Answer briefly and practically, **in the user's language**, with this content (adapt it: if
there are new skills in `.claude/skills/`, add them; if a job is open, mention it):

---
**Just talk to me normally**: no commands needed. For example:
- "New job for client Smith: …"
- "Prepare a draft of …" · "Summarise this document for me" · "Write the email to …"
- "I've put some work in the inbox, have a look"
- "Remember that client Smith always wants the quote first"
- "Archive the job on the server"

**The Learn-From-Here inbox** (on your desktop): drop in work that turned out well, with a
note of yours if you like. I study it, keep it as a model and learn how you work.

**I prepare, you check and sign.** Every draft ends with a list of things to check. I don't
invent data: numbers, prices and laws come from sources, and I cite them.

**Shortcuts** (optional): `/new-job` · `/learn-from-here` · `/remember` · `/archive`
· `/tidy-memory` · `/create-skill` · `/forget` · `/get-tools` · `/setup`

**Full manual**: open the file `docs/MANUAL.<language>.html` in the Claudio-Assistant folder
(double-click it). Give the full path in the format of the user's system, checked.

**Important**: always open Claude in this folder (Claudio-Assistant): on Windows and macOS in
the **Code** tab of the Claude app; on Linux with Claude Code in the terminal (or the VS Code
extension). Normal chats (the Chat tab) cannot see the memory or your jobs.
---
