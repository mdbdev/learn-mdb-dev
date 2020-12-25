---
layout: page
title: Mini-Project 2
page_order: 0
description: None
parent: Projects
grand_parent: React Native
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

## App Requirements
### Task 1: Movie List Screen
1. Display a list of movies, with the movie poster image, title, and any other information you think is important. ([Hint](https://reactnative.dev/docs/flatlist))
2. If a user taps on a movie, take them to the Movie Detail Screen, and pass the current movie object. ([Hint](https://reactnavigation.org/docs/params))
3. Include a "Filter" button in the navigation bar that takes a user to the Movie Filter Screen. This should be a **Modal** transition. ([Hint](https://reactnavigation.org/docs/modal))

### Task 2: Movie Detail Screen
1. Display the movie poster image and all other metadata associated with the movie in a clean, readable format.

### Task 3: Movie Filter Screen
1. Allow the user to filter by actor and genre (in a multiple-select fashion) ([Hint](https://reactnavigation.org/docs/params/#passing-params-to-a-previous-screen)).


## Starter Code
The starter code is available at [this link](https://github.com/mdbdev/reactnative-mp2.git). Here are the commands to get started.

```
git clone https://github.com/mdbdev/reactnative-mp2.git
cd reactnative-mp1
yarn install
expo install
expo start
```
The starter code contains the three screens you'll need: `MovieListScreen`, `MovieDetailScreen`, and `MovieFilterScreen`.

Here are other files that you should read over:

- `App.js` - serves as the entry point of the application. Defines the app navigation stack.
- `movies.json` - contains the iMDB movie dataset as a JSON array.

## Submission
To submit your project, you'll need to create a new project on GitHub and push your changes to that project. Make sure the project is public and includes a `README.md` with screenshots of your app.

You should submit your assignment to [https://go.mdb.dev/submit-project/](https://go.mdb.dev/submit-project/).