---
layout: page
title: Mini-Project 3A
page_order: 2
description: None
parent: Projects - RN
grand_parent: Overview - RN
---

# Mini-Project 3A: MDB Socials
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Project Description

In this project, we'll be building an app called MDB Socials, which will allow members to post and share social events! We'll be introducing three new frameworks –

- [Firebase](https://firebase.google.com) - for backend data storage/retrieval
- [TypeScript](https://www.typescriptlang.org) - for adding type checking to JavaScript
- [React Native Paper](https://callstack.github.io/react-native-paper/) - a component library that makes UI/UX simple

*Note: MDB Socials is the most challenging and most important of all of the MDB Training Program projects. Expect it to be time consuming and difficult but don’t get discouraged! Start early and come to project parties to get help. We've also broken the project into two parts (A and B) to reduce workload and keep you on track. **Also, ask questions in Slack - and help each other out!***

## App Requirements

1. **Feed Screen** - Display a list of social events posted by any member using the app, sorted by date.
    - If a social is added to Firebase, the list should [update automatically](https://firebase.google.com/docs/firestore/query-data/listen) without any user intervention.
2. **Detail Screen** - Display detailed information about a particular social.
3. **New Social Screen** - Allow users to create and post new social events.
    - Socials have the following attributes: title, location, description, [date](https://github.com/mmazzarolo/react-native-modal-datetime-picker), and [image](https://docs.expo.io/versions/latest/sdk/imagepicker/).
    - All fields should be validated before a social is created. If any fields are empty, show an error.
    - A loading indicator should be displayed somewhere when the social is being created.
    - When the social is created, the app should automatically return to the feed screen.

## Starter Code

If you're a member of MDB, please use the invite link provided by your instructor to create your own copy of the starter code. For all others, the starter code is available as a template [here](https://github.com/mdbdev/reactnative-mp3-a).

```
git clone [YOUR_REPOSITORY_LINK_HERE]
cd reactnative-mp3-a
yarn install
expo install
expo start
```

In this project, the screens and navigation stack have been set up for you! You'll need to implement **navigation between screens** (refer to Project 2). You'll also need to use **state and effect hooks** (refer to Project 1 & Lesson 1). 

Because we're now using TypeScript (which integrates nicely with React Navigation), you should be able to see auto-completed function suggestions on the `route` and `navigation` props that we used in Project 2!

You'll need to read over documentation for both Firebase and several third-party component libraries (date picker, image picker, etc.) - details are provided in the starter code comments. Note that the starter code already contains all of the libraries that you'll need to create this app - you shouldn't need to install any external libraries, like Firebase, using Yarn!

## Typescript

What is TypeScript? Here's a blurb from the [documentation](https://www.typescriptlang.org) that describes what it is, why we use it, and how it works.

> *TypeScript extends JavaScript by adding types. Types provide a way to describe the shape of an object, providing better documentation, and allowing TypeScript to validate that your code is working correctly. Writing types can be optional in TypeScript, because type inference allows you to get a lot of power without writing additional code!*
>
> *All valid JavaScript code is also TypeScript code. You might get type-checking errors, but that won't stop you from running the resulting JavaScript.*

Also, check out this video: [TypeScript in 100 Seconds](https://youtu.be/zQnBQ4tB3ZA).

Throughout the starter code, you'll see references to an `interface` object. Here's one example:

```
export interface SocialModel {
  eventDate: number;
  eventDescription: string;
  eventImage: string;
  ...
}
```

Here, we're essentally defining the structure of what the Social object should look like. In MP 2 (iMDB), the movie object that we used could take any shape or form throughout the different screens that we used it. In MP3, we ensure that wherever we create a `SocialModel` object, we'll always include these fields, and whenever we use an object of this type, we'll only be able to access these fields, and no other fields. 

## React Native Paper

For this project, we'll be using [React Native Paper](https://callstack.github.io/react-native-paper/), a Material Design component library for React Native, to help us with UI/UX design. RN Paper comes with a variety of components that may be helpful at various points of this project (e.g. [Card](https://callstack.github.io/react-native-paper/card.html), [TextInput](https://callstack.github.io/react-native-paper/text-input.html), [Snackbar](https://callstack.github.io/react-native-paper/snackbar.html), etc.). Make sure to read the documentation to identify what props (customization options) are available for each component!

## Firebase

This project will require you to set up a Firebase project and database/storage instance. To do so, follow the instructions below.

1. [Sign into Firebase](https://console.firebase.google.com) using your Google account.
2. In the Firebase Console, click **Add Project**, then enter a **Project Name** (MDB Socials).
3. Continue through the setup and click **Create Project**.
4. On the project dashboard, select the "Web" option to create a new Web app (you can also do this through the settings page, accessible through the sidebar).
5. Enter an **App Nickname** (call it "MDB Socials React Native") and click **Register**.
6. Copy just the `firebaseConfig` variable. Convert it to JSON (which will require adding quotes around the object's attributes). Store it in a new file called `keys.json` in your project's root directory. It should be identical in structure to the file called `keys.json.template`.

<u>To set up Cloud Firestore (our NoSQL cloud database):</u>

1. Click on the [Cloud Firestore](https://console.firebase.google.com/project/_/firestore) tab in the sidebar.
2. Click **Create Database** and choose **Test Mode** when prompted.
3. Select any location for your instance and continue to click **Done**.

<u>To set up Cloud Storage (our image storage bucket):</u>

1. Click on the [Cloud Storage](https://console.firebase.google.com/project/_/storage) tab in the sidebar.
2. Select any location for your instance and continue to click **Done**.
3. On your storage page, click on the "Rules" tab and change:
    `if request.auth != null;` to `if true;` to allow unauthenticated reads/writes to your bucket for testing.

## Demo

<iframe width="560" height="315" src="https://www.youtube.com/embed/80_w_NeuZEs" frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Submission

To submit your project, simply commit and push your changes to your personal project repository. We encourage you to commit frequently, so it's easy to revert to a prior commit if needed.

```
git add .
git commit -m "all features working"
git push origin master
```

Additionally, please submit a screen recording of your working app here: [https://mdb.dev/submit-project/](https://mdb.dev/submit-project/).

*Side Note: if you're on an M1 Mac, test & run your app on your phone, and not your simulator - there is a [known bug](https://github.com/expo/expo/issues/11291) that prevents image pickers from working in the simulator!*