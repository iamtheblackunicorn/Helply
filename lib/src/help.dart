/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'list.dart';
import 'vars.dart';
import 'data.dart';
import 'error.dart';
import 'loading.dart';
import 'package:flutter/material.dart';

/// The listview for users to scroll through
/// and choose a facility or offer from.
/// Relies on asynchronous data, might show
/// an error if the data cannot be retrieved.
class HelpNavigator extends StatefulWidget{
  final APIStorage apiStorage;
  HelpNavigator({
    Key? key,
    required this.apiStorage
  }) : super(key: key);
  @override
  HelpNavigatorState createState() => HelpNavigatorState();

}
class HelpNavigatorState extends State<HelpNavigator> {
  late Future<Map<String, dynamic>> api;
  @override
  void initState(){
    super.initState();
    api = widget.apiStorage.readData();
  }
  @override
  Widget build(BuildContext context){
    /// We return a FutureBuilder to wait for asnychronous data.
    return FutureBuilder<Map<String, dynamic>>(
      future: api,
      builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          /// While the data is loading this is displayed.
          return Loading();
        }
        else {
          if (snapshot.hasError) {
            /// If there's an error, this widget is shown.
            return Error();
          }
          else {
            /// If everything goes to plan, the [Future] is
            /// nuked and passed to the actual list view.
            Map<String, dynamic> data = snapshot.data!;
            return DataListView(
              data: data
            );
          }
        }
      }
    );
  }

}
