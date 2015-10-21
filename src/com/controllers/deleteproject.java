package com.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.projectdao;

/**
 * Servlet implementation class deleteproject
 */
@WebServlet("/deleteproject")
public class deleteproject extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doProcess(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, IOException {
		try{
			String id = request.getParameter("id");
			System.out.println("in contact controller");
			projectdao ud = new projectdao();
			System.out.println("object for contact dao");
			int result = ud.deleteproject(id);
			System.out.println(result);
			if(result >= 1){
				response.sendRedirect("projectslist.jsp?message= record deleted");
			}
			else{
				response.sendRedirect("projectslist.jsp?message= record not deleted");
			}
		}
		catch (SQLException | NamingException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

}
