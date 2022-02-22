package com.privacyprotection;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.util.DbConnection;


public class PoliceSection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public PoliceSection() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Hello Users");
		HttpSession session=request.getSession();
		String claimid = session.getAttribute("claimid").toString();
		String sub = session.getAttribute("sub").toString();
		
		System.out.println("Claimid:= " +claimid+ " Sub:= " +sub);
		
		try 
		{
		Connection con=(Connection) DbConnection.getConnection();
		PreparedStatement ps=(PreparedStatement) con.prepareStatement("INSERT INTO `policerequest`(`claimid`, `sub`) VALUES ('"+claimid+"','"+sub+"')");
		int i=ps.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("adminhome.jsp?add");
		}
		else
		{
			response.sendRedirect("verifyAll.jsp?fail");	
		}
	}
	catch(Exception e)
	{
		System.out.println("Exception "+e);
	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	}

}
