import 'dart:convert';

import 'package:flutter_sqflite/model/Note.dart';
import 'package:sqflite/sqflite.dart';

class NoteRepository {
  static Future<Database> _getDatabase() async {
    Note note = Note();
    final database = await openDatabase(
      'notes.db',
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE NOTE(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            data TEXT
          )
        ''');

        //insert
        await db.insert('NOTE', {'title': note.id, 'data': note.data});
      },
    );
    return database;
  }

  static Future<List<Note>> getNotes() async {
    final db = await _getDatabase();
    final result = await db.query('NOTE');
    return result.map((json) => Note.fromJson(json)).toList();
  }

  static Future<int> addNote(Note note) async {
    final db = await _getDatabase();
    return await db.insert('NOTE', note.toJson());
  }

  static Future<int> updateNote(Note note) async {
    final db = await _getDatabase();
    return await db.update(
      'NOTE',
      note.toJson(),
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }

  static Future<int> deleteNote(int id) async {
    final db = await _getDatabase();
    return await db.delete('NOTE',where: 'id = ?',whereArgs: [id]);
  }


}
