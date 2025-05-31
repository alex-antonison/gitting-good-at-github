# **Module 2 - Basic Git Operations**

* Getting started working with Repositories
* Ignoring Files
* Staging and Committing Changes
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

# **Staging and Committing Changes**
<div class="text-2xl">

* You can either add all files with `git add -A` or `git add path/to/filename`
  * Tools like GitHub Desktop and VS Code's Source Control Panel are helpful to see all files
* Once a file is staged, you can then `commit` the changes with
  * `git commit -m"{insert message here}"`
* To commit all tracked files that have been modified, you can use the `-a` argument:
  * `git commit -am"{insert message here}"`
</div>

---

# **Committing Changes (Activity)**
<div class="text-2xl">

1. Make changes to the `existing_file.txt`
2. Create a file in `exercises` directory called `new_file.txt` and add text to it
3. `git commit -am "{insert your descriptive message here}"`
4. `git status`
5. `git add exercises/new_file.txt`
6. `git status`
7. `git commit -m "{insert your descriptive message here}"`
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
  * This simply undoes the last commit with files intact
* `git checkout origin/main path/to/filename`
  * This will reset the file to what is in the main branch
</div>

---

# **Undoing Changes (Activity)**

TODO: Activity

---

# **Removing Files**
<div class="text-2xl">

* In the event a file gets added that you want to remove, you can use the\
`git rm` command:
* If you want to completely remove the file, you can do: 
  * `git rm path/to/file`
* If you want to just stop tracking it in source control you can do:
  * `git rm --cached path/to/filename`
  * Add the file to your `.gitignore`
* If you want to remove an entire directory:
  * `git rm -r path/to/directory`
* Last, you need to commit the removal change using `git commit`
</div>

---

# **Removing Files (Activity)**

TODO: Ignore and remove activity
