# Module 2 - Basic Git Operations

* Getting started working with Repositories
* Committing Changes
* Undoing Changes
* Removing Files

---
layout: two-cols
---

# Getting started working with Repositories
<div class="text-2xl">

1. [Creating a repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/quickstart-for-repositories)
2. [Forking a repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#forking-a-repository)

[github.com/alex-antonison/gitting-good-at-github](https://github.com/alex-antonison/gitting-good-at-github)

Once a repository has been created or forked, you can then clone a repository with
</div>
```bash
git clone {repository link}
```

::right::

<img src="./images/get-repository-link.png" />

---

# Committing Changes
<div class="text-2xl">

* You can either add all files with `git add -A` or `git add {file name}`
* Once a file is being tracked, you can then `commit` the changes with `git commit -m"{insert message here}"`
  * When do you commit?
    * Committing too often leads to noisy commits
    * Committing too infrequently makes it hard to find changes
  * _The best time to commit is when you have completed a "thought"_
    * This could be when you finish a function, update some business logic, etc.
</div>

---

# Commit Changes - Activity

1. Create a file that ends with `.md`
2. `git add {file name}.md`
3. `git commit -m "{insert your descriptive message here}"`
