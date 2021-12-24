package com.notemaker.service;

import java.util.List;

import com.notemaker.entity.Note;

public interface NotesService {

	void addNote(Note note);

	List<Note> getNotes();

	void deleteNote(int noteId);

	Note getNote(int noteId);
	
	void updateNote(Note note);
	
	void deleteAllNotes();
}
