import 'package:flutter/material.dart';
import 'package:flutter_sqflite/model/Note.dart';
import 'package:flutter_sqflite/pages/home_page.dart';
import 'package:flutter_sqflite/repositories/dart_repository.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {

  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
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
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, // text color
                backgroundColor: Colors.blue,
              ),
             onPressed: () {
                Note note  = Note();
                note.title = titleController.text.toString();
                note.data = noteController.text.toString();
                print(note);

                NoteRepository.addNote(note);
                titleController.clear();
                noteController.clear();
                print('note added successfully');
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));
              },
              child: Text('Add',style: TextStyle(fontSize: 25),))
        ],
      ),
    );
  }
}
