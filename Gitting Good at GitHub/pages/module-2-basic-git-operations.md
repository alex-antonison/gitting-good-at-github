# **Module 2 - Basic Git Operations**

* Getting started working with Repositories
* Ignoring Files
* Committing Changes
* When to Commit
* Undoing Changes
* Removing Files

---
layout: two-cols
---

# **Getting started working with Repositories**
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

# **Ignoring Files**

* A `.gitignore` file is used to ignore files that you do not want to manage in source control. Some examples are:
  * Files containing secrets (passwords, API keys, etc.)
  * Locally installed package files like `.venv/`
  * Large data files (aka 2 GB csv files)

---

# **Ignoring Files (Activity)**

TODO: Ignoring files example

---

# **Committing Changes**
<div class="text-2xl">

* You can either add all files with `git add -A` or `git add path/to/filename`
  * Once a file is `added` it is then being `tracked`
* To see the current state of tracked files, you can use `git status`
* Once a file is being tracked, you can then `commit` the changes with
  * `git commit -m"{insert message here}"`
* You can also use the option `-am` to commit all tracked and changed files
  * `git commit -am"{insert message here}"`

</div>

---

# **Committing Changes (Activity)**
<div class="text-2xl">

1. Create a file in `exercises` directory called `new_file.txt`
2. Add some text to it.
3. `git add new_file.md`
4. `git status`
5. `git commit -m "{insert your descriptive message here}"`
6. Make changes to the `existing_file.txt`
7. `git commit -am "{insert your descriptive message here}"`
8. Check **Commit History.** You can use `git log` but GitHub Desktop or VS Code is easier
</div>
---

# **When to Commit?**

* When do you commit?
  * Committing too often leads to noisy commits
  * Committing too infrequently makes it hard to find changes
* _The best time to commit is when you have completed a "thought"_
  * This could be when you finish a function, update some business logic, etc.

---

# **Undoing Changes**

<div class="text-2xl">

* `git commit --amend` allows you to change the last commit
  * Update git commit message
* `git reset HEAD~1`
  * This simply undoes the last commit and leaves files intact
* `git checkout origin/main path/to/filename`
  * This will reset the file to what is in the main branch
</div>

---

# **Undoing Changes (Activity)**

TODO: Activity

---

# **Removing Files**

<div class="text-4xl leading-tight break-words whitespace-pre-wrap">
  In the event a file gets added that you want to remove, you can use the command:

  <code class="block text-base mt-2 bg-gray-100 p-2 rounded">
    git rm --cached path/to/filename
  </code>
</div>

---

# **Ignoring and Removing Files (Activity)**

TODO: Ignore and remove activity
