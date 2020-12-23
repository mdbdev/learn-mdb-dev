---
layout: page
title: Mini-Project 1
page_order: 1
description: None
nav_exclude: true
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

## Starter Code
The starter code is available at [this link](https://github.com/mdbdev/reactnative-mp1.git). Here are the commands to get started.

```
git clone https://github.com/mdbdev/reactnative-mp1.git
cd reactnative-mp1
yarn install
expo install
expo start
```
The starter code contains a framework for getting started, including a Home Screen and a Game Screen. You'll be making all of your changes to `GameScreen.jsx`.

Here are other files that you should read over:

- `App.js` - serves as the entry point of the application. Defines the app navigation stack.
- `HomeScreen.jsx` - contains the HomeScreen, which is the landing page of the app.
- `GameScreen.jsx` - contains the GameScreen, which is where the game is played.
- `Styles.js` - contains the CSS stylesheet for the app.
- `Constants.js` - contains the list of all MDB members.

## Game Requirements
1. **Member Picture** - Randomly display a picture of a member on the screen
2. **Name Options** - Display four options below the picture as buttons, each with different names that may correspond to the picture (one of the names should actually be correct, but the others can be random – be sure you don’t randomly also select the correct answer)
3. **Score** - Display a score count for the user – when the user correctly answers, increase the score by 1. Otherwise, just move on to the next question.
4. **Answer Display** - You can go from one question to another just by changing the image and button values, but there should be a one second delay in between questions where the button the user pressed flashes either red or green (depending on whether they’re correct or not). You’ll have to look up how to implement timers.
5. **Timer** - Add a timer that limits the user to 5 seconds to answer the question. If they take up the full 5 seconds, the question is counted as incorrect. 

For this project, the starter code provides you with a fair amount of structure. Make sure to closely read the contents of `GameScreen.jsx` before getting started!

## Submission
To submit your project, you'll need to create a new project on GitHub and push your changes to that project. Make sure the project is public and includes a `README.md` with screenshots of your app.

You should submit your assignment to [https://go.mdb.dev/submit-project/](https://go.mdb.dev/submit-project/).