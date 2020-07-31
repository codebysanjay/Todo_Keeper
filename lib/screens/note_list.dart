import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_keeper/screens/note_detail.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('My To-Do'),
        ),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigationNote(context, 'ADD NOTE');
        },
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 5.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.tealAccent,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text('DummyTile'),
            subtitle: Text('Dummy Date'),
            trailing: Icon(
              Icons.delete,
              color: Colors.white12,
            ),
            onTap: () {
              navigationNote(context, 'EDIT NOTE');
            },
          ),
        );
      },
    );
  }
}

void navigationNote(BuildContext context, String title) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => NoteDetail(title)));
}
