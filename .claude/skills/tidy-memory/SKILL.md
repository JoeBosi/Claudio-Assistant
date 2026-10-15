---
name: tidy-memory
description: Periodic tidy-up (every 30 days) of memory and skills — removes duplicates and contradictions, splits files that are too long, creates new categories if needed, moves repeated lessons into the skills, flags upcoming deadlines. Use when the startup script says the tidy-up is due or when the user asks for it, e.g. "tidy up your memory", "clean up" — also "riordina la memoria" (Italian), "range ta mémoire" (French), "räum dein Gedächtnis auf" (German).
---

# Tidy memory — making it neater and more useful

The organisation of memory is not fixed: it must change as Claude gets to know the user's
work better. This tidy-up is the moment to improve it.

## Steps
1. **Safety copy**: copy all of `memory/` (excluding `_history/`) into
   `memory/_history/<YYYY-MM-DD>/`.
2. **Read everything**: `memory/`, `memory/job-types.md`, the list of skills, the cards of
   the jobs from the last month.
3. **Look for what to improve**:
   - duplicates and entries that contradict each other;
   - outdated entries (closed jobs, companies that no longer exist);
   - files that are too long (over ~150 lines) → split them by topic (e.g.
     `authorities.md` → `authorities/<authority>.md`, …);
   - topics that keep coming up without a place of their own → a new category (e.g.
     "agreed prices", "habits of public offices");
   - **repeated lessons** or stable preferences that concern a job with a skill → they
     belong **inside the skill**, where they are really needed;
   - types of job with 2-3 examples and no skill → propose `create-skill`;
   - skills never used, or with instructions superseded by new examples;
   - **deadlines** coming up in the next 90 days (renewals, training credits, insurance:
     see `owner.md` and `profession.md`);
   - **tools** (on your own, without bothering the user):
     - program updates (Windows `winget upgrade --all`, Mac `brew upgrade`, Linux: propose
       system updates to the user, since they ask for the password) and skill updates
       (`npx -y skills@1.7.0 update -p -y`);
     - outdated lines in `tools.md`;
     - technical errors repeated in `lessons.md`, to be solved once and for all;
   - **outdated sources**: price lists for the new year, updated forms, changed laws.
     Look for them online and, if there are new ones, download them into `knowledge/`
     (keep the old version too) and tell the user.
   - **backup copy**: memory exists only on this computer. If the last backup is more than
     30 days old (see the log in `_maintenance.md`), offer to copy `memory/`,
     `good-examples/`, `jobs/`, `knowledge/` and `.claude/` to a place the user chooses (personal folder
     on the server, USB stick, cloud) and note the date.
4. **Propose the plan to the user** in plain words, at most 6 points:
   > I've tidied up the memory. I suggest: 1) merging two duplicate notes on client Smith;
   > 2) splitting the offices by authority; 3) adding the VAT rule to the quotes skill…
   Flag any deadlines separately.
5. **Apply** only what they approve. Update `memory/INDEX.md`.
6. In `memory/_maintenance.md` write `last_tidy: <today, YYYY-MM-DD>` and add a line to the log with
   the changes made.

If the user is in a hurry: postpone, and leave the date as it is (the reminder will come
back at the next chat).
