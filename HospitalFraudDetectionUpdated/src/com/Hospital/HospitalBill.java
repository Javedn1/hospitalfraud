package com.Hospital;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;

/**
 * Servlet implementation class HospitalBill
 */
public class HospitalBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Connection con = null;
	PreparedStatement ps;
   ResultSet rs;
   String prescription,billno ,issuedate,issueby,towards,amount,claimid;
   int i=0,len;
   
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
			issueby=request.getParameter("issue");
			prescription=request.getParameter("prescription");
			towards=request.getParameter("towards");
			amount=request.getParameter("amount");
			System.out.println("claimid="+claimid);
			System.out.println("bill no="+billno);
			System.out.println("issue date="+issuedate);
			System.out.println("issue by="+issueby);
			System.out.println("towards="+towards);
			System.out.println("amount="+amount);
			System.out.println("prescription="+prescription);
			
			
			ps=con.prepareStatement("insert into hospitalbill (claimid,billno,issuedate,issueby,prescription,towards,amount)"+"values(?,?,?,?,?,?,?)");
			ps.setString(1, claimid);
			ps.setString(2,billno);
			ps.setString(3,issuedate);
			ps.setString(4,issueby);
			ps.setString(5, prescription);
			ps.setString(6, towards);
			ps.setString(7,amount);
			
			
			
			//ps.setString(12,file.getName());
		
			//System.out.println("file name "+file.getName());
			int result=ps.executeUpdate();
			 
			if (result > 0)
			{
				System.out.println(" successfull");
				response.sendRedirect("doctorhome.jsp?claimid");
				
				
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
