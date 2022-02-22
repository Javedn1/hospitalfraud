package com.privacyprotection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;


public class requestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;  
	
	String table;
	//String status;
	String username;
	
    public requestServlet() {
        super();
        
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			HttpSession session=request.getSession();
			
			username=(String) session.getAttribute("username");
			table=(String) session.getAttribute("table");
			
			System.out.println("Username :"+ username + " table :"+table);
			ps=con.prepareStatement("insert into adminrequest(username,server) values(?,?)");
			ps.setString(1, username);
			ps.setString(2, table);
			ps.executeUpdate();
			
			PrintWriter out=response.getWriter();
			out.println("<html>");
			out.println("<body>");
			out.println("<center>");
			out.println("<h1>Request Send Successfully</h1>");
			out.println("<a href=doctorhome.jsp><h2>Back</h2></a>");
			out.println("</center>");
			out.println("</body>");
			out.println("</html>");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
