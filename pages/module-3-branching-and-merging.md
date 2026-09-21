# **Module 3 - Branching and Merging**

* What are Branches
* Working with Branches
* Merging and Rebasing
* When to Use Each
* The Workflow Most Teams Use
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

# **Merging and Rebasing**
<div class="text-xl">

Both bring work from one branch into another. They differ in the history they leave behind.

* **Merging** joins two branches together and records a **merge commit**
  * Your original commits stay exactly as they are
* **Rebasing** replays your commits on top of another branch
  * Your original commits are **rewritten** as new commits, giving a straight line

</div>

```text
Before          main     A---B---E
                              \
                feature        C---D

After merge     main     A---B---E---M       M = merge commit
                              \     /
                               C---D

After rebase    feature  A---B---E---C'--D'  C' D' = rewritten commits
```

---

# **When to Use Each**
<div class="text-xl">

* **Reach for merge when:**
  * The branch is shared and others have already pulled it
  * You want the full story of how the work came together
  * You are merging a Pull Request on GitHub — this is the default
* **Reach for rebase when:**
  * The branch is yours alone and has not been shared
  * You want the latest `main` without adding a merge commit
  * You want `git log` to read as a straight line

**Rule of thumb:** never rebase a branch someone else is working on. Rewriting
shared history causes problems for everyone who already has those commits.
</div>

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

# **Rebasing Branches**
<div class="text-xl">

* To rebase `main` into your current branch:
  * `git switch main` (swap to main)
  * `git pull` (update main branch)
  * `git checkout {insert-branch-name}` (swap back to your branch)
  * `git rebase main` (rebase your branch on top of main)
* Already pushed the branch? Rebasing rewrites it, so you have to force push:
  * `git push --force-with-lease`
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
   1. `git checkout add-feature-rebase`
   2. `git rebase main`
</div>

---

# **The Workflow Most Teams Use**
<div class="text-xl">

Many teams never merge `main` into a branch at all. Instead:

1. **Rebase** your branch on `main` to pick up the latest work
2. **Push** your branch and open a Pull Request
3. **Squash and merge** the Pull Request on GitHub

`main` ends up with **one commit per Pull Request**. The work-in-progress
commits on your branch never reach it, so the history reads as a list of
completed changes.

This is why some teams turn off "Create a merge commit" in their repository
settings — more on those options in Module 4.
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
