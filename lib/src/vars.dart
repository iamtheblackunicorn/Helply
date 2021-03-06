/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// App-wide variables.
String stdFont = 'PSB';
String appTitle = 'Helply';

/// Main colors.
Color mainColor = Color(0xFF000033);
Color accentColor = Color(0xFF0AFFFF);

/// Colors for the gradient on the [Home]
/// widget.
Color gradientColorOne = Color(0xFFFF7BAC);
Color gradientColorTwo = Color(0xFFEA1573);

/// Numeric and floating-point
/// layout variables.
bool isSo = true;
double offSetOne = 0.2;
double offSetTwo = 0.8;
double iconSize = 35.0;
double lineHeight = 4.0;
double topOffSet = 60.0;
double zeroOffset = 0.0;
double stdPadding = 20.0;
double imageSize = 150.0;
double stdFontSize = 30.0;
double stdRounding = 25.0;
int loadingDuration = 220;
double bottomOffSet = 50.0;
double stdBorderWidth = 6.0;
double specialPadding = 30.0;

/// Dummy data for the prototype
/// to display and illustrate possible use.
Dio dio = new Dio();
String isOpen = 'Yes';
String openKey = 'Open';
String telNumKey = 'Tel.';
String qualifier = 'tags';
String stdTitle = 'Offers';
String addressKey = 'Address';
String stdPrompt = 'What do you need?';
String apiUrl = 'https://blckunicorn.art/assets/json/refugees.json';
