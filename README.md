# EAS Scripts

In this repository, I have collected scripts that I often use myself.

## Introduction

These scripts are used to track the build process of pre-built packages of your mobile app through a telegram bot when using EAS.

[Link to instructions, with all script variations](https://docs.expo.dev/build-reference/npm-hooks/)

## Installation

- Add a folder with these scripts to the root of your project
- In the Scripts field in the `package.json file`, add commands to run scripts

```
	"eas-build-pre-install": "bash ./scripts/eas-build-pre-install.bash",
    "eas-build-on-cancel": "bash ./scripts/eas-build-on-cancel.bash",
    "eas-build-on-complete": "bash ./scripts/eas-build-on-complete.bash"
```

- In Telegram, you need to create a bot via BotFather and copy your bot's token, then add the token to the `.env file`

- Then you need to click start on your bot and in your browser type this link to find out your `chat_id` with the bot.

```
https://api.telegram.org/bot<BOT_TOKET>/getUpdates
```

- Take the `chat_id` from the json response and add it to the `.env file`

- The last point will be to log in to your account at `https://expo.dev/` and you need to copy the project name.

- Last, you need to copy the project name from `package.json` and also add it to the `.env` file

````
...
"name": "name-project"
...```
````

The customization of the scripts is now complete. Now when you start the build via eas build in the Telegram bot you will receive a notification about the start of the build, as well as the successful or unsuccessful completion of the build.
In case of successful completion, for convenience you will also receive a link to the build.
