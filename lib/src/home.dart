/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'vars.dart';
import 'help.dart';
import 'data.dart';
import 'package:flutter/material.dart';

/// This class is the entry point for the
/// app from where users could say
/// what they require.
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              gradientColorOne,
              gradientColorTwo
            ]
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: new Center(
          child: new Column(
            children: <Widget> [

              new Padding(
                padding: EdgeInsets.only(
                  top:topOffSet,
                  bottom:bottomOffSet,
                  left:zeroOffset,
                  right:zeroOffset
                ),
                child: new Text(
                  stdPrompt,
                  style: new TextStyle(
                    fontSize: stdFontSize,
                    color: tertiaryColor,
                    fontFamily: stdFont
                  )
                )
              ),
              new SizedBox(
                height: MediaQuery.of(context).size.height/2
              ),
              new Padding(
                padding: EdgeInsets.all(stdPadding),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(specialPadding),
                    backgroundColor: accentColor,
                    shape: CircleBorder(),
                  ),
                  child: Icon(
                    Icons.mic_rounded,
                    color: mainColor,
                    size: iconSize
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HelpNavigator(
                          apiStorage: APIStorage()
                        )
                      ),
                    );
                  },
                ),
              )
            ]
          )
        )
      )
    );
  }
}
