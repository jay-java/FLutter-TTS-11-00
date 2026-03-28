import 'package:flutter/material.dart';
import 'package:flutter_sqflite/repositories/dart_repository.dart';

import '../model/Note.dart';
import 'new_note.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  List<Note> notes = [];

  Future<void> loadNotes() async {
    final notes = await NoteRepository.getNotes();
    setState(() {
      this.notes = notes;
    });
  }

  @override
  void initState() {
    super.initState();
    loadNotes();
  }

  void _updateNote(Note note)async{
    titleController.text = note.title!;
    noteController.text = note.data!;
    final result = showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text('Update note'),
        content: Container(
          height: 200,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    label: Text('Title'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: noteController,
                  decoration: InputDecoration(
                    label: Text('Note'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Note note = Note();
              note.id = note.id;
              note.title = titleController.text.toString();
              note.data = noteController.text.toString();
              NoteRepository.updateNote(note);
              Navigator.pop(context, 'Yes');
            },
            child: const Text('Yes'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'No'),
            child: const Text('No'),
          ),
        ],
      );
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SQFLite'), backgroundColor: Colors.grey),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final note = notes[index];
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            color: Colors.blue.shade100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              onTap: () {
                _updateNote(note);
              },
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Text(
                  note.id.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                note.title.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(note.data.toString()),
              trailing: IconButton(
                onPressed: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Are you sure ?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            NoteRepository.deleteNote(note.id!);
                            Navigator.pop(context, 'Yes');
                          },
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'No'),
                          child: const Text('No'),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.delete),
              ),
            ),
          );
        },
        itemCount: notes.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNote()),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.grey.shade700,
      ),
    );
  }
}
