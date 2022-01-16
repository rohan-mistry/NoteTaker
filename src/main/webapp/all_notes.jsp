<!doctype html>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="inclusions.jsp" %>
    <title>Note Taker : All notes</title>
  </head>
  <body>
	  <%@include file="navbar.jsp" %>
	  <br>
    <div class="container">
    	<h1><img src="images/pencil.png" style="max-height:50px">My List</h1>
    	<%
    	Session s = FactoryProvider.getSessionFactory().openSession();
		Query q = s.createQuery("from Note");
		List<Note> data = q.list();
		for(Note val:data) {
		%>
			<div class="card mb-2">
			  <div class="card-header text-end">
			  	<div style="float:left">#<%= val.getId() %></div>
			    Updated on: <span class="text-primary"><%= val.getAddedDate().toLocaleString() %></span>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title"><%= val.getTitle() %></h5>
			    <p class="card-text"><%= val.getContent() %></p>
			    <div class="text-center">
			    	<a href="edit_note.jsp?note_id=<%= val.getId() %>" class="btn btn-primary">Update</a>
					<a href="DeleteServlet?note_id=<%= val.getId() %>" class="btn btn-danger">Delete</a>
			    </div>
			  </div>
			</div>
		<%
		}
		s.close();
    	%>
    </div>
  </body>
</html>