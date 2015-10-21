package com.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.projectbean;
import com.dao.ConnectionDAO;
import com.dao.projectdao;

/**
 * Servlet implementation class projectcontroller
 */
@WebServlet("/projectcontroller")
public class projectcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String projectid = request.getParameter("projectid");
		 String projectname = request.getParameter("projectname");
		// System.out.println(request.getParameter("p_manager")+"controller");
		 String p_manager = request.getParameter("p_manager");
		 //System.out.println(request.getParameter("no_leaders")+"controller");
		 int no_leaders = Integer.parseInt(request.getParameter("no_leaders"));
		 int no_volunteers = Integer.parseInt(request.getParameter("no_volunteers"));
		 int p_budget = Integer.parseInt(request.getParameter("p_budget"));
		 String p_location = request.getParameter("p_location");
		 String p_from = request.getParameter("p_from");
		 String p_to = request.getParameter("p_to");
		projectdao pdao;
		int result;
		projectbean pbean = new projectbean(projectid, projectname, p_manager, no_leaders, no_volunteers, p_budget, p_location, p_from, p_to);
		try {
			pdao = new projectdao();
			result = pdao.addProject(pbean);
			if(result >= 1) {
				response.sendRedirect("home.jsp");
			}
			else {
				response.sendRedirect("home.jsp");
			}
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	} 

}
