/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'vars.dart';
import 'package:flutter/material.dart';

/// A stateless widget to allow users
/// to type their query in.
class InputField extends StatelessWidget{
  late final TextEditingController textController;
  InputField({
    required this.textController
  });
  @override
  Widget build(BuildContext context){
    return new TextField(
      controller: textController,
      cursorColor: accentColor,
      cursorWidth: lineHeight,
      decoration: new InputDecoration(
        counterText: '',
        hintText: '',
        hintStyle: TextStyle(
          fontSize: stdFontSize,
          color: accentColor,
          fontFamily: stdFont
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: accentColor,
            width: lineHeight
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: accentColor,
            width: lineHeight
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: accentColor,
            width: lineHeight
          ),
        ),
      ),
      style: TextStyle(
        color: accentColor,
        fontSize: stdFontSize,
        fontFamily: stdFont
      )
    );
  }
}
