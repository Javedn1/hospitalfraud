package com.privacyprotection;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;


@WebServlet("/applicationForm")
public class applicationForm extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String pname,date,time,symptom1,symptom2,symptom3,symptom4,mno;
	

	public void init(ServletConfig config) throws ServletException 
	{
		try {

			con = DbConnection.getConnection();
			
			System.out.println("connection is " + con);
		} catch (Exception e1) {
			e1.printStackTrace();
		}


	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		HttpSession session = request.getSession();
		pname = (String)session.getAttribute("username");
		System.out.println("Patient Name=="+pname);
		date=request.getParameter("date");
		System.out.println("date Name=="+date);
		time=request.getParameter("time");
		System.out.println("time Name=="+time);
		symptom1=request.getParameter("symptom1");
		System.out.println("symptom1=="+symptom1);
		symptom2=request.getParameter("symptom2");
		System.out.println("symptom2=="+symptom2);
		symptom3=request.getParameter("symptom3");
		System.out.println("symptom3=="+symptom3);
		symptom4=request.getParameter("symptom4");
		System.out.println("symptom4 No=="+symptom4);
		mno=request.getParameter("mno");
		System.out.println("mobile no is"+mno);
		
		String dname = session.getAttribute("dname").toString();
		
		
		try{
			
				
		Statement st = con.createStatement();
		System.out.println("test1");
		//ps=con.prepareStatement("insert into mem_info(firstname,middlename,lastname,dob,age,gender,address,city,email,mobile,username,password)"+"values(?,?,?,?,?,?,?,?,?,?,?,?)");
		//int r=st.executeUpdate("INSERT INTO appform (pname,dname,date,time,symptom1,symptom2,symptom3,symptom4,mno) VALUES ('"+pname+"','"+dname+"', '"+date+"', '"+time+"', '"+symptom1+"', '"+symptom2+"', '"+symptom3+"', '"+symptom4+"', '"+mno+"')");
		int r=st.executeUpdate("INSERT INTO `appform` (`pname`, `dname`, `date`, `time`, `symptom1`, `symptom2`, `symptom3`, `symptom4`, `mno`) VALUES ('"+pname+"','"+dname+"', '"+date+"', '"+time+"', '"+symptom1+"', '"+symptom2+"', '"+symptom3+"', '"+symptom4+"', '"+mno+"')");
		System.out.println("insert done");
		
				
		if(r>0) 
			{
		        System.out.println("Registration Successfull");
				 response.sendRedirect("patienthome.jsp?reg=done");
			} 
		else 
			{
	        System.out.println("Registration Unsuccessfull");
	        response.sendRedirect("applyForm.jsp?fail=yes");
			}
		
		}
		catch(Exception e)
		{
			
		}
	}

}

