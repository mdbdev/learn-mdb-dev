---
layout: page
title: Mini-Project 1
page_order: 0
description: None
parent: Projects
grand_parent: Overview
---

# Mini-Project 1: Match the Members
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Project Description
Welcome to MDB! As a new member, you'll be building a simple, multiple-choice trivia game to see how fast you can learn everyone’s names.

You will be working alone for this project.

## Game Requirements
1. **Member Picture** - Randomly display a picture of a member on the screen.
2. **Name Options** - Display four options below the picture as buttons, each with different names that may correspond to the picture (one of the names should actually be correct, but the others can be random – be sure you don’t randomly also select the correct answer).
3. **Score** - Display a score count for the user (# correct / # total).
4. **Timer** - Add a timer that limits the user to 5 seconds to answer the question. If they take up the full 5 seconds, the question is counted as incorrect.  

## Starter Code

If you're a member of MDB, please use the invite link provided by your instructor to create your own copy of the starter code. For all others, the starter code is available as a template [here](https://github.com/mdbdev/reactnative-mp1).

```
git clone [YOUR_REPOSITORY_LINK_HERE]
cd reactnative-mp1
yarn install
expo install
expo start
```

The starter code contains a framework for getting started, including a Home Screen and a Game Screen. **You'll be making all of your changes to `GameScreen.jsx`.**

Here are other files that you should read over:

- `App.js` - serves as the entry point of the application. Defines the app navigation stack.
- `HomeScreen.jsx` - contains the HomeScreen, which is the landing page of the app.
- `GameScreen.jsx` - contains the GameScreen, which is where the game is played.
- `Styles.js` - contains the CSS stylesheet for the app.
- `Constants.js` - contains the list of all MDB members.

For this project, the starter code provides you with a fair amount of structure. Make sure to closely read the contents of `GameScreen.jsx` before getting started!

## Demo

<video muted controls width="40%" style="display:block; margin:0 auto; border-style: dotted; border-width: 1px; border-color: #ebeff0">
    <source src="assets/mp1.MP4" type="video/mp4">
</video>

## Submission

To submit your project, simply commit and push your changes to your personal project repository. We encourage you to commit frequently, so it's easy to revert to a prior commit if needed.

```
git add .
git commit -m "all features working"
git push origin master
```

Additionally, please submit a screen recording of your working app here: [https://go.mdb.dev/submit-project/](https://go.mdb.dev/submit-project/).

