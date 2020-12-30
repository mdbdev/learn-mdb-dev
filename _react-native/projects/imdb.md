---
layout: page
title: Mini-Project 2
page_order: 0
description: None
parent: Projects
grand_parent: Overview
---

# Mini-Project 2: iMDB
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Project Description
In their pursuit of a mobile app development agency, executives at iMDB stumbled upon MDB! They've hired you to create their mobile app for them.

Note: Make sure to install the [VSCode Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) extension to format and auto-style your code. The keyboard shortcut `CMD/CTRL-SHIFT-F` does this for you!

## App Requirements

1. Display a list of movies, with the movie poster image, title, and any other information you think is important.
2. If a user taps on a movie, take them to a screen that showcases the movie in detail. Include all attributes about the movie from the dataset.
3. Include a "Filter" button in the navigation bar that takes a user to a screen that allows users to filter by actor in a multiple-select fashion.

## Starter Code

If you're a member of MDB, please use the invite link provided by your instructor to create your own copy of the starter code. For all others, the starter code is available as a template [here](https://github.com/mdbdev/reactnative-mp2).

```
git clone [YOUR_REPOSITORY_LINK_HERE]
cd reactnative-mp2
yarn install
expo install
expo start
```

This project requires you to set up a navigation stack for your app from scratch. Hints are provided in the starter code, along with links to relevant documentation on how to do this.

You will need to make changes to the following files:

- `MovieListScreen.jsx` - holds the main screen (list of movies)
- `MovieDetailScreen.jsx` - holds the detail screen (info about a movie)
- `MovieFilterScreen.jsx` - holds the filter screen
- `App.js` - serves as the entry point of the application; holds app navigation stack

The list of movies is contained within `assets/movies.json`.


## Submission

To submit your project, simply commit and push your changes to your personal project repository. We encourage you to commit frequently, so it's easy to revert to a prior commit if needed.

```
git add .
git commit -m "all features working"
git push origin master
```

Additionally, please submit a screen recording of your working app here: [https://go.mdb.dev/submit-project/](https://go.mdb.dev/submit-project/).

