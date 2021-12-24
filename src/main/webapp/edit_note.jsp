<%@page import="com.notemaker.service.impl.NotesServiceImpl"%>
<%@page import="com.notemaker.service.NotesService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.notemaker.entity.Note"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Edit Note</title>
</head>
<body>
	<%
	int noteId = Integer.parseInt(request.getParameter("note_id"));
	NotesService service = new NotesServiceImpl();
	Note note = service.getNote(noteId);
	%>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 style="margin: 0% 0% 2% 2%;">Edit whatever you want!</h1>
		<div class="container">
			<form action="UpdateNoteServlet" method="post">
				<div class="mb-3">
					<label for="title" class="form-label">Title</label> <input
						type="title" name="title" class="form-control" id="title"
						aria-describedby="emailHelp"  value="<%= note.getTitle() %>" placeholder="Enter here"
						required="required">
				</div>
				<div class="mb-3">
					<label for="content" class="form-label">Content</label>
					<textarea name="content" class="form-control" id="content"
						style="height: 300px" placeholder="Enter your Note here"><%= note.getContent() %></textarea>
				</div>
				<input name="note_id" value="<%= note.getId()%>" type="hidden">
				<div class="container text-center">
					<button type="submit" class="btn btn-primary">Save update</button>
				</div>
			</form>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>