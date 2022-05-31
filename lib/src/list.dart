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

/// Provides the main list view for viewing
/// available facilities.
class DataListView extends StatelessWidget{
  late final Map<String, dynamic> data;
  DataListView({
    required this.data
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
          stdTitle,
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
      body: new SingleChildScrollView(
        child:new Center(
          child:new ListView.builder(
            shrinkWrap: isSo,
            itemCount: data.length,
            itemBuilder: (context, index){
              String title = data.keys.elementAt(index);
              String imageUrl = data[title]['imageUrl']!;
              String address = data[title]['address']!;
              String number = data[title]['telNumber']!;
              return InfoCard(
                title: title,
                imageUrl: imageUrl,
                address: address,
                telNumber: number,
                navigateTo: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailView(
                        title: title,
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
