# Copilot Instructions: Gitting Good at GitHub

**Project:** Introductory Git & GitHub teaching course built with [Slidev](https://sli.dev/docs/)  
**Author:** Alex Antonison  
**Repo:** https://github.com/alex-antonison/gitting-good-at-github

---

## Slide Architecture

All slides live under `pages/` as Markdown-based Slidev deck sections.

- Preserve all Slidev frontmatter
- Use Slidev-compatible Markdown only
- Do not break code fences, directives, or layout blocks
- Prefer concise bullet points over long paragraphs

---

## Teaching Style

- Use **relatable, real-world scenarios** for examples
- Prefer **ASCII diagrams** for Git graphs; link to visual aids when beneficial
- Avoid jargon unless it is explained; use brief asides for deeper dives if needed
- Show **real Git commands with short explanations**, highlighting key flags and options
- Use GitHub UI examples that match the current platform; note platform-specific behaviors
- Keep examples **consistent** across slides using the conventions in the section below

---

## Core Concepts to Reinforce

**Git:**
- Git tracks snapshots, not diffs
- A commit is a snapshot + metadata
- Branches are pointers to commits
- HEAD points to the current branch
- Merging combines histories; rebasing rewrites history
- Git is distributed — highlight local vs. remote workflows

**GitHub:**
- GitHub is a hosting platform, not Git itself (contrast with GitLab where relevant)
- Repositories, Pull Requests (including review/approval), Issues (templates & assignment)
- Forks vs. Branches — discuss use cases for each
- GitHub Desktop basics (latest updates)
- Optional: GitHub Pages (with SEO considerations), GitHub Actions (CI/CD focus)

---

## Example Conventions

| Convention | Value |
|---|---|
| Main branch | `main` (unless demonstrating alternative naming) |
| Example repo | `demo-repo` (vary for different scenarios) |
| Example user | `student-user` (add other roles for collaboration examples) |
| Remote name | `origin` (note multiple-remote configs when relevant) |

---

## What NOT to Do

- Do **not** deep-dive into `reflog`, `cherry-pick`, or `bisect` unless explicitly asked
- Do **not** change Slidev structure without prior approval and documentation
- Do **not** introduce Git workflows (GitFlow, trunk-based, etc.) unless directly requested
- Do **not** use community Ollama models — use official models only, with clear attribution for external resources
- Do **not** create overly complex diagrams; prioritize simplicity and clarity

---

## Tasks Copilot Is Expected to Help With

- Writing or revising slides (may suggest additional topics/subtopics)
- Creating ASCII diagrams (with options for visual enhancements)
- Generating diverse examples covering edge cases
- Explaining Git/GitHub concepts with supplementary resources
- Drafting exercises or quizzes (varied types and difficulty)
- Improving clarity, pedagogy, accessibility, and inclusivity
- Ensuring consistency across modules and highlighting topic connections

---

## Reference Links

- [Git Official Documentation](https://git-scm.com/docs)
- [GitHub Learning Lab](https://lab.github.com/)
- [Slidev Documentation](https://sli.dev/docs/)
