package com.privacyprotection;

import java.io.IOException;
import java.util.Random;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.privacyprotection.RandomStr;
import com.util.DbConnection;


public class GenerateId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
       String policyno;
    
    public GenerateId() {
        super();
        
    }
    
    String hname,pname,adate,cno;
   
    
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
		
		hname=request.getParameter("hname");
		pname=request.getParameter("pname");
		cno=request.getParameter("cno");
		adate=request.getParameter("adate");
		RandomStr RT = new RandomStr();
        String claimid = RT.generateRandomString();
        System.out.println("Claim id is="+claimid);
        
        
		try 
		{
			ps=con.prepareStatement("insert into hospitaldatabse(claimid)"+"values(?)");
			//ps=con.prepareStatement("update patient_register set claimid = '"+claimid+"'");
			ps.setString(1,claimid);
			int n=ps.executeUpdate();
			if(n>0)
			{
				System.out.println("hospital databse has been successfull created");
			}
			
			ps=con.prepareStatement("insert into generateid (claimid,hospitalname,patientname,contactno,applydate)"+"values(?,?,?,?,?)");
			ps.setString(1,claimid);
			ps.setString(2,hname);
			ps.setString(3,pname);
			ps.setString(4,cno);
			ps.setString(5, adate);
			int result=ps.executeUpdate();
			 HttpSession session=request.getSession(); 
			 session.setAttribute("claimid",claimid);
			 System.out.println(claimid);
			 
			if (result > 0)
			{
				System.out.println("claim id generate succsessfull");
				response.sendRedirect("claim.jsp?claimid="+claimid);
				
				
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

}
