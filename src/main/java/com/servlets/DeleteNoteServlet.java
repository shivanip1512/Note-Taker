package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.notemaker.service.NotesService;
import com.notemaker.service.impl.NotesServiceImpl;

public class DeleteNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteNoteServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int noteId = Integer.parseInt(request.getParameter("note_id"));
			NotesService service = new NotesServiceImpl();
			service.deleteNote(noteId);
			response.sendRedirect("show_notes.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
