package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.notemaker.entity.Note;
import com.notemaker.service.NotesService;
import com.notemaker.service.impl.NotesServiceImpl;

public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateNoteServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int noteId = Integer.parseInt(request.getParameter("note_id"));
			
			NotesService service = new NotesServiceImpl();
			Note note = service.getNote(noteId);
			note.setTitle(title);
			note.setContent(content);
			service.updateNote(note);
			response.sendRedirect("show_notes.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
