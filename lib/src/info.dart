/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'vars.dart';
import 'package:flutter/material.dart';

/// A widget to represent a facility
/// on offer.
class InfoCard extends StatelessWidget {
  late final String title;
  late final String imageUrl;
  late final String address;
  late final String telNumber;
  late final VoidCallback navigateTo;
  InfoCard({
    required this.title,
    required this.imageUrl,
    required this.address,
    required this.telNumber,
    required this.navigateTo
  });
  @override
  Widget build(BuildContext context){
    return Padding(
        padding:EdgeInsets.all(stdPadding),
        child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(stdRounding),
            side: new BorderSide(
              color: mainColor,
              width: stdBorderWidth,
            ),
          ),
          child: new InkWell(
            radius: imageSize,
            splashColor: mainColor,
            onTap: navigateTo,
            child: new Stack(
              children: <Widget> [
                new ClipRRect(
                  borderRadius: BorderRadius.circular(stdRounding),
                  child: Image.network(
                    imageUrl,
                    height: imageSize,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                ),
                new Positioned(
                  bottom: offSetOne,
                  left: offSetTwo,
                  child: Align(
                    alignment: Alignment(
                    -offSetTwo,
                    offSetOne
                  ),
                  child: new Padding(
                    padding: EdgeInsets.all(stdPadding),
                    child: Text(
                      '$title',
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: stdFontSize,
                        fontFamily: stdFont
                      ),
                    )
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}
