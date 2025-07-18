# **Module 4 - Collaboration on GitHub**

* Branching Strategies
* Working with a Ticket
* Creating Pull Requests
* Reviewing Pull Requests
* Merge Types

---

# **Branching Strategies**

* **Git Flow.** A branching model that uses feature, develop, release, and hotfix branches to manage complex release cycles with multiple environments.
* **Trunk-Based Development.** A streamlined approach where developers work in short-lived branches to enable continuous integration and rapid delivery.

---

# **Working with a Ticket**
<div class="text-2xl">

* [Working with tickets](https://docs.github.com/en/issues/tracking-your-work-with-issues/creating-an-issue) is a common practice to track tasks, bugs, or features.
* _If a ticket does not exist,_ while there are some circumstances where you may not need a ticket, it is generally a good practice to create one even for ad hoc requests or small changes.
  * Creating a ticket is an opportunity to take a step back and think about the work you are about to do, which can help clarify the goals and the scope of changes or an ad hoc data request.
* Tickets help provide context and create a record of the work being done.
* Tickets can be used to show how a team provides value to the organization.
</div>

---

# **Creating Pull Requests**
<div class="text-2xl">

* [To create a successful Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request), it should convey the following:
  * **Context.** Why are these changes being made to the code base?
  * **Description.** You should include a summary of the changes being made.
  * **Tests + Documentation.** You should include any required tests or documentation.
  * **Pull Request Template.** Streamlines organizing Pull Request descriptions.
  * **Draft Pull Request.** Create a "draft" pull request indicating a PR is still in progress.
</div>

---

# **When to Create a Pull Request**
<div class="text-2xl">

* When you first start working on a feature, you can create a **Draft Pull Request** which allows you to share your work in progress with others.
  * This is optional, but it can be helpful to get early feedback or to signal that you are working on something.
* When you are ready to merge your changes, you can create a **Pull Request** or mark your **Draft Pull Request** ready for review.
  * This is the formal request for others to review and approve your changes before they are merged.
</div>

---

# **Reviewing Pull Requests**

* [When reviewing a Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/reviewing-proposed-changes-in-a-pull-request), you can do a couple of things:
  * **In-line Code Comments.** Making in-line comments helps direct someone directly to a bit of code.
  * **Suggested Changes.** Add a suggested change to help improve a Pull Request.
  * **Pull Request Comments.** These can be helpful if there is a high level comment about a Pull Request.

---
layout: two-cols
---

# **Merge Types**

* Merge
* Squash and merge (squerge)
* Rebase and merge

::right::

<div class="flex justify-center items-center h-full">
  <img src="./images/github-merge-types.png" />
</div>
