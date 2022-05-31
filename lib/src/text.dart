/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'vars.dart';
import 'package:flutter/material.dart';

/// A small widget to properly
/// align detailed info about a facility.
class TextWidget extends StatelessWidget {
  late final String fieldKey;
  late final String fieldValue;
  TextWidget({
    required this.fieldKey,
    required this.fieldValue
  });
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> [
        new Padding(
          padding: EdgeInsets.all(stdPadding),
          child: new Text(
            '$fieldKey',
            style: new TextStyle(
              fontSize: stdFontSize,
              color: accentColor,
              fontFamily: stdFont
            )
          )
        ),
        new Padding(
          padding: EdgeInsets.all(stdPadding),
          child: new Text(
            '$fieldValue',
            style: new TextStyle(
              fontSize: stdFontSize,
              color: accentColor,
              fontFamily: stdFont
            )
          )
        ),
      ]
    );
  }
}
