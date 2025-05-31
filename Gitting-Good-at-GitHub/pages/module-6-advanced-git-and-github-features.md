# **Module 6 - Advanced Git and GitHub Features**

* pre-commit
* GitHub Actions
* Rebasing

---

# **pre-commit**
<div class="text-2xl">

* [pre-commit](https://pre-commit.com/) is a framework for managing and running automated Git hooks to catch and fix issues (like formatting, linting, or security checks) before code is committed, ensuring consistent code quality across teams.
* Some common pre-commit hooks are the following:
  * [SQL - sqlfluff pre-commit](https://docs.sqlfluff.com/en/latest/production/pre_commit.html)
  * [Python - ruff pre-commit](https://github.com/astral-sh/ruff-pre-commit)
  * [dbt Osmosis - docs pre-commit](https://github.com/z3z1ma/dbt-osmosis?tab=readme-ov-file#pre-commit)
  * [git secrets checker](https://github.com/gitleaks/gitleaks)
</div>

---

# **GitHub Actions**
<div class="text-2xl">

* [GitHub Actions](https://github.com/features/actions) is a Continuous Integration/Continuous Deployment (CI/CD) automation tool built into GitHub that lets you automatically build, test, and deploy code based on events like pushes, pull requests, or schedule triggers.
* While GitHub Actions was built for CI/CD, it can also be used to run dbt projects as at its core, it is no different than running a serverless server. This can be done on a schedule or it can be done manually (via a workflow dispatch).
</div>
---

# **Git Rebasing**
<div class="text-2xl">

* [Git Rebasing](https://docs.github.com/en/get-started/using-git/about-git-rebase) is a Git operation that moves or combines a sequence of commits to a new base commit, creating a cleaner, linear project history by integrating changes without merge commits.
* While git rebasing can create a cleaner history, it is also a destructive in that you are merging multiple commits together.
* You should avoid doing `git rebase` unless you are in a team environment where that is their standard approach.
</div>
