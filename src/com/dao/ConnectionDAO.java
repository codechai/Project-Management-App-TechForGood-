package com.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionDAO {
	String url = "jdbc:mysql://localhost:3306/Management_App";
	String username = "root";
	String password = "neilsql";
	Connection conn;
	//Statement st;
	public Connection getConnection() throws ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("MYSQL driver loaded");
		try {
			conn = DriverManager.getConnection(url,username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		
			e.printStackTrace();
		}
		return conn;
	}
	public static void main(String args[]){
		
		try {
			ConnectionDAO cdao = new ConnectionDAO();
			System.out.println(cdao.getConnection());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}





