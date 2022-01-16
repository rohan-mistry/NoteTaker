<!doctype html>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="inclusions.jsp" %>
    <title>Note Taker : Edit Note</title>
  </head>
  <body>
	  <%@include file="navbar.jsp" %>
	  <br>
    <div class="container">
    	
    	<%
    	Session s = FactoryProvider.getSessionFactory().openSession();
    	int note_id = Integer.parseInt(request.getParameter("note_id").trim());
    	Note noteObj = s.get(Note.class, note_id);
    	%>
    	<h5>Note ID : <%= note_id %></h5>
    	<form action="UpdateServlet" method="post">
    		<input name="note_id" value="<%= noteObj.getId() %>" type="hidden"/>
    		<div class="mb-3">
			  <label for="exampleFormControlInput1" class="form-label">Note title</label>
			  <input 
			  	name="title" 
			  	required type="text" 
			  	class="form-control" 
			  	id="exampleFormControlInput1" 
			  	value="<%= noteObj.getTitle() %>"
			  	placeholder="Enter title here">
			</div>
			<div class="mb-3">
			  <label for="exampleFormControlTextarea1" class="form-label">Note content</label>
			  <textarea
			  	required
			  	class="form-control"
			  	name="content"
			  	id="exampleFormControlTextarea1"
			  	placeholder="Enter something"
			  	rows="3"><%= noteObj.getContent() %></textarea>
			</div>
			<button type="submit" class="btn btn-success">Save Note</button>
			<a href="all_notes.jsp" class="btn btn-light">Cancel</a>
    	</form>
    	<%
    		s.close();
    	%>
    </div>
    

  </body>
</html>