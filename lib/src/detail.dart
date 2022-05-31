/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'vars.dart';
import 'text.dart';
import 'package:flutter/material.dart';

/// A Detail view for each facility on the
/// offer. This widget has interchangeable data
/// flags.
class DetailView extends StatelessWidget {
  late final String title;
  late final String imageUrl;
  late final String address;
  late final String telNumber;
  DetailView({
    required this.title,
    required this.imageUrl,
    required this.address,
    required this.telNumber,
  });
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: mainColor,
      appBar: new AppBar(
        foregroundColor: mainColor,
        backgroundColor: accentColor,
        centerTitle: isSo,
        title: new Text(
          title,
          style: new TextStyle(
            fontSize: stdFontSize,
            color: mainColor,
            fontFamily: stdFont
          )
        ),
        leading: new IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: mainColor,
              size: iconSize
            ),
            onPressed:() => Navigator.of(context).pop()
          ),
      ),
      body: new Padding(
        padding:EdgeInsets.all(stdPadding),
        child: new Card(
          color: mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(stdRounding),
            side: new BorderSide(
              color: accentColor,
              width: stdBorderWidth,
            ),
          ),
          child: new Column(
            children:<Widget> [
              new Stack(
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
                      child: Padding(
                        padding: EdgeInsets.all(stdPadding),
                        child: Text(
                          title,
                          style: TextStyle(
                            color: accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: stdFontSize,
                            fontFamily: stdFont
                          ),
                        )
                      )
                    )
                  )
                ]
              ),
              new TextWidget(
                fieldKey: addressKey,
                fieldValue: address
              ),
              new TextWidget(
                fieldKey: telNumKey,
                fieldValue: telNumber
              ),
              new TextWidget(
                fieldKey: openKey,
                fieldValue: isOpen
              ),
            ]
          )
        )
      )
    );
  }
}
