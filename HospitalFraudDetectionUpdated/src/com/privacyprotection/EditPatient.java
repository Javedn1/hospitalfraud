package com.privacyprotection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.util.DbConnection;
/**
 * Servlet implementation class EditPatient
 */
public class EditPatient extends HttpServlet 
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
				con=(Connection) DbConnection.getConnection();
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}
	private static final long serialVersionUID = 1L;
	
	  public EditPatient() {
	        super();
	        
	    }   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		
		loginRequest(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		
		loginRequest(request,response);
	}

	private void loginRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException,IOException {
		
		
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		try{
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			System.out.println("username is="+username);
			System.out.println("password is="+password);
			Connection con = (Connection) DbConnection.getConnection();
			Statement st = (Statement) con.createStatement();
			System.out.println("password is");
			int rs = st.executeUpdate("update patient_register set password ='"+password+"' where username= '"+username+"'");
			System.out.println("password is");
			if(rs>0){
				
				System.out.println("User profile Updation successfull");
	            
	           
	            
	            
	            response.sendRedirect("patienthome.jsp?update=success");
				
				
			}else{
				System.out.println("User profile Updation failed");
					response.sendRedirect("editpatient.jsp?update=fail");
				}
			
		}catch(Exception e){
			out.println(e);
		}finally{
			
			out.close();
		}
		
	}
}
