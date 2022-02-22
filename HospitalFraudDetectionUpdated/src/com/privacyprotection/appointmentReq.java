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

import com.util.DbConnection;


public class appointmentReq extends HttpServlet
{
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String pfname;
	String pmname;
	String plname;
	int age;
	String gender;
	String bloodgroup;
	//String refdoc;
	String address;
	String city;
	String email;
	int mobile;
	
	
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
	private static final long serialVersionUID = 1L;
       
   
    public appointmentReq() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
	
		pfname=req.getParameter("pfname");
		pmname=req.getParameter("pmname");
		plname=req.getParameter("plname");
		age=Integer.parseInt(req.getParameter("age"));			
		gender=req.getParameter("gender");
		bloodgroup=req.getParameter("bloodgroup");
		//refdoc=req.getParameter("refdoc");
		address=req.getParameter("address");
		city=req.getParameter("city");
		email=req.getParameter("email");
		mobile=Integer.parseInt(req.getParameter("mobile"));
		
		System.out.println("-------Catch values of patient while registration------");
		System.out.println("pfname"+pfname);
		System.out.println("pmname"+pmname);
		System.out.println("plname"+plname);
		System.out.println("age"+age);
		System.out.println("gender"+gender);
		System.out.println("bloodgroup"+bloodgroup);
		//System.out.println("refdoc"+refdoc);
		System.out.println("address"+address);
		System.out.println("city"+city);
		System.out.println("email"+email);
		System.out.println("mobile"+mobile);		
		
		
		try 
		{
			PrintWriter out=res.getWriter();
			
			ps=con.prepareStatement("insert into doctor_register (pfname,pmname,plname,age,gender,bloodgroup,address,city,email,mobile)"+"values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,pfname);
			ps.setString(2,pmname);
			ps.setString(3,plname);
			ps.setInt(4,age);
			ps.setString(5, gender);
			ps.setString(6, bloodgroup);
			//ps.setString(8, refdoc);
			ps.setString(7, address);
			ps.setString(8, city);
			ps.setString(9, email);
			ps.setInt(10, mobile);
			
			//ps.setString(12,file.getName());
		
			//System.out.println("file name "+file.getName());
			int result=ps.executeUpdate();
			 
			if (result > 0)
			{
				System.out.println("Patient Registration successfull");
				res.sendRedirect("index.jsp?status=success");
				
				
			}
			else
			{
				System.out.println("Ragistration failed");
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



