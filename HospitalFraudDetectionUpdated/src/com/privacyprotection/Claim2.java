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

/**
 * Servlet implementation class Claim2
 */
public class Claim2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
     //  String policyno,hcardno,startdate,enddate,joindate,coname,empid,empname,email,mno,address,city,state,pincode,phno,pan;
    String pname,self,spouse,child,parent,dob, age, gender, occup;
    String otherm,fdate,iname,pno,fpolicy,hdate,diagnosis,pother,cname,sum, relation,claimid;
    

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
	String a[]=req.getParameterValues("relation");
    for(int i=0;i<a.length;i++){
        relation+=a[i]+"";
    }
	pname=req.getParameter("pname");
				
	dob=req.getParameter("dob");
	age=req.getParameter("age");
	gender=req.getParameter("gender");
	occup=req.getParameter("occup");
	claimid=req.getParameter("claimid");
	
	otherm=req.getParameter("otherm");
	fdate=req.getParameter("fdate");
	iname=req.getParameter("iname");
	pno=req.getParameter("pno");
	fpolicy=req.getParameter("fpolicy");
	hdate=req.getParameter("hdate");
	diagnosis=req.getParameter("diagnosis");
	pother=req.getParameter("pother");
	cname=req.getParameter("cname");
	sum=req.getParameter("sum");
	
	System.out.println("-------Catch values of patient while registration------");
	System.out.println("claim id="+claimid);
	System.out.println("policy no="+dob);
	System.out.println("join date="+occup);
	System.out.println("start ="+pno);
	System.out.println("co name="+hdate);
	System.out.println("emp id="+fdate);
	System.out.println("mobile no="+gender);
	System.out.println("pin code ="+age);
	System.out.println("phone no="+cname);
	System.out.println("address="+iname);
	System.out.println("city="+pother);
	System.out.println("email="+sum);
	System.out.println("sate="+self);
	System.out.println("pan ="+relation);
	System.out.println("emp name="+spouse);
	
	
	
	
	try 
	{
		PrintWriter out=res.getWriter();
		
		ps=con.prepareStatement("insert into claim2 (pname,relation,dob,age,gender,occup,otherm,fdate,iname,pno,fpolicy,hdate,diagnosis,pother,cname,sum,claimid)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,pname);
		ps.setString(2,relation);
		ps.setString(3,dob);
		ps.setString(4, age);
		ps.setString(5,gender);
		ps.setString(6, occup);
		ps.setString(7, otherm);
		ps.setString(8, fdate);
		ps.setString(9, iname);
		ps.setString(10, pno);
		ps.setString(11, fpolicy);
		ps.setString(12, hdate);
		ps.setString(13, diagnosis);
		ps.setString(14, pother);
		ps.setString(15, cname);
		ps.setString(16, sum);
		ps.setString(17, claimid);
		
		//ps.setString(12,file.getName());
	
		//System.out.println("file name "+file.getName());
		int result=ps.executeUpdate();
		 
		if (result > 0)
		{
			System.out.println("Patient Registration successfull");
			res.sendRedirect("claim3.jsp?claimid="+claimid);
			
			
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
