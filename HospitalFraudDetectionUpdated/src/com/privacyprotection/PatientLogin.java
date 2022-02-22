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


public class PatientLogin extends HttpServlet 
{
	Connection con=null;
	PreparedStatement ps;
	ResultSet rs;

	String username;
	String password;


	public void init()
	{
		{
			try
			{
				con=DbConnection.getConnection();
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}
	private static final long serialVersionUID = 1L;
       
    
    public PatientLogin() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		try{  
			 res.setContentType("text/html");  
	          username = req.getParameter("username");  
	          password = req.getParameter("password");
	          PrintWriter out = res.getWriter();
	          
	          System.out.println("username value. . . .. "+username);
	          System.out.println("password value. . . .. "+password);
	          ps =con.prepareStatement("select * from patient_register where username=? and password=?");
	          
	          ps.setString(1,username);
	          ps.setString(2,password);
	          


	          rs = ps.executeQuery();
	          HttpSession session=req.getSession(true);
	          
	          if(rs.next())
	          {  
	        	  String username=rs.getString("username");
	        	  

	            System.out.println("Login successfully");
	            session.setAttribute("username",username);
	           
	            
	            res.sendRedirect("patienthome.jsp");
	           //res.sendRedirect("patient_clinician.jsp?status=success");
	            
	          }  
	          else{  
	        	
		            res.sendRedirect("patientlogin.jsp");
	           }  
	          ps.close();
	        }  
	        catch (Exception e){  
	          e.printStackTrace();  
	        }  
		
	}

}
