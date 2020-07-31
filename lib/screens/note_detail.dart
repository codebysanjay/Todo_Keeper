import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NoteDetail extends StatefulWidget {
  String appTitle;
  NoteDetail(this.appTitle);
  @override
  _NoteDetailState createState() => _NoteDetailState(this.appTitle);
}

class _NoteDetailState extends State<NoteDetail> {
  String appTitle;
  static var _priorities = ['High', 'Low'];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  _NoteDetailState(this.appTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: DropdownButton(
                items: _priorities.map((String dropDownStringItems) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItems,
                    child: Text(dropDownStringItems),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    print('user selected $value');
                  });
                },
                value: 'Low',
              ),
            ),

            //title Input
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TextField(
                controller: titleController,
                onChanged: (value) {
                  setState(() {
                    print("user value $value");
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Title',
                  labelText: "Title Text",
                ),
              ),
            ),
            //description text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TextField(
                controller: descriptionController,
                onChanged: (value) {
                  setState(() {
                    print("user value $value");
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Description',
                  labelText: "Description Text",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Colors.teal,
                      onPressed: () {
                        setState(() {
                          print("Saved");
                        });
                      },
                      child: Text(
                        'SAVE',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: RaisedButton(
                      color: Colors.teal,
                      onPressed: () {
                        setState(() {
                          print("deleted");
                        });
                      },
                      child: Text(
                        'DELETE',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
