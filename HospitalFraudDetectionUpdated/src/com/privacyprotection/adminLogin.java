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


public class adminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
    public adminLogin() {
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
	          ps =con.prepareStatement("select * from admin where username=? and password=?");
	          
	          ps.setString(1,username);
	          ps.setString(2,password);
	          


	          rs = ps.executeQuery();
	          HttpSession session=req.getSession(true);
	          
	          if(rs.next())
	          {  
	        	  String username=rs.getString("username");
	        	  

	            System.out.println("Login successfully");
	            session.setAttribute("username",username);
	           
	            
	            res.sendRedirect("adminhome.jsp");
	           //res.sendRedirect("patient_clinician.jsp?status=success");
	            
	          }  
	          else{  
	        	  /*System.out.println("Login failed");
		            out.println("<html>");
		            out.println("<body>");
		            out.println("<center>");
		            out.println("<h1>Data Inserted Failed</h1>");
		            out.println("<a href=userlogin.jsp><h2>Login Again..!!!</h2></a>");
		            out.println("</center>");
		            out.println("</body>");
		            out.println("</html>");
		            */
		            //res.sendRedirect("adminLogin.jsp");
	        	  
	        	  res.setContentType("text/html");  
		 			 out.println("<script type=\"text/javascript\">");  
		 			 out.println("alert('Username or password Incorrect');");
		 			 out.println("document.location('adminlogin.jsp')");
		 			 out.println("</script>");
	           }  
	          ps.close();
	        }  
	        catch (Exception e){  
	          e.printStackTrace();  
	        }  
		
	}

}
