# **Module 3 - Branching and Merging**

* What are Branches?
* Working with Branches
* Merging Branches
* Merge Conflicts

---

# **What are Branches?**

* A branch lets you work on changes separately from the main code.
  * For individual projects, working in `main` is "okay"
  * It is a good habit to always work in branches
  * For team based projects, always need to work in branches

---

# **Working with Branches**
<div class="text-2xl">

* Create a branch and then checkout that branch:
  * Create a branch `git branch {insert-descriptive-branch-name}` 
  * To checkout a `git checkout {insert-descriptive-branch-name}`
* Create and checkout a branch:
  * `git checkout -b {insert-descriptive-branch-name}`
* To delete a branch
  * `git checkout main`
  * `git branch -D {insert-descriptive-branch-name}`
</div>

---

# **Working with Branches (Activity)**

TODO: Branch Activity

---

# **Merging Branches**
<div class="text-2xl">

* To merge a branch locally, you do `git merge {insert-branch-name}`
* It is common to need to merge `main` into current branch because:
  * In your Pull Request, you have merge conflicts you need to address
  * Code has been merged into main that you need for your work
* To merge main into your current branch
  * `git checkout main` (swap to main)
  * `git pull` (update main branch)
  * `git checkout {insert-branch-name}` (swap back to your branch)
  * `git merge main` (merge main into your branch)
</div>

---
layout: two-cols
---

# **Merge Conflicts**

* Occurs when changes in two branches **affect the same part of a file** and Git can't automatically decide which change to keep, requiring manual resolution.

::right::

<div class="flex justify-center items-center h-full">
  <img src="./images/example-merge-conflict.png" />
</div>

---

# **Merge Conflict (Activity)**

TODO: Merge conflict Activity


