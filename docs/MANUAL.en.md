# Claudio-Assistant

*This manual is also generated as an HTML page in this folder at the first start, for easy reading in a browser.*

Your office assistant, who learns your work day by day. How to use it, and how it works inside.

## 1 · User manual

The things you will use every day. These are all you need.

1. [How to open it](#open)
2. [How to talk to him](#talk)
3. [Starting a new job](#new)
4. [Giving him files, photos, documents](#files)
5. [Drafts: you check and sign](#drafts)
6. [The Learn-From-Here inbox](#inbox)
7. [Making him remember things](#remember)
8. [Archiving](#archive)
9. [Permission windows](#permission)
10. [Shortcuts with the / key](#commands)
11. [4 things not to do](#dont)

### How to open it

**On Windows and Mac**:

1. Open the **Claude** app.
2. At the top choose the **Code** tab. Normal chats (the **Chat** tab) do **not** see the memory or your jobs.
3. Check that the selected folder is **Claudio-Assistant**.
4. Write. For a new job open a **new chat**: the memory stays anyway.

**On Linux** there is no Claude app. You use **Claude Code** in one of two ways:

- in **VS Code** (a free program): open the **Claudio-Assistant** folder, then click the Claude icon;
- in the **Terminal**: open the **Claudio-Assistant** folder in the Terminal and type `claude`.

Whoever set up your computer can make you a shortcut that does this with one click.

> The first time Claudio introduces himself and asks you a few questions to get to know you (15-20 minutes). Then he installs on his own the programs he needs.

### How to talk to him

The way you would talk to a good office colleague. No commands, no technical words.

> "New job for the client Smith Ltd: …"

> "Draft the report for me. Use last year's one as a model."

> "Prepare the minutes of this morning's meeting: Smith and Brown were there, we decided…"

> "The client sent me these documents, check that everything is there."

**Claudio speaks your language.** At the first start he asks which language you prefer; until then he answers in the language you write in. The folder names stay in English (they are the real names on the disk), but he always explains them.

**You can also dictate** instead of typing:

- **Windows**: press `Win` + `H` and speak;
- **Mac**: press `Fn` twice (or the microphone key) and speak. If nothing happens, turn it on in System Settings → Keyboard → Dictation;
- **Linux**: it depends on your desktop. Ask Claudio: "set up dictation for me".

Claudio understands sentences in a muddle too. The more context you give him (where, what, who, when), the better he works. If something is missing, he asks.

**He does not always agree with you**: if a request is wrong (a law, a calculation, a procedure) he tells you, explains why and proposes alternatives. Then you decide.

**He goes on the internet by himself** (with the Chromium browser) for laws, public portals and technical information. He never types your clients' data into websites.

### Starting a new job

Just say "new job" with the client and what has to be done. He:

- creates a subfolder for that job inside `jobs` (the folder of your jobs), with a **job card** that sums up everything (who, what, where we are);
- checks whether he already knows the client, suppliers and offices involved;
- proposes where to start.

**He asks you where to work**: in his standard folder or in a folder of yours (for example the one where you already put the client's documents). If you choose yours, **he first makes a backup copy** and does not touch the documents already there.

The next times, just say "let's pick up the Smith job": he reads the card and knows where you left off.

### Giving him files, photos, documents

- **Drag** the files (PDF, Word, Excel, photos, scans) into the chat, or
- put them in the job's folder, in `received` (material received), and tell him.

He really looks at **photos and scans**: he can read documents photographed with a phone, too.

If he cannot read a format yet, he gets the program he needs by himself. **You don't have to convert anything.**

### Drafts: you check and sign

Claudio prepares, **you check and sign**. You remain responsible, and several laws require it (for example the EU AI Act and, in Italy, Law 132/2025 for intellectual professions).

- Every piece of data carries its source: the law with its article, the document or the official website it comes from.
- At the end of every draft you find the **"To check"** list: assumptions made, missing data, doubts. Start from there.
- If you see `[TO CHECK: …]` in the text, it is a point where he had no reliable source.

> If you find a mistake, tell him: "this is wrong, the deadline is 60 days, not 30". He fixes it and asks whether to remember it for next time.

### The Learn-From-Here inbox

On your desktop you have the shortcut **Learn-From-Here (Claude)**. Put in it the work that came out well and that you want him to learn to redo:

- just the finished document (PDF, Word, Excel…), or
- the document plus a note of yours, even two lines ("look at how I wrote the conclusions"), or
- a whole folder with all the files of a job.

Then tell him ""I put some work in the inbox"". If you forget, he notices by himself at the next chat.

He studies it, tells you what he understood, moves it to the **good examples** (the `good-examples` folder) and the inbox is empty again. He deletes nothing. When he sees the same type of job 2-3 times, he proposes learning it as a **fixed skill**.

### Making him remember things

> "Remember that the client Smith always wants the quote before we start."

> "From now on I want dates written out in full."

At the end of a job he is the one who proposes what to remember, in a numbered list. Answer "yes, all of them" or "drop number 2". **He saves nothing without your OK.**

Once a month he proposes to **tidy up the memory**: he merges duplicates, removes old things, reminds you of deadlines (compulsory training, insurance, renewals).

### Archiving

> "Archive the Smith job."

He copies the documents to your archive (office server, a folder or the cloud), into the folders and with the names you usually use, and notes where he put them. **He only copies**: in the archive he never deletes or overwrites anything.

If you prefer to move the files by hand, that is fine: tell him ("I put them in…") so next time he finds them.

### Permission windows

Now and then Claudio installs a free program he needs. The computer may then ask for your permission:

- **Windows**: a window asks *"Do you want to allow this app to make changes to your device?"* → click **Yes**;
- **Mac**: a window asks for your computer password or your fingerprint (**Touch ID**);
- **Linux**: a window asks for your computer password.

**Rare case, Mac and Linux only**: sometimes the password is needed inside the **Terminal**, where Claudio cannot type it for you. Then he prepares **one single command** and guides you step by step: open the Terminal, paste the command, press `Enter`, type your password and press `Enter` again. **While you type the password nothing appears on the screen**, not even dots: that is normal.

> **If Claudio has just warned you** ("in a moment a window will appear, click Yes / type your password"), go ahead.

> **If nobody warned you**, say **No** (or close the window) and ask Claudio what he was doing.

For anything that costs money, sign-ups in your name or licences to accept, he always asks you first.

### Shortcuts with the / key

Optional: asking in words works just the same. Type `/` and the name. The names are in English, but Claudio answers in your language.

| Type | What it does |
|---|---|
| `/help` | reminds you what you can ask him |
| `/new-job` | opens a new job with its card |
| `/learn-from-here` | studies the work you put in the inbox |
| `/remember` | proposes what to keep in memory |
| `/archive` | copies the finished documents to the archive |
| `/tidy-memory` | monthly tidy-up of the memory |
| `/create-skill` | turns a job you repeat into a fixed "skill" |
| `/forget` | finds and, if you want, removes the data of a person or company |
| `/get-tools` | gets a program he is missing |
| `/setup` | asks the first questions again (if something changes in your office) |
| `/deadlines` | what is due this week, reminders at startup |
| `/mail` | reads the emails you paste or drop in the inbox folder, files them by job, drafts replies (never sends) |
| `/guided-job` | guides you step by step through a type of job |
| `/fill-form` | fills in a PDF or Word form with the data he knows; asks for what is missing |
| `/ask-client` | lists the missing documents and writes the message to the client (you send it) |
| `/daily-summary` | summary of the day or the week: done, stalled, waiting, next steps |
| `/transcribe` | turns voice notes, calls and meetings into text, on this computer |
| `/backup` | safety copy of memory, jobs and skills, checked; guided restore |
| `/explain` | explains any term or document from scratch, in plain words |
| `/legal-research` | looks up the rules on official sources, with links and dates |
| `/check-updates` | weekly check for a new version of Claudio, read-only |

Over time new ones will appear: they are the skills he learns from you.

### 4 things not to do

1. **Do not move or rename the Claudio-Assistant folder.** The memory is not lost, but the chat history is.
2. **Do not delete files in `memory` by hand**. If something is wrong, tell him and he fixes it.
3. **Do not sign a draft without reading it**, starting from the "To check" list.
4. **Do not write passwords or PINs in the chat** (digital signature, certified email, bank).

## 2 · In depth

How it works inside, and a few techniques to use it better. Not needed to work.

1. [What the folder looks like](#folder)
2. [How the memory works](#memory)
3. [Skills: what they are and how they are born](#skills)
4. [Autonomy: programs and skills he gets by himself](#autonomy)
5. [Sources, and the fight against made-up data](#sources)
6. [Techniques to work better](#techniques)
7. [Permissions and safety](#security)
8. [Privacy and client data](#privacy)
9. [Backup copies](#backup)
10. [Updating the assistant without losing anything](#updates)

### What the folder looks like

```
Claudio-Assistant/
├── CLAUDE.md          the basic instructions: who you are, the rules, how to work
├── VERSION.txt        the installed version (for the weekly update check)
├── docs/              this manual, in several languages
├── memory/            what he knows about you, the office, the profession, clients, suppliers, authorities
├── jobs/              one job per subfolder, each with its JOB.md (the job card)
├── good-examples/     your best work, by type: the quality benchmark
├── Learn-From-Here/   the inbox (shortcut on your desktop)
├── knowledge/         the official sources of your profession (laws, forms, databases)
├── inbox/             drop e-mails here for him to read and file by job
├── _trash/            what Claudio removes ends up here: you empty it
└── .claude/           (hidden folder) skills, permissions, startup checks
```

They are all ordinary text files: you can open them out of curiosity with Notepad (Windows), TextEdit (Mac) or any text editor. Changes, though, are better asked of Claudio.

### How the memory works

- **When every chat opens** Claudio reads `CLAUDE.md` and from there the main parts of the memory: who you are, your preferences, the lessons, the tools. The rest (contacts of clients, suppliers, offices; the profession) he opens when needed.
- The memory is divided into: **office** (you, the office, archive, programs) · **profession** (typical jobs, laws, sources) · **contacts** (clients, suppliers, authorities) · **decisions** (how you want things) · **lessons** (mistakes not to repeat) · **job types** (the kinds of job seen and how many times).
- The memory is written **in your language**: it is your notebook.
- **It is written only with your OK.** The exceptions are the job cards and the technical inventory of programs, which are "work status" and not memory.
- **It reorganises itself**: every 30 days Claudio proposes to improve it (split long files, create new categories, move rules that keep repeating into the skills). Before every tidy-up he makes a copy in `memory/_history`.
- At startup a small automatic check tells him whether there are files in the inbox, whether the tidy-up is due or whether a program is missing.

### Skills: what they are and how they are born

A skill is **your method, written down**, for one type of job: what to ask, which sources to use, in which order to proceed, what the document looks like, what to check at the end. It is there so that the work comes out every time like the best you have done, and not like any AI would do it.

- **How it is born**: when a type of job comes up 2-3 times (from the inbox or from your jobs), Claudio proposes to create it. He looks at your examples, searches online for something good to build on, asks you 3-5 questions about your method and writes it.
- **How it improves**: every important correction you make can become a rule of the skill. Tell him: ""update the quotes skill: I always want VAT shown separately"".
- At the first start Claudio studies your profession and proposes the list of typical jobs: it is the starting point for the first skills.

### Autonomy: programs and skills he gets by himself

When he lacks something (a format he cannot read, such as signed P7M files or scanned PDFs, a way to create a Word file, technical knowledge), Claudio:

1. checks whether he already has the tool;
2. studies and searches: ready-made skills, official free programs, guides and laws from official sources;
3. **checks** before installing: reliable source, no hidden sending of data, no dangerous commands;
4. installs, tests and notes in `memory/office/tools.md` how to use it;
5. tells you in one line what he did and goes back to work.

At the first start he installs the **basic toolkit**: Python, Node.js, Pandoc, LibreOffice, the tools for PDFs and scans, the Chromium browser and Anthropic's official skills for Word, Excel and PDF. If your profession uses special formats, he gets those too.

### Sources, and the fight against made-up data

The risk with AI is that it makes up data with confidence. Here the rule is: **data is not written from memory, it is taken from a source and cited**.

| What | Where it comes from |
|---|---|
| Laws and procedures | Official websites (national law portals, ministries, regional authorities, your professional body), saved in `knowledge` with the date |
| Prices, fees, forms | Official price lists, fee scales and forms of your profession, in `knowledge` |
| Structure and tone of documents | Your **good examples** |

The parts Claudio writes "on his own" are only those no archive can contain: the context of the single job, assessments, connections between things. They are also the ones to reread most carefully.

**Telling your clients**: some laws require professionals to tell clients that they use AI tools (in Italy, for example, Law 132/2025). Check what applies to you, and ask Claudio to prepare a standard paragraph to put in your engagement letters.

### Techniques to work better

#### One chat per job

For every new job open a new chat: the chat stays tidy and Claudio more precise. The memory and the job cards carry over from one chat to the next anyway. Old chats stay in the list on the left and can be reopened.

#### First the plan, then the document

For long jobs tell him: *"first tell me how you plan to do it, then go ahead"*. Correcting a 10-line plan is much faster than correcting a 40-page document.

#### Dictating

Windows `Win` + `H`; Mac `Fn` twice (or the microphone key); Linux depends on the desktop (Claudio can set it up). Great for telling him about a meeting that just ended: speak freely, Claudio puts it in order.

#### Photos and screenshots

You can paste a screenshot into the chat: a page of a portal, a table, an error you don't understand.

- **Windows**: `Win` + `Shift` + `S`, select the area, then `Ctrl` + `V` in the chat;
- **Mac**: `Cmd` + `Ctrl` + `Shift` + `4`, select the area, then `Cmd` + `V` in the chat (with `Cmd` + `Shift` + `4` the picture is saved on the desktop instead: drag it into the chat);
- **Linux**: `PrtSc` (Print Screen), then paste or drag the picture into the chat.

#### Getting him to suggest what you missed

Ask explicitly: *"what is missing? what haven't I considered?"*. It is one of the things where an assistant pays off most.

#### Teaching him a new job on purpose

You don't have to wait until he sees it 3 times: *"learn to do quotes: I put three examples in the inbox"*.

#### Usage limits of your Claude plan

Claude plans (for example Pro) have a usage cap that refills after a few hours. If the "limit reached" message appears, the work is not lost: pick up later from the same chat. Very long jobs are best done in pieces: first the structure, then one chapter at a time.

### Permissions and safety

- Claude is set to **Auto** mode (or "Accept edits"): Claudio works on his own and stops to ask only for risky actions.
- **Deleting is blocked**: what has to go ends up in `_trash` (the bin), and you empty it.
- In the archive (server, cloud) Claudio **only copies**: he never deletes or overwrites.
- Skills found online are installed only in this folder, after he has read and checked all of them.
- When the computer asks for permission (Yes window, password, Touch ID), he always warns you first. See [Permission windows](#permission).

### Privacy and client data

The data of clients and suppliers is the **office's asset**: it is kept and used. The duty is **not to disclose it**.

- Memory and jobs stay **on this computer** (and in your archive when you archive), not on the internet.
- What Claudio reads, though, is processed by Anthropic's servers to answer. That is why in **Settings → Privacy** you should **turn off** the use of your chats to improve the models.
- When he searches the internet, Claudio uses topics, places and laws, **never** names, tax codes or clients' data.
- Sensitive data (health, ID documents, bank details) he uses only where needed and never puts in memory.
- If a client asks what data you hold about them, or asks you to delete it: ""forget Mr Smith"". Claudio finds everything and removes only what you approve (documents the law requires you to keep stay).
- No passwords, PINs or digital signature codes in the chat.

> **To decide for your office** (Claudio can prepare the texts): a Claude plan with commercial terms and a data processing agreement; the privacy notice to clients mentioning the use of AI and, where your data protection law requires it (e.g. GDPR in the EU), the record of processing activities; disk encryption (**BitLocker** on Windows, **FileVault** on Mac, **LUKS** on Linux). The up-to-date list is in `memory/decisions/privacy.md`. It is best to also hear your office's privacy adviser.

### Backup copies

Since the memory lives only on this computer, if the disk breaks it is lost. Once a week Claudio proposes a **backup copy** of memory, examples, jobs and skills wherever you want (a folder of yours on the server, the cloud or a USB stick). You can also ask for it any time: ""make a backup copy of the memory"".

### Updating the assistant without losing anything

If you receive a new version of the folder, **do not replace everything**. The folders `memory`, `jobs`, `good-examples`, `knowledge` and the skills born from your work are yours and must not be overwritten. The simplest way: put the new version in a separate folder (for example in Downloads) and tell Claudio ""there is an update in the Downloads folder, merge it without losing my memory"".

Once a week Claudio checks on his own, without downloading anything, whether a newer version exists on the internet. He tells you in plain words what is new (added, improved, fixed, removed) and updates only if you agree, after a backup copy, leaving your memory and jobs untouched.

## If something goes wrong

#### He doesn't remember me / knows nothing about my jobs

Almost always you are in the **Chat** tab instead of **Code**, or the selected folder is not Claudio-Assistant. Check at the top. On Linux, check that you started Claude Code inside the Claudio-Assistant folder.

#### He asks me to open the Terminal or PowerShell, convert a file or install something

He shouldn't. Answer: *"you do it, I'm not good with computers"*. If it happens again, tell him to note it among the lessons. (The only exception is the rare Terminal password case on Mac or Linux, and only after he has warned you and explained it step by step.)

#### He wrote something wrong or made up

Ask him *"which source did you take it from?"*. If there is no source, correct him and tell him to remember it. Every correction makes him more precise.

#### An error message appears that I don't understand

Take a screenshot (Windows `Win` + `Shift` + `S`; Mac `Cmd` + `Ctrl` + `Shift` + `4`; Linux `PrtSc`), paste it in the chat and write *"what is this? fix it for me"*.

#### He gave me a link or a path that doesn't open

A correct path looks like this:

- **Windows**: starts with the drive letter, e.g. `C:\Users\...`, or with `\\` for the office server;
- **Mac**: starts with `/Users/...`, or `/Volumes/...` for the server;
- **Linux**: starts with `/home/...`, or where the server is mounted.

If you see a mixed format (on Windows things like `/c/Users/...`; on Mac or Linux things like `C:\...`) or a short path like `./jobs/...`, write to him: *"the link doesn't work, give it to me in the format for my computer and check that it exists"*.

#### He can't find the files I archived

Tell him where you put them: he updates the job card and next time he finds them.

#### He reached the usage limit

Wait a few hours and pick up from the same chat: nothing is lost.

Claudio-Assistant · manual v1 · October 2026. For anything unclear ask Claudio: *"explain the part about… better"*

Author: Giuseppe Bosi · [www.giuseppebosi.com](https://www.giuseppebosi.com) · [LinkedIn](https://www.linkedin.com/in/giuseppebosi)
