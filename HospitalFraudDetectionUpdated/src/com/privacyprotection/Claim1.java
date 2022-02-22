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


public class Claim1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
       String claimid,policyno,hcardno,startdate,enddate,joindate,coname,empid,empname,email,mno,address,city,state,pincode,phno,pan;
    
    public Claim1() {
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


protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
{
claimid=req.getParameter("claimid");
	policyno=req.getParameter("policyno");
	hcardno=req.getParameter("hcardno");
	startdate=req.getParameter("startdate");
	enddate=req.getParameter("enddate");
	joindate=req.getParameter("joindate");			
	coname=req.getParameter("coname");
	empid=req.getParameter("empid");
	empname=req.getParameter("empname");
	email=req.getParameter("email");
	mno=req.getParameter("mno");
	pan=req.getParameter("pan");
	address=req.getParameter("address");
	city=req.getParameter("city");
	state=req.getParameter("state");
	pincode=req.getParameter("pincode");
	phno=req.getParameter("phno");
	
	System.out.println("-------Catch values of patient while registration------");
	System.out.println("claimid="+claimid);
	System.out.println("policy no="+policyno);
	System.out.println("join date="+joindate);
	System.out.println("start ="+startdate);
	System.out.println("co name="+coname);
	System.out.println("emp id="+empid);
	System.out.println("mobile no="+mno);
	System.out.println("pin code ="+pincode);
	System.out.println("phone no="+phno);
	System.out.println("address="+address);
	System.out.println("city="+city);
	System.out.println("email="+email);
	System.out.println("sate="+state);
	System.out.println("pan ="+pan);
	System.out.println("emp name="+empname);
	
	
	
	
	try 
	{
		PrintWriter out=res.getWriter();
		
		ps=con.prepareStatement("insert into claim1 (policyno,hcardno,startdate,enddate,joindate,coname,empid,empname,email,mno,pan,address,city,state,pincode,phno,claimid)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,policyno);
		ps.setString(2,hcardno);
		ps.setString(3,startdate);
		ps.setString(4, enddate);
		ps.setString(5,joindate);
		ps.setString(6, coname);
		ps.setString(7, empid);
		ps.setString(8, empname);
		ps.setString(9, email);
		ps.setString(10, mno);
		ps.setString(11, pan);
		ps.setString(12, address);
		ps.setString(13, city);
		ps.setString(14, state);
		ps.setString(15, pincode);
		ps.setString(16, phno);
		ps.setString(17, claimid);
		
		//ps.setString(12,file.getName());
	
		//System.out.println("file name "+file.getName());
		int result=ps.executeUpdate();
		 
		if (result > 0)
		{
			System.out.println("Patient Registration successfull");
			res.sendRedirect("claim2.jsp?claimid="+claimid);
			
			
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
