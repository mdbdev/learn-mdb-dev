---
layout: page
title: Mini-Project 3B
page_order: 3
description: None
parent: Projects
grand_parent: Overview
---

# Mini-Project 3B: MDB Socials
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---


## Project Description

Congratulations on finishing MDB Socials Part A! In this project, we'll be adding several features to your app. If you don't feel comfortable building off of your code, feel free to reach out to an instructor for the staff solution to Part A!

## App Requirements

1. **Create an Account / Sign In** - Add functionality to [create a user account](https://firebase.google.com/docs/auth/web/password-auth#create_a_password-based_account) & [sign in](https://firebase.google.com/docs/auth/web/password-auth#sign_in_a_user_with_an_email_address_and_password) to your app.
    - The password [text input](https://callstack.github.io/react-native-paper/text-input.html) should be "secure" (it should show dots instead of the user's entered password).
    - If a user who's signed in quits your app and re-opens it, the they should [still be signed in](https://firebase.google.com/docs/auth/web/auth-state-persistence).
    - If an error occurs at any point, an [error](https://callstack.github.io/react-native-paper/snackbar.html) should be shown to the user.
2. **Sign Out** - Add a button that allows a user to [sign out](https://firebase.google.com/docs/auth/web/password-auth#next_steps).
3. **Reset Password** - Include functionality to [reset a user's password](https://firebase.google.com/docs/auth/web/manage-users#send_a_password_reset_email).
4. **Delete Social** - Include functionality for a user to delete socials that they've created. Make sure that they can't delete socials that other users have created.
5. **Like Button** - Add a "Like" button underneath each social, as well as a count of how many unique users have liked a particular social. A user should only be able to like a social once.


## Starter Code

If you're a member of MDB, please use the invite link provided by your instructor to create your own copy of the starter code. For all others, the starter code is available as a template [here](https://github.com/mdbdev/reactnative-mp3-a).

```
git clone [YOUR_REPOSITORY_LINK_HERE]
cd reactnative-mp3-a
yarn install
expo install
expo start
```

In this project, the screens and navigation stack have been set up for you. You'll need to implement navigation between screens (refer to Project 2) and use state and effect hooks (refer to Project 1 & Lesson 1). You'll also need to read over documentation for both Firebase and several third-party component libraries. Details are provided in the starter code comments.

Note that the starter code contains all of the libraries that you'll need to create this app - you shouldn't need to install any external libraries, like Firebase, using Yarn!

## React Native Paper

For this project, we'll be using [React Native Paper](https://callstack.github.io/react-native-paper/), a Material Design component library for React Native, to help us with UI/UX design. RN Paper comes with a variety of components that may be helpful at various points of this project (e.g. Card, TextInput, Snackbar, etc.). Make sure to read the documentation to identify what props (customization options) are available for each component!

## Firebase Setup

This project will require you to set up a Firebase project and database/storage instance. To do so, follow the instructions below.

1. [Sign into Firebase](https://console.firebase.google.com) using your Google account.
2. In the Firebase Console, click **Add Project**, then enter a **Project Name** (MDB Socials).
3. Continue through the setup and click **Create Project**.
4. On the project dashboard, select the "Web" option to create a new Web app (you can also do this through the settings page, accessible through the sidebar).
5. Enter an **App Nickname** (call it "MDB Socials React Native") and click **Register**.
6. Copy just the `firebaseConfig` variable from the code snippet provided and add it to the appropriate location in the `FeedScreen.jsx` file.

To set up Cloud Firestore (our NoSQL cloud database):

1. Click on the [Cloud Firestore](https://console.firebase.google.com/project/_/firestore) tab in the sidebar.
2. Click **Create Database** and choose **Test Mode** when prompted.
3. Select any location for your instance and continue to click **Done**.

To set up Cloud Storage (our image storage bucket):

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

Additionally, please submit a screen recording of your working app here: [https://go.mdb.dev/submit-project/](https://go.mdb.dev/submit-project/).

