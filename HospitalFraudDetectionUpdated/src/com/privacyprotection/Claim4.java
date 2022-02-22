package com.privacyprotection;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;

/**
 * Servlet implementation class Claim4
 */
public class Claim4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con = null;
	PreparedStatement ps;
   ResultSet rs;
   String billno ,issuedate,issueby,towards,amount,claimid;
   int i=0,len;
    public Claim4() {
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try 
		{
			claimid=request.getParameter("claimid");
			billno=request.getParameter("billno");
			issuedate=request.getParameter("issuedate");
			issueby=request.getParameter("issueby");
			towards=request.getParameter("towards");
			amount=request.getParameter("amount");
			System.out.println("claimid="+claimid);
			System.out.println("claimid="+billno);
			System.out.println("claimid="+issuedate);
			System.out.println("claimid="+issueby);
			System.out.println("claimid="+towards);
			System.out.println("claimid="+amount);
			
			
			ps=con.prepareStatement("insert into bill (billno,issuedate,issueby,towards,amount,claimid)"+"values(?,?,?,?,?,?)");
			ps.setString(1,billno);
			ps.setString(2,issuedate);
			ps.setString(3,issueby);
			ps.setString(4, towards);
			ps.setString(5,amount);
			ps.setString(6, claimid);
			
			
			//ps.setString(12,file.getName());
		
			//System.out.println("file name "+file.getName());
			int result=ps.executeUpdate();
			 
			if (result > 0)
			{
				System.out.println(" successfull");
				response.sendRedirect("claim4.jsp?claimid="+claimid);
				
				
			}
			else
			{
				System.out.println("Claim bill failed");
			}
		}
		
		catch(Exception e1)
		{
			e1.printStackTrace();
		}

	}

	public void distroy()
	{
		
		try
		{
			ps.close();
			con.close();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
		
		
	}

}
