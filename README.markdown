<p align="center">
 <img src="/assets/images/banner/banner.png"/>
</p>

# HELPLY :peace_symbol: :tea:

[![GitHub CI](https://github.com/iamtheblackunicorn/Helply/actions/workflows/flutter.yml/badge.svg)](https://github.com/iamtheblackunicorn/Helply/actions/)

***A small app to get refugess what they need.*** :peace_symbol: :tea:

## ABOUT :books:

This project is a nearly-complete prototype of a small app to help to refugees get resources they might need. This includes food, medication, a place to sleep, and anything else.

## FEATURES :rocket:

- Clean layout.
- Remote API-fetching.
- Full text-search.
- Full backend architecture.
- Full frontend architecture.

## THINGS MISSING :test_tube:

- Access to a remote database with actual help facilities.

## LAYOUT :nail_care:

This app has four screens.

- 1.) The first screen has a text input field to prompt the user to make a query.
- 2.) The second screen is either a loading screen if the remote database can be queried successfully or an error screen if a connection to the API endpoint cannot be established.
- 3.) The third screen is a list of all available facilities that match the user's query. If the user types a query that isn't *"understood"*, all facilities are shown.
- 4.) The fourth screen is a detailed view of the facility if the user taps on one of the facilities in the previous screen.

## INSTALLATION :inbox_tray:

Download the bundle for your platform and follow the instructions given in the *"Downloads"* section.

## DOWNLOADS :brain:

Please check the `Releases` section of this repository or [follow this link](https://github.com/iamtheblackunicorn/Helply/releases).
- For Mac OSX: Download the bundle and unzip it. Then double-click the executable.
- For the web: Download the bundle and unzip it. Start a server on `localhost` and open a browser at that address. Starting a server can be done from the command line using [this project](https://github.com/iamtheblackunicorn/rins). If you have installed ***RINS***, change into the downloaded directory and run this command: `rins -s .`.
- For Android: Enable the installation of APKs from *"Unknown Sources"*. Download the APK file, find it in your file explorer and tap on it. This should prompt the installation.

## SUPPORTED PLATFORMS :computer:

Helply's supported platforms include the following:

- Mac OSX
- Android
- Web

## DISCLAIMER :warning:

This product is a nearly-usable prototype, the architecture is identical to that of a usable product. However, the API pulled in for available facilities is a *"dummy"* API. (I'm doing this for a uni project.)

## SCREENSHOTS :camera_flash:

<p align="center">
 <img src="/assets/images/screenshots/01.png"/>
</p>
<br/>
<p align="center">
 <img src="/assets/images/screenshots/02.png"/>
</p>
<br/>
<p align="center">
 <img src="/assets/images/screenshots/03.png"/>
</p>
<br/>
<p align="center">
 <img src="/assets/images/screenshots/04.png"/>
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
If you do not get any errors, you're ready to rumble. Now you can execute these commands in a command prompt to build your executable for your platform.

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

# To compile for Mac OSX.
$ flutter build macos

# To compile for an Android device.
$ flutter build apk
```

If you're compiling for Android, you will need a Java Keystore. You can generate this with this command:

```bash
$ keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```
Please note to execute this and move the file `key.jks` to `android/app`.

## CHANGELOG :black_nib:

### Version 1.0.0

- Basic layout.
- Basic architecture.

### Version 1.1.0

- Layout and color scheme improved.
- Functionality upgraded to a near-usable product.

## NOTE :scroll:

- *Helply :peace_symbol: :tea:* by *Alexander Abraham* a.k.a. *The Black Unicorn :unicorn: :black_heart:* a.k.a. *Angeldust Duke :unicorn: :fire: :pill:*.
- Licensed under the MIT license.
