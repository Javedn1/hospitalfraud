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


public class DoctorRegister extends HttpServlet
{
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String pfname;
	String pmname;
	String plname;
	String dob;
	String age;
	String gender;
	String hospital;
	//String refdoc;
	String address;
	String city;
	String email;
	String mobno;
	String username;
	String password;
	
	
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
       
   
    public DoctorRegister() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
	
		pfname=req.getParameter("pfname");
		pmname=req.getParameter("pmname");
		plname=req.getParameter("plname");
		dob=req.getParameter("dob");
		age=req.getParameter("age");			
		gender=req.getParameter("gender");
		hospital=req.getParameter("hospital");
		//refdoc=req.getParameter("refdoc");
		address=req.getParameter("address");
		city=req.getParameter("city");
		email=req.getParameter("email");
		mobno=req.getParameter("mobno");
		username=req.getParameter("username");
		password=req.getParameter("password");
		
		System.out.println("-------Catch values of patient while registration------");
		System.out.println("pfname"+pfname);
		System.out.println("pmname"+pmname);
		System.out.println("plname"+plname);
		System.out.println("dob"+dob);
		System.out.println("age"+age);
		System.out.println("gender"+gender);
		System.out.println("hospital"+hospital);
		//System.out.println("refdoc"+refdoc);
		System.out.println("address"+address);
		System.out.println("city"+city);
		System.out.println("email"+email);
		System.out.println("mobile"+mobno);
		System.out.println("username"+username);
		System.out.println("password"+password);
		
		
		
		
		try 
		{
			PrintWriter out=res.getWriter();
			
			ps=con.prepareStatement("insert into doctor_register (pfname,pmname,plname,dob,age,gender,hospital,address,city,email,mobile,username,password)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,pfname);
			ps.setString(2,pmname);
			ps.setString(3,plname);
			ps.setString(4, dob);
			ps.setString(5,age);
			ps.setString(6, gender);
			ps.setString(7, hospital);
			//ps.setString(8, refdoc);
			ps.setString(8, address);
			ps.setString(9, city);
			ps.setString(10, email);
			ps.setString(11, mobno);
			ps.setString(12, username);
			ps.setString(13, password);
			
			//ps.setString(12,file.getName());
		
			//System.out.println("file name "+file.getName());
			int result=ps.executeUpdate();
			 
			if (result > 0)
			{
				System.out.println("Patient Registration successfull");
				res.sendRedirect("doctorlogin.jsp?status=success");
				
				
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



