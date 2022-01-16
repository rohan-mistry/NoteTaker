<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="inclusions.jsp" %>
    <title>Note Taker</title>
  </head>
  <body>
  <%@include file="navbar.jsp" %>
  <br>
    <div class="container"> 	
    	<div class="card mb-3">
		  <img src="images/pencil.png" style="max-width:400px;" class="card-img-top mx-auto" alt="pencil icon">
		  <div class="card-body">
		  	<h3 class="text-uppercase text-center">Don't forget your important tasks. Start taking notes</h3>
		  </div>
		  <div class="text-center m-3 d-grid gap-2">
		  	<a class="btn btn-warning" href="add_notes.jsp" role="button">Add new here</a>
		  </div>
		</div>
    </div>
    

  </body>
</html>