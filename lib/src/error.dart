/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'vars.dart';
import 'package:flutter/material.dart';

/// If asynchronous data were to be fetched,
/// this screen would be displayed while said
/// data is being loaded.
class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: accentColor,
      body: Center(
        child: Column(
          children: <Widget> [
            new SizedBox(
              height: MediaQuery.of(context).size.height/3
            ),
            new Icon(
              Icons.warning,
              color: mainColor,
              size: imageSize,
            ),
          ]
        )
      )
    );
  }
}
