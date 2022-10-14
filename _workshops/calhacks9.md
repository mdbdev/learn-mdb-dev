---
layout: page
title: CalHacks 9.0 Workshop
page_order: 1
has_children: false
description: Building Apps, CalHacks 9.0 Workshop
has_toc: false
---

{: .no_toc }
<style>
    
</style>
<div class="banner-images-container">
<img 
    src="/assets/images/mdb-logo.png"
    class="inline-centered-image"
/>
<img 
    src="https://calhacks-sierra.s3.us-west-2.amazonaws.com/assets/branding/cal_hacks_9"
    class="inline-centered-image"
/>
</div>
<div class="page-title-container">
    <p class="page-title">Building Apps</p>
    <p class="page-title-desc">CalHacks 9.0 Workshop</p>
    <p class="page-title-desc">Mobile Developers of Berkeley</p>
</div>
<hr class="title-hr"/>

# Introduction

Mobile applications continue to be the primary way people interface with technology. When building applications at hackathons, there's a lot to consider. One of the most important factors is time. You want to build something that's useful, but you also want to build something that's feasible. To do so, we will be using React Native to build cross-platform applications and Firebase on the backend, as they allow us to build applications quickly and efficiently.

In this workshop, we will explore React Native and Firebase to build a simple mobile application with authentication and a database. We will start with an overview of React Native fundamentals, followed by a short introduction to Firebase. We will demonstrate how you can quickly prototype and view your app using Expo and Expo Go. You will have the opportunity to follow along using the provided starter code and instructions.

This is a beginner/intermediate level workshop intended to teach the concepts of React and the basics of React Native to build mobile applications, presented by the Mobile Developers of Berkeley VP of Education, Aniruth Narayanan.

## Prerequisites

_Note: these are not hard requirements. You can always follow along, but some parts may be trickier._

- Programming basics in any language (Python, Java, Javascript, Typescript, C, etc.)
    - Conditionals, loops, variables, etc.
    - Students currently enrolled in Berkeley’s 61A or equivalent level course should be fine
    - Check out the guides on transitioning from Python to Javascript and Java to Javascript!
- Experience using apps of any kind
    - Instagram, Snapchat, Messages/iMessage, Camera, etc.
- Setup of dev environment
    - See [below](#setup) for things that need to be done before the workshop
- Nice to have but not required:
    - Javascript/Typescript familiarity - there are some [guides](#guides-for-transitioning-to-javascript) below to help you get started
    - Basic web development knowledge - HTML, CSS, JS, though not necessary
    - Data Structures or other CS classes (i.e. Berkeley’s CS 61B)

## Guides for Transitioning to JavaScript

JavaScript is the language used in React Native. [JavaScript Express](https://www.javascript.express/) is a general guide about JavaScript.

If you are familiar with Python or Java, you can use the following guides to help you transition to JavaScript.

These are listed (roughly) in order of depth.

From Python:
1. [JavaScript for Python Programmers by Thomas Ballinger](https://observablehq.com/@ballingt/javascript-for-python-programmers)
2. [JavaScript for Python Programmers by Mike Deplatis](https://mike.depalatis.net/blog/javascript-for-python-programmers.html)
3. [JS4Python](https://runestone.academy/ns/books/published/JS4Python/index.html)

From Java:
1. [Transitioning from Java to JavaScript by Greg Bryne](https://medium.com/@byrne.greg/transitioning-from-java-to-javascript-quick-guide-on-the-basics-you-need-to-immediately-know-ef95140a7d71)
2. [JavaScript for Java Developers, Angular University](https://blog.angular-university.io/javascript-for-java-developers/)

Most projects use [TypeScript](https://www.typescriptlang.org/), a superset of JavaScript that enforces typing (similar to Java and newer versions of Python, with differences between objects, numbers, strings, etc.). The demo app will be using TypeScript, but all typing information will be specified. It might seem more complicated at first to use TypeScript, but it will help you write more robust code.

## Setup

You can use Windows, Mac, or Linux for this workshop.

Install VS Code as your code editor.

If on Windows: install git bash

If on Mac: install xcode-command-line-tools

Install Node, verify `node –version` and `npm –version` work. Install yarn and confirm it works as well using `yarn --version`. Install expo-cli globally (using sudo if on mac if need be).

Install Expo Go app on your phone. This is how you can test code running on your local machine on the phone.

Use git to take the template we have of the starter code, clone it locally. Run yarn install and expo install within the directory.

Verify setup is correct by running expo start in directory. QR code should pop up in the terminal, and when scanned in Expo Go, should load up the starter app code.

Optional: if on Mac, install XCode to get the simulator tools (so you can open up a simulated iPhone on the screen, instead of having to use your phone) - so the command `expo start –-ios` can be used. Note that you can use an Android emulator if on Windows or Linux if you'd like.

# React Native and Firebase

The slides used in the presentation will are available [here](https://docs.google.com/presentation/d/e/2PACX-1vTLMIS5apDp5v4ihgztxV5xD0c-t2xg1EIXOqeUb6STOdvhCGxpRCu3CQ-_BnvbsGc39W6PvCv8bq0F/pub?start=false&loop=false&delayms=3000) and below.

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTLMIS5apDp5v4ihgztxV5xD0c-t2xg1EIXOqeUb6STOdvhCGxpRCu3CQ-_BnvbsGc39W6PvCv8bq0F/embed?start=false&loop=false&delayms=3000" frameborder="0" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

For a more in depth intro to building apps (including backend, security, etc.) check out our lessons.

# Demo

Every Sunday, the Mobile Developers of Berkeley hosts a weekly meeting where we discuss the latest in mobile development, share our projects, and learn from each other. We provide free lunch for our members, funded by our contracts, except there's one issue: it's too hard to decide where to buy food. To solve this, we are going to build a mobile application that allows members to vote on where to get lunch from, using React Native and Firebase.

Voting and Results Screens:

<div class="row">
  <div class="column-50 center-container">
    <img src="../../assets/images/workshops/calhacks9/voting-screen.png" alt="Voting Screen" style="width:80%; box-shadow: 0 0 12px 2px lightgrey;">
  </div>
  <div class="column-50 center-container">
    <img src="../../assets/images/workshops/calhacks9/results-screen.png" alt="Results Screen" style="width:80%; box-shadow: 0 0 12px 2px lightgrey;">
  </div>
</div>

Authentication Screens (Sign In, Sign Up):

<div class="row">
  <div class="column-50 center-container">
    <img src="../../assets/images/workshops/calhacks9/sign-in-screen.png" alt="Sign In Screen" style="width:80%; box-shadow: 0 0 12px 2px lightgrey;">
  </div>
  <div class="column-50 center-container">
    <img src="../../assets/images/workshops/calhacks9/sign-up-screen.png" alt="Sign Up Screen" style="width:80%; box-shadow: 0 0 12px 2px lightgrey;">
  </div>
</div>

## Starter Code

To fetch a copy of the starter code, run the following command in Terminal.

```shell
git clone https://github.com/aniruthn/calhacks9-demo.git
```

## Reference Documentation

While you're working, it's helpful to keep an copy of the reference documentation open so you can see examples of components being used.

React Native Component Documentation (can use either):
- [https://docs.expo.dev/versions/v46.0.0/react-native](https://docs.expo.dev/versions/v46.0.0/react-native)
- [https://reactnative.dev/docs/components-and-apis](https://reactnative.dev/docs/components-and-apis)

Firebase (use web documentation, since we’re using Javascript in React Native):
- Authentication
    - [https://firebase.google.com/docs/auth](https://firebase.google.com/docs/auth)
- Firestore
    - [https://firebase.google.com/docs/firestore](https://firebase.google.com/docs/firestore)
- Cloud Storage (not used in this workshop, but useful to store images)
    - [https://firebase.google.com/docs/storage/web/start](https://firebase.google.com/docs/storage/web/start)