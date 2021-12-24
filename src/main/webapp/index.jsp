<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="all_js_css.jsp"%>

<title>Note-Taker</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>

		<div class="container mt-5">
			<div class="card border-0" >
				<img src="images/noticeboard.png" class="image-fluid mt-4 mx-auto " style="max-width:400px" alt="...">
				<div class="card-body">
					<h5 class="card-title text-primary text-uppercase text-center mt-4">Start Taking Your Notes Right here</h5>
					<div class="container text-center">
					<a href="add_notes.jsp" class="btn btn-primary mt-3">Start here</a></div>
				</div>
			</div>
		</div>

	</div>
<%@include file="footer.jsp" %>
</body>
</html>