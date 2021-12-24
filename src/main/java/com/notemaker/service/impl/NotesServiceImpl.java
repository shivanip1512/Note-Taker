package com.notemaker.service.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.notemaker.entity.Note;
import com.notemaker.helper.FactoryProvider;
import com.notemaker.service.NotesService;

public class NotesServiceImpl implements NotesService {

	public void addNote(Note note) {
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(note);
		transaction.commit();
		session.close();
	}

	public List<Note> getNotes() {

		Session session = FactoryProvider.getFactory().openSession();
		Criteria criteria = session.createCriteria(Note.class);
		List<Note> list = criteria.list();
		session.close();
		return list;
	}

	public Note getNote(int noteId) {
		Session session = FactoryProvider.getFactory().openSession();
		Note note = session.get(Note.class, noteId);
		session.close();
		return note;
	}

	public void deleteNote(int noteId) {
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		Note node = getNote(noteId);
		session.delete(node);
		transaction.commit();
		session.close();
	}

	public void updateNote(Note note) {
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.update(note);
		transaction.commit();
		session.close();
	}

	public void deleteAllNotes() {
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.createSQLQuery("truncate table notes").executeUpdate();
		transaction.commit();
		session.close();
	}

}
