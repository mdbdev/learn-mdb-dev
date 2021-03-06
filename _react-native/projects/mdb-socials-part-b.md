---
layout: page
title: Mini-Project 3B
page_order: 3
description: None
parent: Projects
grand_parent: Overview - RN
---

# Mini-Project 3B: MDB Socials
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---


## Project Description

Congratulations on finishing MDB Project 3A! In this project, we'll be adding several features to your app. You'll be provided with a fresh copy of starter code (with features from 3A implemented for you). Before you dive into this project, we recommend looking through our approach to implementing features from 3A, and comparing them to your code from last week!

## App Requirements

1. **Create an Account / Sign In** - Add functionality to [create a user account](https://firebase.google.com/docs/auth/web/password-auth#create_a_password-based_account) & [sign in](https://firebase.google.com/docs/auth/web/password-auth#sign_in_a_user_with_an_email_address_and_password) to your app.
    - The password [text input](https://callstack.github.io/react-native-paper/text-input.html) should be "secure" (it should show dots instead of the user's entered password).
    - If an error occurs at any point, an [error](https://callstack.github.io/react-native-paper/snackbar.html) should be shown to the user.
    - *In order to implement this feature, you'll need to first enable "Email/Password Authentication" in the "Authentication/Sign In Methods" tab of Firebase.*
2. **Sign Out** - Add a button that allows a user to [sign out](https://firebase.google.com/docs/auth/web/password-auth#next_steps).
3. **Reset Password** - Include functionality to [reset a user's password](https://firebase.google.com/docs/auth/web/manage-users#send_a_password_reset_email).
4. **Delete Social** - Include functionality for a user to delete socials that they've created. Make sure that they can't delete socials that other users have created.
5. **Like Button** - Add a "Like" button underneath each social, as well as a count of how many unique users have liked a particular social. A user should only be able to like a social once.
6. **Empty Social Text** - if the list of socials is empty, display a welcome message asking the user to post a new social instead of a blank screen. Hint: look into `ListEmptyComponent` of FlatList.



**Extra Credit**

- Add a "Share" button somewhere in the app that allows users to share socials with each other using a share sheet ([docs](https://docs.expo.io/versions/latest/react-native/share/)) [Difficulty: Easy]

- Add a button somewhere that allows users to add social events to their calendar ([docs](https://docs.expo.io/versions/v40.0.0/sdk/calendar/)) [Difficulty: Easy]

- Add a third-party sign in provider (e.g. [Sign in with Apple](https://docs.expo.io/versions/v40.0.0/sdk/apple-authentication/), [Sign in with Google](https://docs.expo.io/versions/latest/sdk/google-sign-in/), etc.). Here's a demo project that uses [Sign in with Apple](https://github.com/shomilj/feeds-react-native/blob/master/screens/AuthStack/AuthScreen/AuthScreen.main.tsx), and here's a guide on how to do this, and here are some [Expo Docs](https://docs.expo.io/guides/using-firebase/#listening-for-authentication) that might be helpful [Difficulty: Medium]

  

## Authentication Architecture

Our recommended authentication architecture goes as follows. It's based off of [this guide](https://rnfirebase.io/auth/usage).

- We configure our `App.js` to point to **EntryStackScreen**, which starts a Firebase `onAuthStateListener` which "fires" whenever the authentication state changes - e.g. a user signs in or signs out.

- If a user is **signed in**, EntryStackScreen returns the RootStackScreen.
- If a user is **signed out**, EntryStackScreen returns the AuthStackScreen.

With this architecture, we don't need to explicitly navigate between authentication screens and main screens when signing in or signing out - all of that "switching" happens automatically, as soon as Firebase detects that the authentication state was changed. Because EntryStackScreen is at the highest level of our app, we're going to be listening for state changes throughout the lifetime of our app, no matter what screen we're on!


## Starter Code

If you're a member of MDB, please use the invite link provided by your instructor to create your own copy of the starter code. For all others, the starter code is available as a template [here](https://github.com/mdbdev/reactnative-mp3-b).

```
git clone [YOUR_REPOSITORY_LINK_HERE]
cd reactnative-mp3-b
yarn install
expo install
expo start
```

Note that the starter code contains all of the libraries that you'll need to create this app - you shouldn't need to install any external libraries, like Firebase, using Yarn!

## Demo



## Submission

To submit your project, simply commit and push your changes to your personal project repository. We encourage you to commit frequently, so it's easy to revert to a prior commit if needed.

```
git add .
git commit -m "all features working"
git push origin master
```

Additionally, please submit a screen recording of your working app here: [https://go.mdb.dev/submit-project/](https://go.mdb.dev/submit-project/).

