# Git and GitHub Guidelines

This guideline was developed by the members of the UFRJ Aerospace Research Group, composed of <img src="./images/Logo Rockets.png" alt="" height="20px" valign="bottom"> Minerva Rockets and <img src="./images/Logo Sats.png" alt="" height="20px" valign="bottom"> Minerva Sats, in order to train current and future members, as well as those who may be interested, so that everyone will have a workflow using git and github seamlessly, safely and free of errors and problems. Avante!!!

### Table of contents

1. [Why Git?](#Why-Git?)
2. [Installing Git on your Computer](#Installing-Git-on-your-Computer)
3. [Configuring Git](#Configuring-Git)
4. [Basic Git Commands](#Basic-Git-Commands)
5. [Git Flow](#Git-Flow)
6. [GitHub Tutorial](#GitHub-Tutorial)
7. [Git Style Guide](#Git-Style-Guide)

## Why Git?

According to the latest [Stack Overflow developer survey](https://insights.stackoverflow.com/survey/2017#technology), more than 70 percent of developers use Git, making it the most-used VCS (Version Control System) in the world. Git is commonly used for both open source and commercial software development, **with significant benefits** for individuals, teams and businesses.

* Git lets developers see the entire timeline of their changes, decisions, and progression of any project in one place. From the moment they access the history of a project, the developer has all the context they need to understand it and start contributing.

* Developers can work any time. With a VCS like Git, collaboration can happen any time while maintaining source code integrity. Using branches, developers can safely propose changes to production code.

* Businesses using Git can break down communication barriers between teams and keep them focused on doing their best work. Plus, Git makes it possible to align experts across a business to collaborate on major projects.


## Installing Git on your Computer

Install Git on your computer. Most Linux distributions have Git available as a package to install. On <img src="./images/linuxlogo.png" alt="" height="24px" valign="bottom"> Linux, type `sudo apt-get install git` on the terminal. If you are on <img src="./images/windowslogo.png" alt="" height="20px" valign="middle"> Windows, you can [download Git](https://git-scm.com/downloads) and install it in a few clicks.

## Configuring Git

Immediately after the installation open Git Bash or Linux Terminal, set your name and contact e-mail following the commands below. The name and e-mail will become part of your commits. Therefore we ask to use their real names written in capital letters, eg "Pedro Rodrigues" and not "pedro rodrigues" or even "pedro1337".

```shell
$ git config --global user.name "Your Name"
$ git config --global user.email "youremail@domain.com"
```

Unless you are the repository maintainer, it is wise to set your Git to not push changes in file permissions:

```shell
$ git config --global core.filemode false
```

In addition, it is recommended to verify that the Git installation is not performing any transformation between LFs and CRLFs. All of our repositories **use only LFs** and you must **fetch/edit and push** it this way.

```shell
$ git config --global core.autocrlf false
```

## Basic Git Commands

To use Git, developers use specific commands to copy, create, change, and combine code. These commands can be executed directly from the command line. Here are some common commands for using Git:
* `git init` initializes a brand new Git repository and begins tracking an existing directory. It adds a hidden subfolder within the existing directory that houses the internal data structure required for version control.
* `git clone` creates a local copy of a project that already exists remotely. The clone includes all the project’s files, history, and branches.
* `git add` stages a change. Git tracks changes to a developer’s codebase, but it’s necessary to stage and take a snapshot of the changes to include them in the project’s history. This command performs staging, the first part of that two-step process. Any changes that are staged will become a part of the next snapshot and a part of the project’s history. Staging and committing separately gives developers complete control over the history of their project without changing how they code and work.
* `git commit` saves the snapshot to the project history and completes the change-tracking process. In short, a commit functions like taking a photo. Anything that’s been staged with `git add` will become a part of the snapshot with `git commit`.
* `git status` shows the status of changes as untracked, modified, or staged.
* `git branch` shows the branches being worked on locally.
* `git merge` merges lines of development together. This command is typically used to combine changes made on two distinct branches. For example, a developer would merge when they want to combine changes from a feature branch into the master branch for deployment.
* `git pull` updates the local line of development with updates from its remote counterpart. Developers use this command if a teammate has made commits to a branch on a remote, and they would like to reflect those changes in their local environment.
* `git push` updates the remote repository with any commits made locally to a branch.

Learn more from a [full reference guide to Git commands](https://git-scm.com/docs).

## Git Flow

The Git Flow is a lightweight, branch-based workflow built around core Git commands used by teams around the globe, including ours.

The Git Flow has six steps, each with distinct benefits when implemented:

1. **Create a branch:** Topic branches created from the canonical deployment branch (usually `master`) allow teams to contribute to many parallel efforts. Short-lived topic branches, in particular, keep teams focused and results in quick ships.
2. **Add commits:** Snapshots of development efforts within a branch create safe, revertible points in the project’s history.
3. **Open a pull request:** Pull requests publicize a project’s ongoing efforts and set the tone for a transparent development process.
4. **Discuss and review code:** Teams participate in code reviews by commenting, testing, and reviewing open pull requests. Code review is at the core of an open and participatory culture.
5. **Merge:** Upon clicking merge, GitHub automatically performs the equivalent of a local ‘git merge’ operation. GitHub also keeps the entire branch development history on the merged pull request.
6. **Deploy:** Teams can choose the best release cycles or incorporate continuous integration tools and operate with the assurance that code on the deployment branch has gone through a robust workflow.

## GitHub Tutorial

For developers new to the command line, here it is a series of tutorials on Git to help you.

### Example: Start a new repository and publish it to GitHub

First, you will need to create a new repository on GitHub. You can learn how to create a new repository in the [GitHub Hello World guide](https://guides.github.com/activities/hello-world/#repository). Do not initialize the repository with a README, .gitignore or License. This empty repository will await your code.

```shell
# create a new directory, and initialize it with git-specific functions
$ git init my-repo

# change into the `my-repo` directory
$ cd my-repo

# create the first file in the project
$ touch README.md

# git isn't aware of the file, stage it
$ git add README.md

# take a snapshot of the staging area
$ git commit -m "add README to initial commit"

# provide the path for the repository you created on github
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git

# push changes to github
$ git push --set-upstream origin master
```

### Example: Contribute to an existing repository

```shell
# download a repository on GitHub.com to our machine
$ git clone https://github.com/me/repo.git

# change into the `repo` directory
$ cd repo

# create a new branch to store any new changes
$ git branch my-branch

# switch to that branch (line of development)
$ git checkout my-branch

# make changes, for example, edit `file1.md` and `file2.md` using the text editor

# stage the changed files
$ git add file1.md file2.md

# take a snapshot of the staging area (anything that's been added)
$ git commit -m "my snapshot"

# push changes to github
$ git push --set-upstream origin my-branch
```

## Git Style Guide

This is a Git Style Guide inspired by [How to Get Your Change Into the Linux Kernel](https://www.kernel.org/doc/html/latest/process/submitting-patches.html), the [git man pages](https://git-scm.com/doc) and various practices popular among the community.

### Table of contents

1. [Branches](#branches)
2. [Commits](#commits)
3. [Messages](#messages)
4. [Merging](#merging)
5. [Misc.](#misc)

#### Branches

* Choose _short_ and _descriptive_ names:

  ```shell
  # good
  $ git checkout -b rocket-routine

  # bad - too vague
  $ git checkout -b lasc-code
  ```
* Use lowercase in branch names. External ticket identifiers with uppercase letters are a valid exception. Use _hyphens_ to separate words.

  ```shell
  $ git checkout -b new-feature      # good
  $ git checkout -b T321-new-feature # good (Phabricator task id)
  $ git checkout -b New_Feature      # bad
  ```
* When several people are working on the *same* feature, it might be convenient
  to have *personal* feature branches and a *team-wide* feature branch.
  Use the following naming convention:

  ```shell
  $ git checkout -b feature-a/master # team-wide branch
  $ git checkout -b feature-a/maria  # Maria's personal branch
  $ git checkout -b feature-a/nick   # Nick's personal branch
  ```

  Merge at will the personal branches to the team-wide branch (see ["Merging"](#merging)).
  Eventually, the team-wide branch will be merged to "master".

* Delete your branch from the upstream repository after it's merged, unless there is a specific reason not to.

  Tip: Use the following command while being on "master", to list merged
  branches:

  ```shell
  $ git branch --merged | grep -v "\*"
  ```

#### Commits

* Each commit should be a single _logical change_. Don't make several _logical changes_ in one commit. For example, if a patch fixes a bug and optimizes the performance of a feature, split it into two separate commits.

  _Tip: Use `git add -p` to interactively stage specific portions of the modified files._

* Don't split a single _logical change_ into several commits. For example, the implementation of a feature and the corresponding tests should be in the same commit.

* Commit _early_ and _often_. Small, self-contained commits are easier to understand and revert when something goes wrong.

* Commits should be ordered _logically_. For example, if _commit X_ depends
  on changes done in _commit Y_, then _commit Y_ should come before _commit X_.

Note: While working alone on a local branch that _has not yet been pushed_, it's
fine to use commits as temporary snapshots of your work. However, it still
holds true that you should apply all of the above _before_ pushing it.

#### Messages

* Committing everything in a single line usually results in non informative, ambiguous commit messages.

* The summary line (ie. the first line of the message) should be _descriptive_ yet _succinct_. Ideally, it should be no longer than _50 characters_. It should be capitalized and written in imperative present tense. It should not end with a period since it is effectively the commit _title_:

  ```shell
  # good - imperative present tense, capitalized, fewer than 50 characters
  Mark huge records as obsolete when clearing hinting faults

  # bad
  fixed ActiveModel::Errors messages failing when it had more than 5 characteres.
  ``` 
* After that should come a blank line followed by a more thorough description. It should be wrapped to *72 characters* and explain *why* the change is needed, *how* it addresses the issue and what *side-effects* it might have.
  
  It should also provide any pointers to related resources (eg. link to the corresponding issue in a bug tracker):

  ```text
  Short (50 chars or fewer) summary of changes

  More detailed explanatory text, if necessary. Wrap it to
  72 characters. In some contexts, the first
  line is treated as the subject of an email and the rest of
  the text as the body.  The blank line separating the
  summary from the body is critical (unless you omit the body
  entirely); tools like rebase can get confused if you run
  the two together.

  Further paragraphs come after blank lines.

  - Bullet points are okay, too

  - Use a hyphen or an asterisk for the bullet,
    followed by a single space, with blank lines in
    between
  ```
  Ultimately, when writing a commit message, think about what you would need to know if you run across the commit in a year from now.

* If a commit is going to be squashed to another commit use the `--squash` and `--fixup` flags respectively, in order to make the intention clear:

  ```shell
  $ git commit --squash f387cab2
  ```

  _(Tip: Use the `--autosquash` flag when rebasing. The marked commits will be squashed automatically.)_

#### Merging

* **Do not rewrite published history.** The repository's history is valuable in its own right and it is very important to be able to tell *what actually happened*. Altering published history is a common source of problems for anyone working on the project.

* However, there are cases where rewriting history is legitimate. These are when:

  * You are the only one working on the branch and it is not being reviewed.

  * You want to tidy up your branch (eg. squash commits) and/or rebase it onto the "master" in order to merge it later.

  That said, *never rewrite the history of the "master" branch* or any other special branches (ie. used by production).

* Keep the history _clean_ and _simple_. _Just before you merge_ your branch:

    1. Make sure it conforms to the style guide and perform any needed actions if it doesn't (squash/reorder commits, reword messages etc.)

    2. Rebase it onto the branch it's going to be merged to:

       ```shell
       [my-branch] $ git fetch
       [my-branch] $ git rebase origin/master
       # then merge
       ```

       This results in a branch that can be applied directly to the end of the "master" branch and results in a very simple history.

       _(Note: This strategy is better suited for projects with short-running branches. Otherwise it might be better to occassionally merge the "master" branch instead of rebasing onto it.)_

* If your branch includes more than one commit, do not merge with a fast-forward:

  ```shell
  # good - ensures that a merge commit is created
  $ git merge --no-ff my-branch

  # bad
  $ git merge my-branch
  ```
#### Misc.

* _Be consistent._ This is related to the workflow but also expands to things like commit messages, branch names and tags. Having a consistent style throughout the repository makes it easy to understand what is going on by looking at the log, a commit message etc.

* _Test before you push._ Do not push half-done work.

* Use [annotated tags](https://git-scm.com/book/en/v2/Git-Basics-Tagging#_annotated_tags) for marking releases or other important points in the history. Prefer [lightweight tags](https://git-scm.com/book/en/v2/Git-Basics-Tagging#_lightweight_tags) for personal use, such as to bookmark commits for future reference.

* Keep your repositories at a good shape by performing maintenance tasks
  occasionally:

  * [`git-gc(1)`](http://git-scm.com/docs/git-gc)
  * [`git-prune(1)`](http://git-scm.com/docs/git-prune)
  * [`git-fsck(1)`](http://git-scm.com/docs/git-fsck)

## References

* [Git for developers](https://docs.moodle.org/dev/Git_for_developers)
* [Git Handbook](https://guides.github.com/introduction/git-handbook/#github)
* [Git Style Guide](https://github.com/agis/git-style-guide/blob/master/README.md)
* [Git Documentation](https://git-scm.com/doc)
