---
layout: page
title: Mini-Project 4
page_order: 4
description: None
parent: Projects
grand_parent: Overview
---

# Mini-Project 4: Capstone
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

In the final project of this training program, you'll have the flexibility to tie together everything you've learned into a capstone project! 

This project is structured differently from the previous projects. Instead of starting with the same starter code as everyone else and working towards the same end product, you'll be working together in teams of two to create a unique product, with an opportunity to dive deep into to areas that interest you! Every team will have to meet a base set of requirements, which are described below, and choose either the frontend or backend-oriented track. 

---

## Requirements

### Requirement 1: Create a Functional MVP

What is a <u>MVP?</u> It's described [formally](https://en.wikipedia.org/wiki/Minimum_viable_product) as a "version of a new product a team uses the maximum amount of learning about customers with the least effort." In other words, we want to take as many shortcuts as we can to get a version of a working product into the hands of our customers. Then, we observe their interactions with our product, and use that learning to guide our decisions in the future.

Coming up with a viable app idea is difficult - so we've done the work for you! For this project, you can choose from any of the ideas listed in the Appendix. If you have your own idea, feel free to work on that as well - just make sure to run it by your mentor first! Because this is a <u>three week project,</u> we want all ideas to be somewhat on an equal level of difficulty, so we've designed the requirements as such.

### Requirement 2: Use the Expo SDK

The Expo SDK allows us to interface directly with device hardware and native functionality, and offers support for integration with nearly 50 platform-specific features. Your app must implement one of the following modules from the Expo SDK:

*Accelerometer, Appearance (e.g. Dark Mode), AsyncStorage, Audio, AV, BarCodeScanner, Barometer, Calendar, Camera, Contacts, DeviceMotion, FaceDetector, Location, MailComposer, MapView, MediaLibrary, Sensors, Sharing, SMS, Video, WebBrowser*

---

## Tracks

### Track 1: Design Track

Choose this track if you want to learn more about design! In this track, you'll have the ability to focus primarily on the design of your application. You must create and submit a Figma mockup before jumping into your application - with careful thought given to application UI/UX. For design inspiration, we recommend checking out [Dribbble](https://dribbble.com) (create an account and search for "mobile app"). 

Figma is a drag-and-drop tool for designing visual interfaces. Figma also supports functionality to [view CSS](https://www.figma.com/best-practices/tips-on-developer-handoff/an-overview-of-figma-for-developers/) for components crated using the editor, which might help translate your designs into code!

If you choose this track, you don't have to implement every single screen of your complete design - feel free to focus on the screens that are the most important, and feel free to cut out functionality to meet the bare minimum working product!

### Track 2: Backend Track

Choose this track if you want to learn more about backend architecture, including setting up a NodeJS backend server! For this track, we recommend using a component library (e.g. React Native Paper) to minimize the amount of time you have to spend designing your application. Additionally, you must do one of the following:

1. Set up and deploy an [Express/NodeJS server on Heroku](Express/NodeJS server on Heroku), and use it in some way in your app.
2. Set up and deploy a [Javascript](https://firebase.google.com/docs/functions/get-started) (recommended) or [Python](https://cloud.google.com/functions/docs/quickstart-python) Firebase/Google Cloud Function, and use it in some way in your app.

One of the most frequent ways to use one of these servers is to create an orchestration layer between your client and your **backend database or dataset**. This "orchestration layer" receives requests from your client, and makes the appropriate request to a database or other endpoint. Then, it receives data back and transforms it into a structure that's easier for the app to consume directly.

---

## Appendix: Idea Bank

| Idea                                                         | Track  | Expo SDK                                                     |
| ------------------------------------------------------------ | ------ | ------------------------------------------------------------ |
| **CalTransit** - show all transit [stops](http://api.actransit.org/transit/Help/Api/GET-stops) on a map. On tapping a stop, show a list of all bus [predictions](http://api.actransit.org/transit/Help/Api/GET-stops-stopId-predictions) (arrival times) for that stop. If `backend`, funnel all AC Transit API calls through a cloud function or Heroku server. | Either | [MapView](https://docs.expo.io/versions/v37.0.0/sdk/map-view/) |
| **Berkeley(Time) Mobile** - use the [BerkeleyTime API](https://berkeleytime.com/apidocs) to make a mobile app for BerkeleyTime. Add a "pin class" feature that allows a user to take a quick glance at enrollment statistics for any classes they're considering. | Design | [AsyncStorage](https://docs.expo.io/versions/v37.0.0/react-native/asyncstorage/) |
| **Virtual Study Buddy Finder (a.k.a. Studybuddy)** - create an app that allows people to create a profile, create or join groups using an access code, and toggle whether they're "online" or "offline" -- when they're online, anyone in the group can see they're online (along with a Zoom link). Include an "[Invite Friends to Group](https://docs.expo.io/versions/v40.0.0/sdk/sharing/)" button. If `backend`, then create a cloud function that automatically flips users "offline" after one hour of inactivity. | Either | [Sharing](https://docs.expo.io/versions/v40.0.0/sdk/sharing/) |
| **Crowdsourced Schedule Rater (a.k.a. RateMySchedule)** - create an app that allows users to anonymously post their schedule and receive upvotes/downvotes or other comments from the community. If `backend`, add a [content moderation cloud function](https://firebase.googleblog.com/2017/06/content-moderation-with-cloud-functions.html) that redacts swear words from user-created content. | Design | [GestureHandler](https://docs.expo.io/versions/v40.0.0/sdk/gesture-handler/) or [Appearance](https://docs.expo.io/versions/v40.0.0/sdk/appearance/) |
| **BearWalk App (a.k.a. Nightwalker)** - create an app with an interface that allows students ("users") to post their location and their destination, and allows BearWalk volunteers ("admins") to view and accept requests. Users should be notified with the name of the admin when an admin accepts a request. On sign in, allow people to choose whether they want to register as a user or an admin. If `backend`, create a cloud function that sends a [text message](https://www.twilio.com/docs/sms/send-messages#send-an-sms-with-twilios-api) to the appropriate user when an admin has accepted a request. | Either | [MapView](https://docs.expo.io/versions/v37.0.0/sdk/map-view/) |
| ...more coming                                               |        |                                                              |

 