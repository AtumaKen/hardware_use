import 'package:flutter/material.dart';
import 'package:hardwareuse/screens/add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your PLaces"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPLaceScreen.routeName);
            },
          )
        ],
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
