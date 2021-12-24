package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.notemaker.service.NotesService;
import com.notemaker.service.impl.NotesServiceImpl;

public class DeleteAllNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteAllNotesServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		NotesService service = new NotesServiceImpl();
		service.deleteAllNotes();
		response.sendRedirect("show_notes.jsp");
	
	}


}
