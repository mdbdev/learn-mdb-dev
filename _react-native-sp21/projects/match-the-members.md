---
layout: page
title: Mini-Project 1
page_order: 0
description: None
parent: Projects
grand_parent: Overview - RN
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

## Game Requirements
1. **Member Picture** - Randomly display a picture of a member on the screen.
2. **Name Options** - Display four options below the picture as buttons, each with different names that may correspond to the picture (one of the names should actually be correct, but the others can be random – be sure you don’t randomly also select the correct answer).
3. **Score** - Display a score count for the user (# correct / # total).
4. **Timer** - Add a timer that limits the user to 5 seconds to answer the question. If they take up the full 5 seconds, the question is counted as incorrect.  

Make sure to install the [VSCode Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) extension to format and auto-style your code. The keyboard shortcut `CMD/CTRL/OPTION-SHIFT-F` does this for you!

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

## Debugging

This [debugging guide](https://docs.expo.io/get-started/errors/) by Expo briefly walks through debugging React Native apps using the Expo Client interface. The [React Native docs](https://reactnative.dev/docs/debugging) talk about debugging more complex apps. For these projects, if you're stuck on something in particular, here's what you could try –

- Try looking at your code to see if you can catch any obvious typos. Since JavaScript isn't a compiled language, lots of typo-related bugs make it through to runtime.

- Try pasting the error into Google and clicking on the top StackOverflow link. (If you're using StackOverflow, make sure to actually read the suggested answer!)

- Try adding `console.log(...)` statements to the appropriate places.
- [For Members] Feel free to send a message to the React Native help chat or come to OH!

## Demo

<iframe width="560" height="315" src="https://www.youtube.com/embed/ydvKPzkS8Pw" frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


## Submission

To submit your project, first commit and push your changes to your personal project repository. We encourage you to commit frequently, so it's easy to revert to a prior commit if needed.

```
git add .
git commit -m "all features working"
git push origin master
```

Then, link your repository to the Gradescope assignment for this project.

Finally, please submit a screen recording of your working app here: [https://go.mdb.dev/submit-project/](https://go.mdb.dev/submit-project/).

