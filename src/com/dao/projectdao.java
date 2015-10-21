package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.beans.projectbean;
import com.dao.ConnectionDAO;



public class projectdao {
	ConnectionDAO codao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public projectdao() throws ClassNotFoundException, SQLException, NamingException {
		codao = new ConnectionDAO();
		conn = codao.getConnection();


	}
	public int addProject(projectbean pbean) throws SQLException {
		String query = "insert into projects(projectname, p_manager, no_leaders, no_volunteers, p_budget, p_location, p_from, p_to) values(?,?,?,?,?,?,?,?)";
		st = conn.prepareStatement(query);		
		int result = 0;
		st.setString(1, pbean.getProjectname());
		st.setString(2, pbean.getP_manager());
		st.setInt(3, pbean.getNo_leaders());
		st.setInt(4, pbean.getNo_volunteers());
		st.setInt(5, pbean.getP_budget());
		st.setString(6, pbean.getP_location());
		st.setString(7, pbean.getP_from());
		st.setString(8, pbean.getP_to());
		result = st.executeUpdate();
		return result;

	}
	public List<projectbean> listProjects() throws SQLException,ClassNotFoundException{
		List<projectbean> conCollection = new ArrayList<projectbean>();
		String query = "select * from projects ";
		st = (PreparedStatement) conn.prepareStatement(query);
		ResultSet result = st.executeQuery(query);
		projectbean contactBean2;
		while(result.next()){
			String projectId = result.getString("projectid");
			String projectname = result.getString("projectname");
			String p_manager = result.getString("p_manager");
			int no_leaders = result.getInt("no_leaders");
			int no_volunteers = result.getInt("no_volunteers");
			int p_budget = result.getInt("p_budget");
			String p_location = result.getString("p_location");
			String p_from = result.getString("p_from");
			String p_to = result.getString("p_to");
			contactBean2 = new projectbean(projectId,projectname,p_manager,no_leaders,no_volunteers,p_budget,p_location,p_from,p_to);
			conCollection.add(contactBean2);
		}
		System.out.println(conCollection.size());
		return conCollection;
	}
	public int deleteproject(String id) throws SQLException {
		int result = 0;
		String query = "delete from projects where projectid='"+id+"'";
		st = (PreparedStatement) conn.prepareStatement(query);
		result = st.executeUpdate(query);
		return result;
	}
}
