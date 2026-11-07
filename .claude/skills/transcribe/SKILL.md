---
name: transcribe
description: Turns voice notes, recorded calls, meetings and videos (mp3, m4a, wav, ogg/opus, mp4, mov, WhatsApp audio) into a text transcript with a summary, saves it in the job folder and proposes the follow-ups (deadlines, job card). Works on the computer itself with free tools, so the audio never leaves it. Use when the user says "transcribe this", "I recorded a call", "write down what the client said in this voice note", "meeting minutes from the recording" — also e.g. "trascrivi", "ho registrato", "nota vocale" (Italian), "transcris", "note vocale" (French), "transkribiere", "Sprachnachricht" (German).
---

# Transcribe — from voice to text, on this computer

Talk to the user in their language (`memory/office/owner.md`, `Language:`). Everything
produced is a **draft**: the user listens to the doubtful points and signs off. Tools are
recorded in `memory/office/tools.md`; check there first, you may already have them.

## 1. Find the recording and the job
1. The user drops the file in `Learn-From-Here/`, gives its path, or drags it into the chat.
   If a file is in `Learn-From-Here/` and clearly is a recording, it is for transcription,
   not for learning: ask which one it is only if unclear.
2. Find out which job it belongs to (`jobs/*/JOB.md`). If none fits, offer to open one
   (skill `new-job`). Never move or delete the original: copy it into `jobs/<job>/received/`
   if the user agrees, otherwise leave it where it is.
3. Ask, in one short question, the **language spoken** if it is not obvious (the user's own
   language is the default) and whether several people speak.

## 2. Privacy, in one line
Say it once, before starting: "Recordings of other people may need their consent; the audio
stays on this computer and I do not copy sensitive content into memory." Do not lecture. If
the recording clearly contains health, ID or bank data that the job does not need, tell the
user.

## 3. Get the tools (skill `get-tools`, in this order)
1. **Local and free (preferred, best for client privacy).**
   - `ffmpeg`, from the system package manager (Windows `winget`, id `Gyan.FFmpeg`; macOS
     `brew`, package `ffmpeg`; Linux `apt`, package `ffmpeg`): converts and extracts audio.
   - The Python package `faster-whisper` (install it with get-tools): it works offline.
     On first use the library downloads a speech model by itself (a "small" or "medium"
     one, a few hundred MB). Warn the user in plain words: "the first time it downloads the
     speech model, a few hundred MB; it stays on the computer, and after that it works
     without internet". Use "small" on slow computers, "medium" for better accuracy.
2. **Online service, only if needed**: if the computer is too slow for the job or the local
   tool **fails twice**. Then:
   - ask the user's permission, explaining in **one line** cost and privacy: "the audio is
     sent to a transcription service, which may charge per minute, and the client's voice
     leaves this computer";
   - use a transcription service the user already has or chooses (never impose a specific
     provider);
   - ask them for the access key (the user's decision: it is their account) and save it
     **only** in the local file `.env` in the assistant's folder, as
     `TRANSCRIBE_API_KEY=...`. Never show it, never repeat it in chat, never copy it into
     memory or documents, never commit it or put it in any shared/archived folder. If `.env`
     is not ignored by git, add it to `.gitignore` first;
   - if the user says no, stay local: split the audio in shorter parts and retry, or use the
     smaller model.
3. Write in `memory/office/tools.md` what you installed and how it behaved (technical
   inventory: no need to ask the OK).

## 4. Prepare the audio
1. Check the file opens and read its **duration** with ffmpeg tools.
2. If it is not already a 16 kHz mono wav, convert a **copy** (video: extract the audio
   track) into a temporary file, for example in `jobs/<job>/documents/_work/`. WhatsApp
   `.opus`/`.ogg`, `.m4a` and `.mp4` all go through ffmpeg. Never alter the original.
3. Very long files (over an hour): process in parts and tell the user it will take a while;
   report progress in one line, not a stream of details.

## 5. Transcribe
1. Run the transcription with the spoken language set explicitly (not auto-detect, unless
   the user does not know it). Keep the timestamps of each passage.
2. Read the result critically: repeated loops, invented text over silence or music, numbers,
   proper names, technical terms of the user's profession (see `memory/profession.md` and
   `memory/contacts/`). Fix only what is certain; mark the rest.
3. Mark unclear passages `[inaudible]` with the time; mark doubtful words with
   `[TO CHECK: ...]` (in the user's language). Never "improve" or complete what was said:
   the transcript is a record, not a rewrite.
4. If several people speak, label them `Speaker 1`, `Speaker 2`, or by name only if the
   user told you who is who.
5. Delete nothing: temporary converted files go to `_trash/` at the end (the user empties it).

## 6. Save the transcript
Create `jobs/<job>/documents/transcript-<YYYY-MM-DD>.md` (date of the recording if known,
otherwise of today; add a short suffix if there are two the same day). Write it in the
language of the recording. Structure:
```
# Transcript — <job> — <date>
- Source file: <file name and where it is>
- Recording date: <date, or [TO CHECK: date]>   - Duration: <h:mm:ss>
- Language: <language>   - Tool: <local model / online service>   - Speakers: <list>

## Text
[00:00] ...
[05:00] ...        (a timestamp every few minutes, or at each change of topic/speaker)

## Summary
- Decisions: ...
- Requests (who asks what): ...
- Deadlines and dates: ... (with the time in the recording)
- Names mentioned: <name> [TO CHECK: spelling] ...
- Open questions: ...

## To check
(in the user's language: names and spellings, figures and amounts, dates, unclear passages
`[inaudible]` with their times, anything you could not verify)
```
The summary only reports what is said in the recording, with the minute it comes from. No
legal or technical conclusions of your own here; if you add any, put them under a separate
heading "Notes" and say so.

## 7. Close the job and propose the next steps
Tell the user, in two lines, what you did and where the file is (full path in their
system's format, checked with `Test-Path` / `test -e`). Then propose, one at a time:
1. **Deadlines**: the dates found in the summary, to add with the skill `deadlines` (only
   those with a clear date; the others stay `[TO CHECK: date]`).
2. **JOB.md**: add the transcript to the "Documents" table, the decisions to "Decisions
   taken" and the requests to "To do / waiting for" (you may update the card on your own).
3. **Memory** (skill `remember`): only with the user's OK, and only lasting facts (a client's
   preference, how they like to be called, a recurring term). Never sensitive content or
   what was said in the conversation.
4. If useful, a follow-up draft (reply, minutes, a note to the client): skill of the
   matching job type, or offer to learn it with `create-skill`.

## If something goes wrong
- Poor audio: say how many passages are `[inaudible]` and offer to retry with the larger
  model or after cleaning the sound (noise reduction with ffmpeg).
- Local tool fails twice: section 3, point 2 (with permission). After that, explain in
  plain words what is missing and what you propose.
