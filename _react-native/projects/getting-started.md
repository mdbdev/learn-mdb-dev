---
layout: page
title: Project Setup Guide
page_order: 6
description: This guide walks through setting up a React Native project.
parent: Projects - RN
grand_parent: Overview
---

# Project Setup Guide [IN PROGRESS]
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

This page is a resource intended to help you set up your React Native projects via Expo, with a couple of common additional libararies & tips to help you get started! Feel free to refer back to this guide when starting a new project from scratch.

---

## Creating an Expo Project


1. Create the project using Expo. We **strongly** recommend using TypeScript for all React Native projects - it makes working on large projects incredibly easier!

   ```
   expo init
   ```

2. CD into the project folder.

3. Install React Navigation.

   ```
   expo install react-native-gesture-handler react-native-reanimated react-native-screens react-native-safe-area-context @react-native-masked-view/masked-view
   ```

4. Set up your project directory as follows:

   - `screens/` - contains a folder with subfolders, where each subfolder corresponds to one navigation stack of your app.
   - `utils/` - contains utility classes & files
   - `models/` - contains data models (TypeScript interfaces)
   - `AppStyles.tsx` - contains the app's "root" styles & themes - other style classes can inherit these styles
   - `api/` - contains code related to authentication, API endpoints, etc.

   Here's an example project directory:

   ```
   api/
    - auth.ts
    - backend.ts
   screens/
    AuthStack/
     LoginScreen/
      - LoginScreen.main.tsx
      - LoginScreen.styles.tsx
     SignUpScreen/
      - SignUpScreen.main.tsx
      - SignUpScreen.styles.tsx
     AuthStackScreen.tsx	[store StackNavigator here]
    EntryStack/
     EntryStackScreen.main.tsx
    RootTabNavigator/
     ChatStackScreen/
      ...
     MapStackScreen/
      ...
     SettingsStackScreen/
      ...
   App.tsx
   app.json
   Constants.tsx
   AppStyles.tsx
   ```

   

## Installing Firebase

To install Firebase, run the following command. The [official Expo docs](https://docs.expo.io/guides/using-firebase/) recommend using the [Firebase JavaScript SDK](https://github.com/firebase/firebase-js-sdk), instead of the third-party [React Native Firebase](https://rnfirebase.io) package. 

```
expo install firebase
```

Then, you'll need to create a Firebase project, if you haven't already done so. To do so, follow the instructions below.

1. [Sign into Firebase](https://console.firebase.google.com) using your Google account.

2. In the Firebase Console, click **Add Project**, then enter a **Project Name**.

3. Continue through the setup and click **Create Project**.

4. On the project dashboard, select the "Web" option to create a new Web app (you can also do this through the settings page, accessible through the sidebar).

5. Enter an **App Nickname** and click **Register**.

6. Copy just the `firebaseConfig` JSON object from the code snippet provided. Paste it into a file called `firebaseConfig.json` file in your project's root directory. *Add this file to your project's .gitignore to make sure you don't commit your sensitive Firebase keys to version control.* Then, add the following code to your `App.tsx` file to connect your app to your Firebase project –

   ```
   const firebaseConfig = require("firebaseConfig.json");
   
   if (firebase.apps.length == 0) {
     firebase.initializeApp(firebaseConfig);
   }
   ```

   

### Cloud Firestore

To set up Cloud Firestore, for realtime database functionality:

1. Click on the [Cloud Firestore](https://console.firebase.google.com/project/_/firestore) tab in the sidebar.

2. Click **Create Database** and choose **Test Mode** when prompted. You'll need to configure security rules at a later point in time.

3. Select any location for your instance and continue to click **Done**.

4. In any file that you want to use Cloud Firestore, add the following two lines –

   ```
   import firebase from "firebase/app";
   import "firebase/firestore";
   ```

   

### Cloud Storage

To set up Cloud Storage, for image/video/file storage:

1. Click on the [Cloud Storage](https://console.firebase.google.com/project/_/storage) tab in the sidebar.

2. Select any location for your instance and continue to click **Done**.

3. If you're not using Firebase Authentication: in your storage page, click on the "Rules" tab and change:
   `if request.auth != null;` to `if true;` to allow unauthenticated reads/writes to your bucket for testing.
   
4. In any file that yuou want to use Cloud Storage, add the following two lines –

   ```
   import firebase from "firebase/app";
   import "firebase/storage";
   ```

   

### Firebase Authentication

COMING SOON (along with a guide on how to implement authentication in your app).







