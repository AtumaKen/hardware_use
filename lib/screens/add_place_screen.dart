import 'package:flutter/material.dart';
import 'package:hardwareuse/widgets/image_input.dart';

class AddPLaceScreen extends StatefulWidget {
  static const routeName = "/add-place";

  @override
  _AddPLaceScreenState createState() => _AddPLaceScreenState();
}

class _AddPLaceScreenState extends State<AddPLaceScreen> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new Place"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: "Title"),
                    controller: _titleController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ImageInput()
                ],
              ),
            ),
          )),
          RaisedButton.icon(
            onPressed: () {},
            elevation: 0,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.add),
            label: (Text("Add Place")),
          )
        ],
      ),
    );
  }
}
