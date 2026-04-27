# Project Context: Gitting Good at GitHub
# Author: Alex Antonison  
# Purpose: Introductory Git & GitHub teaching course using Slidev

### **1. Course Purpose (Updated with New Insights)**
This repository contains a beginner-friendly course that teaches:

*   What Git is and why it exists
*   Core Git concepts (commits, branches, merges, remotes)
*   GitHub fundamentals (repos, pull requests, issues, forks)
*   Practical workflows for new developers, **emphasizing collaboration** (Module 4)
*   Visual, example-driven explanations suitable for classroom teaching, **now with simulated project practice** (Module 5)

### **2. Slide Architecture (No Changes)**
Slides are built using Slidev.
All slides live under:

*   `pages/`
*   Each page is a Markdown-based slide deck section.
*   LLMs should:
    *   Preserve Slidev frontmatter
    *   Use Slidev-compatible Markdown
    *   Avoid breaking code fences, directives, or layout blocks
    *   Prefer concise bullets over long paragraphs

### **3. Teaching Style & Constraints (Refined)**
When generating or editing content:

*   **Use relatable scenarios** for simple, concrete examples
*   **Prefer ASCII diagrams** for Git graphs, with **links to visual aids** when beneficial
*   **Avoid jargon unless explained**, with **brief asides for deeper explanations** if necessary
*   **Show real Git commands with short explanations**, highlighting **key flags and options**
*   **Use GitHub UI examples that match the current platform**, noting any **platform-specific behaviors**
*   **Keep examples consistent across slides**, using the established conventions (Section 6)

### **4. Git Concepts to Emphasize (Expanded)**
Reinforce these core ideas:

*   Git tracks snapshots, not diffs
*   A commit is a snapshot + metadata
*   Branches are pointers to commits
*   HEAD points to the current branch
*   Merging combines histories
*   Rebasing rewrites history
*   **Git's distributed nature**, with examples of local and remote workflows
*   GitHub is a hosting platform, not Git itself, **contrasting with other platforms** (e.g., GitLab)

### **5. GitHub Concepts to Emphasize (Updated with Latest Features)**
Key GitHub topics for this course:

*   Repositories
*   Pull Requests, including **review and approval processes**
*   Issues, with **templates and assignment** best practices
*   Forks vs Branches, discussing **use cases for each**
*   GitHub Desktop basics, covering **latest updates and features**
*   **GitHub Pages (now with SEO considerations)** (optional module)
*   **GitHub Actions (with a focus on CI/CD pipelines)** (optional module)

### **6. Example Conventions (Updated for Consistency)**
Use these conventions consistently:

*   Main branch name: `main` (unless **demonstrating alternative naming**)
*   Example repo name: `demo-repo` (with **variations for different scenarios**)
*   Example user: `student-user` (supplemented with **other roles for collaboration examples**)
*   Example remote: `origin` (highlighting **multiple remote configurations** when relevant)

### **7. What NOT to Do (Refined Prohibitions)**
Avoid:

*   Deep dive into reflog, cherry-pick, bisect (unless **explicitly asked or crucial for context**)
*   Changing Slidev structure without **prior approval and thorough documentation**
*   Introducing Git workflows not covered in the course (GitFlow, trunk-based, etc.) unless **directly requested or naturally emerging from topics**
*   Using community Ollama models (project uses official models only), with **clear attribution for any external resources**
*   **Overly complex diagrams**; prioritize simplicity and clarity

### **8. Tasks LLMs Are Expected to Help With (Expanded Scope)**
*   Writing or revising slides, including **suggesting additional topics or subtopics**
*   Creating diagrams (ASCII), with **options for visual enhancements**
*   Generating examples, ensuring **diversity in scenarios and edge cases**
*   Explaining Git/GitHub concepts, providing **supplementary resources for further learning**
*   Drafting exercises or quizzes, incorporating **varied question types and difficulties**
*   Improving clarity and pedagogy, with a focus on **accessibility and inclusivity**
*   Ensuring consistency across modules, **highlighting connections between topics**

### **9. Repository Links (Updated)**
Main repo:
<https://github.com/alex-antonison/gitting-good-at-github>

Slides directory:
`pages/`

**New Resources for LLMs:**

*   [Git Official Documentation](https://git-scm.com/docs)
*   [GitHub Learning Lab](https://lab.github.com/)
*   [Slidev Documentation](https://sli.dev/docs/)
