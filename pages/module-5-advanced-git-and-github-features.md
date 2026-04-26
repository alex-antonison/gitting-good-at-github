# **Module 6 - Advanced Git and GitHub Features**

* pre-commit
* GitHub Actions
* GitLab CI/CD

---

# **pre-commit**
<div class="text-2xl">

* [pre-commit](https://pre-commit.com/) is a framework for managing and running automated Git hooks to catch and fix issues (like formatting, linting, or security checks) before code is committed, ensuring consistent code quality across teams.
* Some common pre-commit hooks are the following:
  * [SQL - sqlfluff pre-commit](https://docs.sqlfluff.com/en/latest/production/pre_commit.html)
  * [Python - ruff pre-commit](https://github.com/astral-sh/ruff-pre-commit)
  * [git secrets checker](https://github.com/gitleaks/gitleaks)
</div>

---

# **GitHub Actions**
<div class="text-2xl">

* [GitHub Actions](https://github.com/features/actions) is a Continuous Integration/Continuous Deployment (CI/CD) automation tool built into GitHub that lets you automatically build, test, and deploy code based on events like pushes, pull requests, or schedule triggers.
* While GitHub Actions was built for CI/CD, it can also be used to run dbt projects as at its core, it is no different than running a serverless server. This can be done on a schedule or it can be done manually (via a workflow dispatch).
</div>
---

# **GitLab CI/CD**
<div class="text-2xl">

* [GitLab CI/CD](https://docs.gitlab.com/ee/ci/) is GitLab's built-in Continuous Integration/Continuous Deployment (CI/CD) platform that automates build, test, and deployment workflows using pipelines defined in a `.gitlab-ci.yml` file.
* Similar to GitHub Actions, you can trigger pipelines from events like pushes, merge requests, schedules, or manual runs to validate code and ship updates more reliably.

</div>

