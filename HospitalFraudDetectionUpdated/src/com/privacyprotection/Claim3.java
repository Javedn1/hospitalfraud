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


public class Claim3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
    String hname,room,dueto,date,rpolice,fir;
    String expenses,checkup,expenses1,ambulance,pexpenses,other,trs,crs,day,pday,claimid;
    

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
	/*String a[]=req.getParameterValues("relation");
    for(int i=0;i<a.length;i++){
        relation+=a[i]+"";
    }*/
	claimid=req.getParameter("claimid");
	hname=req.getParameter("hname");
	//self=req.getParameter("self");
	//spouse=req.getParameter("spouse");
	//child=req.getParameter("child");
	//parent=req.getParameter("parent");			
	room=req.getParameter("room");
	dueto=req.getParameter("dueto");
	date=req.getParameter("date");
	rpolice=req.getParameter("rpolice");
	fir=req.getParameter("fir");
	
	
	expenses=req.getParameter("expenses");
	checkup=req.getParameter("checkup");
	expenses1=req.getParameter("expenses1");
	ambulance=req.getParameter("ambulance");
	pexpenses=req.getParameter("pexpenses");
	other=req.getParameter("other");
	trs=req.getParameter("trs");
	crs=req.getParameter("crs");
	day=req.getParameter("day");
	
	System.out.println("-------Catch values of patient while registration------");
	System.out.println("claim id is "+claimid);
	System.out.println("hname="+hname);
	System.out.println("due to="+dueto);
	System.out.println("fir ="+fir);
	System.out.println("expenses="+expenses);
	System.out.println("checkup ="+checkup);
	System.out.println("ambulance="+ambulance);
	System.out.println("p expenses ="+pexpenses);
	System.out.println("other ="+other);
	System.out.println("t rate="+trs);
	System.out.println("days ="+day);
	System.out.println("p day="+pday);
	System.out.println("poice report="+rpolice);
	System.out.println("room ="+room);
	System.out.println("date ="+date);
	
	
	
	
	try 
	{
		PrintWriter out=res.getWriter();
		
		ps=con.prepareStatement("insert into claim3 (hname,room,dueto,date,rpolice,fir,expenses,checkup,expenses1,ambulance,pexpenses,other,trs,crs,day,pday,claimid)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,hname);
		ps.setString(2,room);
		ps.setString(3,dueto);
		ps.setString(4, date);
		ps.setString(5,rpolice);
		ps.setString(6, fir);
		ps.setString(7, expenses);
		ps.setString(8, checkup);
		ps.setString(9, expenses1);
		ps.setString(10, ambulance);
		ps.setString(11, pexpenses);
		ps.setString(12, other);
		ps.setString(13, trs);
		ps.setString(14, crs);
		ps.setString(15, day);
		ps.setString(16, pday);
		ps.setString(17, claimid);
		
		//ps.setString(12,file.getName());
	
		//System.out.println("file name "+file.getName());
		int result=ps.executeUpdate();
		 
		if (result > 0)
		{
			System.out.println("Patient Registration successfull");
			res.sendRedirect("claim4.jsp?claimid="+claimid);
			
			
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
