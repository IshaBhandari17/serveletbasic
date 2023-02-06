package com.login.dao;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.ResultSet;

public class LoginDao {
	String url ="jdbc:mysql://localhost:3306/db";
	String username="root";
	String password = "19btc029@ietdavv.com";
	String query = "Select * from loginForm where uname = ? and pass = ?";
	public boolean check(String uname , String pass) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(query);
			st.setString(0, uname);
			st.setString(1, pass);
			ResultSet rs= st.executeQuery();
			if(rs.next()) {
				return true;
			} }catch (Exception e) {
				e.printStackTrace();
			}
			return false;

	}
}