<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Add Notes</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 style="margin:0% 0% 2% 2%;">Here is your Note Page</h1>
		<div class="container">

			<form action="SaveNoteServlet" method="post">
				<div class="mb-3">
					<label for="title" class="form-label">Title</label> 
					<input type="title" 
						name="title"
						class="form-control"
						id="title" 
						aria-describedby="emailHelp"
						placeholder="Enter here" 
						required="required">
				</div>
				<div class="mb-3">
					<label for="content" class="form-label">Content</label>
					<textarea 
					name="content"
					class="form-control"
					id="content"
					style="height:300px"
					placeholder="Enter your Note here"></textarea>
				</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
			</form>

		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>