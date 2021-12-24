<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.notemaker.service.impl.NotesServiceImpl"%>
<%@page import="com.notemaker.service.NotesService"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Locale" %>
<%@page import="com.notemaker.entity.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<div>
		<h1 class="text-uppercase " style="margin: 0% 2% 2% 2%;">Your
			Notes 
			<a href="DeleteAllNotesServlet.do" style="float:right" class="btn btn-warning ">Delete All</a>
			</h1> 
			
			</div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<%
					NotesService service = new NotesServiceImpl();
					List<Note> notes = service.getNotes();
					for (Note note : notes) {
					%>
					<div class="card mt-3">
						<img src="images/notes.png" style="max-width: 50px;"
							class="card-img-top m-2 mx-auto" alt="Card Image">
						<div class="card-body">
							
							<h5 class="card-title"><%=note.getTitle()%></h5>
							<p class="card-text"><%=note.getContent()%></p>
							<p class="text-primary">
								<b>
								<% String pattern = "E MMM dd, yyyy HH:mm:ss";
								SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern, Locale.ENGLISH);
								String date = simpleDateFormat.format(note.getAddedDate());%>
								<%=date %></p></b>
							<div class="container text-center">
								<a href="DeleteNoteServlet?note_id=<%=note.getId()%>"
									class="btn btn-danger">Delete</a> <a
									href="edit_note.jsp?note_id=<%=note.getId()%>"
									class="btn btn-primary">Update</a>
							</div>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</div>

	</div>
	
	<%@include file="footer.jsp" %>
</body>
</html>