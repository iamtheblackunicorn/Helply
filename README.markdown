<p align="center">
 <img src="/assets/images/banner/banner.png"/>
</p>

# HELPLY :peace_symbol: :tea:

***A small app to get refugess what they need.*** :peace_symbol: :tea:

## About :books:

This project is a small low-fidelity prototype of a small app to help to refugees get resources they might need. This includes food, medication, a place to sleep, and anything else they might need.

## :warning:!!!WARNING!!!:warning:

***:warning:!!THIS IS STRICTLY A PROTOTYPE AND DOESN'T REPRESENT A USABLE PRODUCT!!:warning:***

## LAYOUT :nail_care:

This app has three screens.

- The first screen has some text to prompt the user to speak. A refugee would ask for help here by pressing the microphone button.
- The second screen would pop up when offers for the user's query are found. These offers are shown with an image and a title. The image used in the app is a ***PLACEHOLDER***.
- When the user clicks on one of the offers, more information is shown about the facility.

## DOWNLOADS :brain:

- Please check the `Releases` section of this repository or [follow this link](https://github.com/iamtheblackunicorn/Helply/releases).
- For Mac OSX: Download the bundle and unzip it. Then double-click the executable.
- For the web: Download the bundle and unzip it. Start a server on `localhost` and open a brower at that address. Starting a server can be done from the command line using [this project](https://github.com/iamtheblackunicorn/rins). If you have installed ***RINS***, change into the downloaded directory and run this command: `rins -s .`.

## SUPPORTED PLATFORMS :computer:

Helply's supported platforms include the following:

- Mac OSX
- Android
- Web

## DISCLAIMER :warning:

The images used here are my own and I am doing this for a uni project. The images in the app are strictly placeholders! The design and color scheme is also strictly prototypical!

## SCREENSHOTS :camera_flash:

<p align="center">
 <img src="/assets/images/screenshots/01.png"/>
</p>
<br/>

## USAGE :hammer:

To use the app, you need to take a couple of steps.

- Compile the app from source.
- Run it.

## Compiling from source :inbox_tray:

To compile this project, you will need the following resources:

- For all platforms: [Flutter](https://flutter.dev)
- For all platforms: [The Dart compiler](https://dart.dev)
- For all platforms: [Git VCS](https://git-scm.com/downloads)
- For Android: [The Android SDK](https://developer.android.com/)
- For Android: [The Java JDK](https://www.oracle.com/java/technologies/downloads/)
- For Mac OSX: [XCode](https://developer.apple.com/xcode/)

After you have installed these tools, open a command prompt and type the following command, to ensure everything is installed:

```bash
$ flutter doctor
```
If you do not get any errors, you're ready to rumble. Now you can execute these commands in a command prompt to build your exectuable for your platform.

- Get the source code:

```bash
$ git clone https://github.com/iamtheblackunicorn/helply
```

- Change directory into the project's root:

```bash
$ cd helply
```

- Compile the executable for your platform:

```bash
# To compile for the web.
$ flutter build web

# To compile for Windows.
$ flutter build windows

# To compile for Mac OSX.
$ flutter build macos

# To compile for an Android device.
$ flutter build android
```

If you're compiling for Android, you will need a Java Keystore. You can generate this with this command:

```bash
$ keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```
Please note to execute this and move the file `key.jks` to `android/app`.

## NOTE :scroll:

- *Helply :peace_symbol: :tea:* by *Alexander Abraham* a.k.a. *The Black Unicorn :unicorn: :black_heart:* a.k.a. *Angeldust Duke :unicorn: :fire: :pill:*.
- Licensed under the MIT license.
