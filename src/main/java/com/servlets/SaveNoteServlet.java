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

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Note note = new Note(title, content, new Date());
			NotesService service = new NotesServiceImpl();
			service.addNote(note);
			response.sendRedirect("show_notes.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
