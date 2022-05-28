/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'src/home.dart';
import 'src/vars.dart';
import 'package:flutter/material.dart';

/// Main entry point
/// for the Dart/Flutter compiler.
void main(){
  runApp(
    new MaterialApp(
      home: new Home(),
      title: appTitle,
      debugShowCheckedModeBanner: false
    )
  );
}
