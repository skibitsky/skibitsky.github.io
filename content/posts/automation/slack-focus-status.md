---
title: "Slack Focus Status"
date: 2021-11-15T19:13:28+02:00
draft: false
tags:
  - Siri Shortcuts
  - Productivity
---

Apple introduced a new feature called Focus Mode in macOS Monterey and iOS 15. It gives users more control over all distracting things modern devices do. I have multiple focus modes: for learning, working, reading, etc. There is also one I use for deep work. When doing deep work, I want to avoid being distracted by anything, and therefore I mute almost every app, including Slack. One deep work session can last for up to a few hours. During this time, Slack shows that I’m active (green circle next to my name). However, I won’t respond to any messages which can make my coworkers to think that I’m actually slacking (ba dum tss) instead of doing my work.

The solution I come up with is to use Slack API to automatically set status when my deep work focus mode turns on. And disable when it turns off.

Example of Slack Status:
{{< image src="https://sandelis.fra1.cdn.digitaloceanspaces.com/posts/automation/slack-foucs-status/Slack%20Status.webp" alt="Slack Status" position="left" style="border-radius: 3px; width:220px;" >}}

It works pretty well for me. Despite the fact the automation is handled by Siri Shortcuts on my iPhone, it also works if focus mode is enabled/disabled on a Mac (assuming the iPhone is online).

Below I describe how to do such automation thing in less than 10 minutes. 

## 0. Create Slack App
1. Go to [https://api.slack.com/apps][1] and click on “Create New App” button.
1. Enter the app name and select Slack Workspace you want to update your status in.
2. After the app is created, select to “OAuth & Permissions” from the left menu.
3. Scroll down to “Scopes” section and add `users.profile:write` User Token Scope. This will give your app permissions to modify user status.
	{{< image src="https://sandelis.fra1.cdn.digitaloceanspaces.com/posts/automation/slack-foucs-status/Add%20Slack%20Scope.webp" alt="Slack Status" position="left" style="border-radius: 3px; width:450px;" >}}
4. The last step is to install your app into workplace. Select “Install App” in the left menu and follow instructions on that page. 
5. After the app is installed is ready, you should be able to copy OAuth token. Don’t share this token with anyone! You will need this token in the next step.
	{{< image src="https://sandelis.fra1.cdn.digitaloceanspaces.com/posts/automation/slack-foucs-status/User%20OAuth%20Key.webp" alt="Slack Status" position="left" style="border-radius: 3px; width:450px;" >}}
## 1. Configure Siri Shortcuts
I made two pretty similar Siri Shortcuts: one to enable, and another one to disable Slack status. Both have comments explaining how they work and import questions asking for your Slack OAuth token.

_Enable Slack Focus Status shortcut_
	{{< image src="https://sandelis.fra1.cdn.digitaloceanspaces.com/posts/automation/slack-foucs-status/Enable%20Focus%20Shortcut.webp" alt="Slack Status" position="left" style="border-radius: 3px; width:450px;" >}}

Import both shortcuts and add your Slack OAuth token.

[Download “Enable Slack Focus Status” shortcut][2]

[Download “Disable Slack Focus Status” shortcut][3]

## 2. Set up Siri Shortcuts Automation
1. Finally, head over to “Automation” tab on iOS/iPadOS Siri Shortcuts app and create new automation.
1. Scroll down to the list of your Focus modes and select the one you want to trigger Slack Status.
2. Choose “When Turning On” and proceed to the next screen.
3. Add “Run Shortcut” action and select “Enable Slack Focus Status” shortcut.
4. Tap on “Next” and on the next screen disable “Ask Before Running”.
5. Create one more automation for the same Focus mode, but this time select “When Turning Off” trigger and “Disable Slack Focus Status” shortcut.

That’s it! Now you should be able to automatically share your Focus mode on Slack 🙂

[1]:	https://api.slack.com/apps
[2]:	https://www.icloud.com/shortcuts/9b84437fcf794aa890dec998723b5fe2
[3]:	https://www.icloud.com/shortcuts/216dba009f3249949222a17cb3b257b2

