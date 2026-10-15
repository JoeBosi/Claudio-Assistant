---
name: create-skill
description: Turns a type of job the user repeats (report, quote, minutes, contract…) into a new skill, built on their best examples and their method. Use when a type of job comes up for the 2nd or 3rd time without a skill, when the tidy-up suggests it, or when the user says "learn to do…", "make sure you know how to do it next time" — also e.g. "impara a fare…", "la prossima volta sappilo fare" (Italian), "apprends à faire…" (French), "lerne, wie man … macht" (German).
---

# Create a skill (a new "trade")

A skill is **the user's method, written down**: this way the job comes out every time like
the best one they have done, not like a generic AI would do it.

## Steps
1. **Gather the material** on that type of job:
   - `good-examples/<type>/` (documents and `EXAMPLE.md`);
   - past jobs where it was done (`jobs/*/JOB.md`);
   - related preferences and lessons in `memory/`;
   - `memory/profession.md` (laws and sources for the job) and the sources in `knowledge/`;
   - **check whether a skill already exists** for that job, or for a part of it (e.g.
     reading a format, making a chart, filling in PDF forms): `npx -y skills@latest find
     <English keywords>` and a web search. If you find a good one, check it and install it
     with `get-tools`, and build on top of it instead of starting from scratch;
   - if the job requires laws or techniques you don't know well, **study them** from
     official sources and save them in `knowledge/` with source and date;
   - if programs are needed (conversions, signature, technical software), get them with
     `get-tools`.
2. **Ask the user 3-5 questions about their method**, for example: where do you start?
   what data do you always need? what is the mistake that must never happen? how do you
   know it is done well?
3. **Write** `.claude/skills/<name>/SKILL.md` (short name, lowercase, with hyphens) with:
   - at the top `name` and a `description` saying **when** to use it, with the words the
     user would use (in their language too);
   - **what to ask the user** at the start (only what cannot be found already);
   - **mandatory sources** and how to cite them (never invented data);
   - **the steps**, in the order the user follows;
   - **document structure**, taken from the good examples;
   - **final check**: a checklist before handing over the draft;
   - **reference examples** (paths in `good-examples/`).
4. **Explain it to the user** in 5 simple lines and ask for their OK. Then update
   `memory/job-types.md` ("Skill" column) and the skills table in `CLAUDE.md`.
5. Tell them the new skill will be available from a **new chat**, both as the command
   `/<name>` and simply by asking for that job in words.

## Improving an existing skill
Same logic: when a new example, a correction from the user or a lesson teaches something the
skill does not say, propose the change (with OK) and note it at the bottom of the skill in a
"History" section with the date.
