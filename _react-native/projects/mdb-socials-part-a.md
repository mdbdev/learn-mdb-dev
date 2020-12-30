---
layout: page
title: Mini-Project 3A
page_order: 2
description: None
parent: Projects
grand_parent: Overview
---

# Mini-Project 3A: MDB Socials

{: .no_toc }

## Table of contents

{: .no_toc .text-delta }

1. TOC

{:toc}

---

## Project Description

In this project, we’ll be exploring backend data storage/retrieval via Firebase. One of the cool features of Firebase over most other tools is its real-time functionality (in other words, Firebase automatically notifies you when some value in the database is updated). We’ll be building an app called MDB Socials, which will allow members to post and share social events.

*Note: MDB Socials is the most challenging and most important of all of the MDB Training Program projects. Expect it to be time consuming and difficult but don’t get discouraged! Start early and come to project parties to get help. We've also broken the project into two parts (A and B) to reduce workload and keep you on track.*

## App Requirements

1. **Feed Screen** - Display a list of social events posted by any member using the app, sorted by date.
2. **Detail Screen** - Display detailed information about a particular social.
3. **New Social Screen** - Allow users to create and post new social events.

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

## Firebase Setup

This project will require you to set up a Firebase project and database instance. To do so, follow the instructions below.

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


## Submission

To submit your project, simply commit and push your changes to your personal project repository. We encourage you to commit frequently, so it's easy to revert to a prior commit if needed.

```
git add .
git commit -m "all features working"
git push origin master
```

Additionally, please submit a screen recording of your working app here: [https://go.mdb.dev/submit-project/](https://go.mdb.dev/submit-project/).

