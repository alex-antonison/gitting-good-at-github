# Project Context: Gitting Good at GitHub

**Author:** Alex Antonison
**Purpose:** Introductory Git & GitHub teaching course built with Slidev

## 1. Course Purpose

This repository contains a beginner-friendly course that teaches:

- What Git is and why it exists
- Core Git concepts (commits, branches, merges, remotes)
- GitHub fundamentals (repos, pull requests, issues, forks)
- Practical collaboration workflows (Module 4)
- Hands-on practice via a simulated project (Module 5)

The course is GitHub-only — GitLab is not covered and should not be reintroduced.

## 2. Slide Architecture

Slides are built with Slidev.

- All slides live under `pages/`, one file per module, assembled via `src:` includes in `slides.md`
- Each module file's H1 heading must match its filename's module number and `slides.md`'s agenda — these drifted out of sync once already (the Module 5/Module 6 swap), so double-check all three agree after renumbering anything
- Preserve Slidev frontmatter (`---` blocks, `layout:`, `::right::`)
- Use Slidev-compatible Markdown; don't break code fences, directives, or layout blocks
- Prefer concise bullets over long paragraphs

## 3. Teaching Style

- Use relatable, concrete scenarios
- Prefer ASCII diagrams for Git graphs; link to visual aids when it helps
- Avoid jargon unless explained
- Show real Git commands, not placeholders, wherever an activity expects the student to copy-paste
- Keep examples consistent with the conventions in Section 6

## 4. Git Concepts to Emphasize

- Git tracks snapshots, not diffs
- A commit is a snapshot + metadata
- Branches are pointers to commits
- Merging combines histories and preserves a merge commit; rebasing replays commits onto a new base for linear history with no merge commit
- Git is distributed — local work first, then synced to a remote

## 5. GitHub Concepts to Emphasize

- Repositories, Pull Requests (review/approval), Issues
- Forks vs. branches
- GitHub Desktop basics
- GitHub Pages, GitHub Actions (Module 6)

## 6. Example Conventions

Match what the existing activities already do rather than introducing new patterns:

- Main branch: `main`
- Feature branches are named for the technique they demonstrate: `add-feature-merge`, `add-feature-rebase`
- Shared file used to simulate main moving ahead or a conflict: `exercises/existing_file.txt`
- New files created per activity are named for their purpose: `merge_test_file.txt`, `rebase_test_file.txt`
- Activity steps must be copy-paste-able shell commands (`touch`, `echo "..." >> file`, `git ...`) — avoid prose like "make a change to the file"
- When a command has a modern replacement (`git checkout` vs. `git switch`/`git restore`), show both — don't drop the older one outright

## 7. What NOT to Do

- Don't deep-dive into `reflog`, `cherry-pick`, or `bisect` unless explicitly asked
- Don't change Slidev structure (module order, file layout) without confirming with the user first
- Don't reintroduce GitLab content
- Don't add overly complex diagrams — prioritize simplicity

## 8. Tasks LLMs Are Expected to Help With

- Writing or revising slides
- Creating ASCII diagrams
- Generating additional examples or edge cases
- Explaining Git/GitHub concepts
- Drafting exercises
- Keeping modules internally consistent — filenames, in-file headings, the `slides.md` agenda, and `README.md` should always agree

## 9. Repository Links

- Repo: <https://github.com/alex-antonison/gitting-good-at-github>
- Slides: `pages/`, assembled by `slides.md`

**Reference docs:**

- [Git Official Documentation](https://git-scm.com/docs)
- [GitHub Learning Lab](https://lab.github.com/)
- [Slidev Documentation](https://sli.dev/docs/)
