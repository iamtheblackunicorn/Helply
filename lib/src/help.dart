/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'vars.dart';
import 'info.dart';
import 'detail.dart';
import 'package:flutter/material.dart';

/// The listview for users to scroll through
/// and choose a facility or offer from.
class HelpNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: accentColor,
      appBar: new AppBar(
        foregroundColor: accentColor,
        backgroundColor: mainColor,
        centerTitle: isSo,
        title: new Text(
          stdTitle,
          style: new TextStyle(
            fontSize: stdFontSize,
            color: accentColor,
            fontFamily: stdFont
          )
        ),
        leading: new IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: accentColor,
              size: iconSize
            ),
            onPressed:() => Navigator.of(context).pop()
          ),
      ),
      body: new SingleChildScrollView(
        child:new Center(
          child:new ListView.builder(
            shrinkWrap: isSo,
            itemCount: itemCount,
            itemBuilder: (context, index){
              return InfoCard(
                title: '$prefix ${index+1}',
                imageUrl: imageUrl,
                address: address,
                telNumber: number,
                navigateTo: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailView(
                        title: '$prefix ${index+1}',
                        imageUrl: imageUrl,
                        address: address,
                        telNumber: number
                      )
                    ),
                  );
                }
              );
            }
          )
        )
      )
    );
  }
}
