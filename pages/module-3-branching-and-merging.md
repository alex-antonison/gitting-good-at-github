# **Module 3 - Branching and Merging**

* What are Branches
* Working with Branches
* Merging and Rebasing
* Two Reasons to Merge or Rebase
* Why Some Teams Merge Everything
* Why Some Teams Rebase Everything
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

# **Two Reasons to Merge or Rebase**
<div class="text-xl">

* **Updating your feature branch.** `main` moved on while you were working and
  you need to catch up
  * Someone merged a change that your work depends on
  * Your Pull Request has conflicts that must be resolved before it can merge
  * You want to check your work against the latest code before review
  * Either merging or rebasing does this — the next slides show both
* **Bringing your finished work into `main`.** Your branch is done and reviewed
  * On a team this normally happens by merging a Pull Request on GitHub rather
    than locally

</div>

---

# **Merging Branches**
<div class="text-2xl">

* To merge another branch into your current branch:
  * `git merge {insert-branch-name}`
* To merge `main` into your current branch:
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

# **Why Some Teams Merge Everything**
<div class="text-xl">

Some teams merge for all of their work and never rewrite history. Their
reasons:

* **The history is what actually happened.** The commits on `main` are the
  same commits that were written and tested, not rewritten copies
* **Nobody has to force push.** Merging never rewrites a branch, so there is
  no chance of overwriting work someone else has already pushed
* **Conflicts are resolved once.** A rebase can ask you to resolve the same
  conflict again for each commit it replays
* **The merge commit records when work came together**, which helps when
  tracing a release or reviewing history later
</div>

---

# **Why Some Teams Rebase Everything**
<div class="text-xl">

Other teams rebase for all of their work so that `main` stays a straight line.
Their reasons:

* **Merge commits carry no information.** "Merge branch 'main' into feature"
  repeated many times can outnumber the commits that changed something
* **Reverting is simpler.** `git revert {commit}` works directly on a normal
  commit, while reverting a merge commit means choosing which parent to keep
* **`git bisect` is easier to read.** Every commit has one parent, so a bad
  commit points at a single change rather than a combination of two
* **Changelog tools** can build release notes when each commit is one change

Both approaches are widely used — what matters is that a team picks one and
stays consistent.
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
