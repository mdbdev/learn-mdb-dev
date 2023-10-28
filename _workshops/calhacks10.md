---
layout: page
title: CalHacks 10.0 Workshop
page_order: 1
has_children: false
description:
has_toc: false
---

{: .no_toc }

<div class="banner-images-container">
<img 
    src="/assets/images/mdb-logo.png"
    class="inline-centered-image"
/>
<img 
    src="https://calhacks-sierra.s3.us-west-2.amazonaws.com/assets/live/bigbear.svg"
    class="inline-centered-image"
/>
</div>
<div class="page-title-container">
    <p class="page-title">Building Apps</p>
    <p class="page-title-desc">CalHacks 10.0 Workshop</p>
    <p class="page-title-desc">Mobile Developers of Berkeley</p>
</div>
<hr class="title-hr"/>

# Introduction

Mobile applications continue to be the primary way people interface with technology. When building applications at hackathons, there's a lot to consider. One of the most important factors is time. You want to build something that's useful, but you also want to build something that's feasible. To do so, we will be using React Native to build cross-platform applications and Firebase on the backend, as they allow us to build applications quickly and efficiently.

In this workshop, we will explore React Native, React Navigation, and APIs to build a simple mobile application. We sill start with an overview of Typescript, React Native, React Navigation, and APIs. We will demonstrate how you can quickly prototype and view your app using Expo and Expo Go. You will have the opportunity to follow along using the provided starter code and instructions.

This is a beginner/intermediate level workshop intended to teach React/React Native for building mobile application, presented by the Mobile Developers of Berkeley VP of Development, Aniruth Narayanan.

If you would like to learn about integrating with Firebase, check out [last year's CalHacks workshop](/workshops/calhacks9).

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

Note that this setup should be done before the workshop. If you don't have it, there will be live coding on the screen, and you're free to do the setup steps and then code later.

### Installation

[Install VS Code](https://code.visualstudio.com/download) as your code editor.

If on Windows: [install git bash](https://git-scm.com/download/win).

If on Mac: install xcode-command-line-tools using the command `xcode-select --install`.

[Install Node](https://nodejs.org/en/download/), verify `node –version` and `npm –version` work (they should be printing out versions). Install yarn and confirm it works as well using `yarn --version`. Install expo-cli globally using `npm i -g expo-cli` (using sudo if on mac if need be).

[Install the Expo Go app](https://docs.expo.dev/get-started/installation/#2-expo-go-app-for-ios-and) on your phone. This is how you can test code running on your local machine on the phone, by scanning the QR code that appears in the terminal when running `expo start`.

Use git to take the template we have of the starter code (linked below) and clone it locally. Enter the directory (using `cd [folder name]`), then run `yarn install` and `expo install` within the directory.

Verify your setup is correct by running `expo start` in the cloned repository. A QR code should pop up in the terminal, and when scanned in Expo Go, should load up the starter app code.

_Optional:_ if on Mac, install XCode to get the simulator tools (so you can open up a simulated iPhone on the screen, instead of having to use your phone) - so the command `expo start –-ios` can be used. Note that you can use an Android emulator if on Windows or Linux if you'd like.

To summarize: you should have Node, Yarn, Expo-CLI, Expo Go, and VS Code installed. You should have cloned the starter code and run `yarn install` and `expo install` within the directory. You should be able to run `expo start` and scan the QR code in Expo Go to see the starter app on a phone or simulator.

# Workshop Slides

The slides used in the presentation will are available [here](https://docs.google.com/presentation/d/e/2PACX-1vTpSAZBte8DMobXoECnp5wXm-lQ8Q48ODk7T_PAsRFn0lXlbpIZYaUFjlTgYB_jv7Kwn5Djbcrl0KPy/pub?start=false&loop=false&delayms=3000) and below.

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTpSAZBte8DMobXoECnp5wXm-lQ8Q48ODk7T_PAsRFn0lXlbpIZYaUFjlTgYB_jv7Kwn5Djbcrl0KPy/embed?start=false&loop=false&delayms=3000" frameborder="0" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

For a more in depth intro to building apps (including backend, security, etc.) check out our lessons.

# Demo

The Mobile Developers of Berkeley have found a cool API that they would like to use: the Website Carbon API. Given some website, it will compute and cache the CO2 emissions of that website. However, there's no easy interface to use this, so we will build one. We will build a simple app that allows users to enter a website and see the CO2 emissions of that website. The app will have a screen to see the history of all searches, with options to delete results and another screen to search for websites while maintaining internal state (history) between the screens.

History and Search Screens:

<div class="row">
  <div class="column-50 center-container">
    <img src="../../assets/images/workshops/calhacks10/history-screen.png" alt="History Screen" style="width:80%; box-shadow: 0 0 12px 2px lightgrey;">
  </div>
  <div class="column-50 center-container">
    <img src="../../assets/images/workshops/calhacks10/search-screen.png" alt="Search Screen" style="width:80%; box-shadow: 0 0 12px 2px lightgrey;">
  </div>
</div>

There are 5 files that we will be editing:

1. `App.tsx` - the main file that contains the navigation and the screens
2. `SearchScreen.tsx` - the screen that allows users to search for websites
3. `HistoryScreen.tsx` - the screen that shows the history of searches
4. `Item.tsx` - the component that displays a single website's data
5. `CarbonDataType.tsx` - the type of the data returned by the API, useful for our Typescript setup

## Starter Code

_note: the following instructions have calhacks9-starter; it's the same steps, just with calhacks10-starter_

To create your repository, go to the following link:

[https://github.com/aniruthn/calhacks10-starter.git](https://github.com/aniruthn/calhacks10-starter.git)

You should see the following "Use this template" button:

<div class="center-container"><img src="../../assets/images/workshops/calhacks9/use-as-template-button.jpg" alt="Use as Template Button" style="width:70%; box-shadow: 0 0 12px 2px lightgrey;"></div>

After clicking on it, you should see the following:

<div class="center-container"><img src="../../assets/images/workshops/calhacks9/create-new-repo-screen.jpg" alt="Create Repo from Template" style="width:70%; box-shadow: 0 0 12px 2px lightgrey;"></div>

Click on the green "Use this template" button and follow the instructions to create your own repository. Name it whatever you'd like.

Once the templated repository is created, you should see the following:

<div class="center-container"><img src="../../assets/images/workshops/calhacks9/templated-repo-created.jpg" alt="Created Repo" style="width:70%; box-shadow: 0 0 12px 2px lightgrey;"></div>

Then, clone that repository (not the template) to your local machine. You can do this by running the following command in your terminal:

```bash
git clone [your repository link]
```

To get the repository link, click on the green "Code" button and copy the link:

<div class="center-container"><img src="../../assets/images/workshops/calhacks9/clone-link.jpg" alt="Get Repo Link" style="width:70%; box-shadow: 0 0 12px 2px lightgrey;"></div>

## Reference Documentation

While you're working, it's helpful to keep an copy of the reference documentation open so you can see examples of components being used.

React Native Component Documentation (can use either):

-   [https://docs.expo.dev/versions/v46.0.0/react-native](https://docs.expo.dev/versions/v46.0.0/react-native)
-   [https://reactnative.dev/docs/components-and-apis](https://reactnative.dev/docs/components-and-apis)
