package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int note_id = Integer.parseInt(request.getParameter("note_id").trim());
		// hibernate save command
		
		Session s = FactoryProvider.getSessionFactory().openSession();
		Transaction tx = s.beginTransaction();
		Note noteObj = s.get(Note.class, note_id);
		
		noteObj.setTitle(title);
		noteObj.setContent(content);
		noteObj.setAddedDate(new Date());
		tx.commit();
		s.close();
		response.sendRedirect("all_notes.jsp");
	}

}
