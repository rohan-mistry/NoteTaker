<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="inclusions.jsp" %>
    <title>Note Taker : Add Notes</title>
  </head>
  <body>
  	<%@include file="navbar.jsp" %>
  	<br>
    <div class="container">
    	<h1>This is add notes page</h1>
    	<form action="SaveServlet" method="post">
    		<div class="mb-3">
			  <label for="exampleFormControlInput1" class="form-label">Note title</label>
			  <input name="title" required type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter title here">
			</div>
			<div class="mb-3">
			  <label for="exampleFormControlTextarea1" class="form-label">Note content</label>
			  <textarea
			  	required
			  	class="form-control"
			  	name="content"
			  	id="exampleFormControlTextarea1"
			  	placeholder="Enter something"
			  	rows="3"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
    	</form>
    	
    </div>
    

  </body>
</html>