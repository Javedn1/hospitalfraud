package com.privacyprotection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;

/**
 * Servlet implementation class AddHospital
 */
public class AddHospital extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String state,district,tahsil,contact,address,claim,hospitalname;
    public AddHospital() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init()
	{
		
		try
		{
			
			con = DbConnection.getConnection();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		state = request.getParameter("branch");
		district = request.getParameter("year");
		tahsil = request.getParameter("subject");
		hospitalname = request.getParameter("hospitalname");
		contact = request.getParameter("contact");
		address = request.getParameter("address");
		claim = request.getParameter("claim");

		System.out.println("state"+state);
		System.out.println("district"+district);
		System.out.println("tahsil"+tahsil);
		System.out.println("hospitalname"+hospitalname);
		System.out.println("contact"+contact);
		System.out.println("address"+address);
		System.out.println("claim"+claim);
		try {
			Statement st = con.createStatement();

			
			
			int r = st
					.executeUpdate("INSERT INTO `hospital`.`addhospital` (  `state` , `district` , `tahsil` ,`hospitalname` , `address` , `contact` , `claim`  ) VALUES ('"
					+ state
					+ "', '"
					+ district + "','" + tahsil + "','" + hospitalname + "', '" + address + "', '" + contact + "','" + claim + "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
				response.sendRedirect("details.jsp");

			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}

}
