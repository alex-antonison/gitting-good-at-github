# **Module 3 - Branching and Merging**

* What are Branches
* Working with Branches
* Merging Branches
* Rebasing Branches
* Merge Conflicts

---

# **What are Branches?**

* A branch lets you work on changes separately from the main code.
  * For individual projects, working in `main` is "okay"
  * It is a good habit to always work in branches
  * For team based projects, always need to work in branches

---

# **Working with Branches**
<div class="text-xl">

* Create a branch and then checkout that branch:
  * Create a branch `git branch {insert-descriptive-branch-name}`
* To change to a branch
  * `git checkout {insert-descriptive-branch-name}`
  * `git switch {insert-descriptive-branch-name}`
* Create and change to a branch
  * `git checkout -b {insert-descriptive-branch-name}`
  * `git switch -c {insert-descriptive-branch-name}`
* To delete a branch
  * `git checkout main`
  * `git branch -D {insert-descriptive-branch-name}`
</div>

---

# **Working with Branches (Activity)**

1. Create a branch `git switch -c my-new-branch`
2. Delete the branch:
   1. `git checkout main`
   2. `git branch -D my-new-branch`

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

# **Merging Branches (Activity)**
<div class="text-xl">

1. Create a branch `git switch -c add-feature-merge`
2. Create a file <span style="color: blue;">`merge_test_file.txt`</span> and add it
   1. `touch merge_test_file.txt`
   2. `git add merge_test_file.txt`
   3. `git commit -m "Add merge test file"`
3. Simulate main moving ahead:
   1. `git checkout main`
   2. `echo "main update" >> exercises/existing_file.txt`
   3. `git commit -am "Update existing_file.txt on main"`
4. Merge `add-feature-merge` into `main`
   1. `git merge add-feature-merge`
</div>

---

# **Merging Pros and Cons**
<div class="text-lg">

* **Pros**
  * Preserves full branch history, so you can trace what happened in team work
  * Safe for collaboration because merge does **not** rewrite existing commits
  * PR context stays connected to the merged work
* **Cons**
  * Extra merge commits can make history feel noisy over time
  * Commit history is less linear and can be harder to read quickly
  * Long-lived branches can lead to more merge conflicts

</div>

---

# **Rebasing**
<div class="text-xl">

* Rebasing replays a branch's commits on top of another branch's latest commit
* Unlike merging, rebasing rewrites commit history to produce a linear history
* To rebase main into your current branch:
  * `git switch main` (swap to main)
  * `git pull` (update main branch)
  * `git checkout {insert-branch-name}` (swap back to your branch)
  * `git rebase main` (rebase your branch on top of main)
* **Avoid rebasing branches that others are working on** — rewriting shared history can cause problems
</div>

---

# **Rebasing (Activity)**
<div class="text-xl">

1. Create a branch `git switch -c add-feature-rebase`
2. Create a file <span style="color: blue;">`rebase_test_file.txt`</span> and add it
   1. `touch rebase_test_file.txt`
   2. `git add rebase_test_file.txt`
   3. `git commit -m "Add rebase test file"`
3. Simulate main moving ahead:
   1. `git checkout main`
   2. `echo "main update" >> exercises/existing_file.txt`
   3. `git commit -am "Update existing_file.txt on main"`
4. Rebase `add-feature-rebase` onto the updated `main`
   1. `git rebase add-feature-rebase`
</div>

---

# **Rebasing Pros and Cons**

<div class="text-lg">

* **Pros**
  * Creates a clean, linear commit history that is easier to scan
  * Helps keep feature work up to date without adding merge commits
  * Makes `git log --oneline` and history review simpler for many teams
* **Cons**
  * Rewrites commit history, which can confuse collaborators on shared branches
  * Can require force push (`git push --force-with-lease`) after rebasing remote branches
  * Conflict resolution may need to happen commit-by-commit during the rebase

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
<div class="text-2xl">

1. `git checkout main` (if you aren't on main)
2. Make a change to the first line in <span style="color: blue;">`exercises/existing_file.txt`</span>
3. `git commit -am"Commit message for existing_file.txt"`
4. `git checkout add-feature-merge`
5. Make a different change to the first line in <span style="color: blue;">`exercises/existing_file.txt`</span>
6. `git commit -am"Commit message for existing_file.txt"`
7. Run `git merge main`
8. You can use the built in VS Code or GitHub Desktop to resolve the conflict.
</div>
