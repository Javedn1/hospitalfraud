package com.privacyprotection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;


public class updatestatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	
	String id;
	String username;
	String server;
   
    public updatestatus() {
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
			id=request.getParameter("id");
			
			
			PreparedStatement ps=con.prepareStatement("select * from adminrequest where id=?");
			ps.setString(1, id);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				username=rs.getString("username");
				server=rs.getString("server");
			}
			
			String sql="update "+server+" set status=null where username=?";
			PreparedStatement ps1=con.prepareStatement(sql);
			ps1.setString(1, username);
			ps1.executeUpdate();
			
			PreparedStatement delete = con.prepareStatement("delete from adminrequest where id=?");
			delete.setString(1, id);
			delete.executeUpdate();
			
			response.sendRedirect("adminhome.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
