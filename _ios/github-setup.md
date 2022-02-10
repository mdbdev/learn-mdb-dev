---
layout: page
title: Github Setup
nav_order: 2
has_children: false
description: None
has_toc: false
---

# Github Setup

For all of the mini-projects and demos we will be using Git for source control. For that, you will need to have a [Github](http://github.com/) account. If you need a refresher on the Terminal commands, you can check out a cheat sheet [here](https://gist.github.com/poopsplat/7195274).

## Create a Github Repo

First go to your [Github](http://github.com/) and login to your account. On the left you should see the option to create a new repo.

<img src="/assets/images/github-repo-create.png"
    alt="Create Github Repo"
    style="width: 442px; display: block; margin: auto;" />

In the dialogue, pick a name for your repository. This will be your training program portfolio by the end of the semester. You should initialize it as a _public repo_ and do not include README, .gitignore, or license.

After clicking create, your remote repo will be ready. You should see a URL ending with `.git`, this will be the remote reference of your repository.

<img src="/assets/images/github-repo-url.png"
    alt="Create Github URL"
    style="width: 100%; display: block; margin: auto;" />

Copy this URL. Then in the terminal, use the following commands to create folder name `Developer` in the home directory and clone the Github repo:

```bash
mkdir ~/Developer && cd ~/Developer
git clone [URL]
```

Use `cd` to go into the cloned project folder, and add our starter code remote under the alias `starter`:

```bash
cd [folder-name]
git remote add starter https://github.com/Miclin1024/MDB-iOS-TP.git
git pull starter fa21/students/main  --allow-unrelated-histories
```

This should open your default CLI text editor asking you to confirm the merge. If yours is `vim`, type `:wq` to save and exit.

<img src="/assets/images/github-repo-merge.png"
    alt="Create Github URL"
    style="width: 100%; display: block; margin: auto;" />

Now take a look at your `README.md`, the first line should say
>  **\# MDB Project Portfolio**

You can use `git push` to submit the commit to your remote. After doing so, your README on github should also be updated.
