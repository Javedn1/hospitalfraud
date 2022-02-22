package com.privacyprotection;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Decoder.BASE64Decoder;
import Decoder.BASE64Encoder;

import com.util.DbConnection;


public class Patientcheckup extends HttpServlet 
{
	
	public static final String DEFAULT_ENCODING="UTF-8"; 
	   static BASE64Encoder enc=new BASE64Encoder();
	   static BASE64Decoder dec=new BASE64Decoder();
	   String key="key phrase used for XOR-ing";

	
	Connection con = null;
	PreparedStatement ps,ps1,ps2;
	ResultSet rs,rs1,rs2;
	int result;
	
	String table;
	String disease;
	String topbp;
	String belowbp;
	String wt;
	String ht;
	String appetite;
	String thirst;
	String urine;
	String vision;
	String urinesugar;
	String ket;
	String fbs;
	String rbs;
	String history;
	String ogdt;
	String username;
	 
	
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
   
    
	

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		try
		{
			String user_id = "";
	        HttpSession session = req.getSession();
	        PrintWriter out = res.getWriter();
	        if (session.getAttribute("username") != null) {
	            user_id = (String) session.getAttribute("username");
	            //out.println("user_id" + user_id);
	            
	            table=req.getParameter("table");
	            disease=req.getParameter("disease");
	            topbp=req.getParameter("topbp");
	            belowbp=req.getParameter("belowbp");
	            wt=req.getParameter("wt");
	            ht=req.getParameter("ht");
	            appetite=req.getParameter("appetite");
	            thirst=req.getParameter("thirst");
	            urine=req.getParameter("urine");
	            vision=req.getParameter("vision");
	            urinesugar=req.getParameter("urinesugar");
	            ket=req.getParameter("ket");
	            fbs=req.getParameter("fbs");
	            rbs=req.getParameter("rbs");
	            history=req.getParameter("history");
	            ogdt=req.getParameter("ogdt");
	            
		//username=req.getParameter("username");
		
		
		System.out.println("-------Catch values of patient while registration------");
		System.out.println("disease"+disease);
		System.out.println("topbp"+topbp);
		System.out.println("belowbp"+belowbp);
		System.out.println("wt"+wt);
		System.out.println("ht"+ht);
		System.out.println("appetite"+appetite);
		System.out.println("thirst"+thirst);
		System.out.println("urine"+urine);
		System.out.println("vision"+vision);
		System.out.println("urinesugar"+urinesugar);
		System.out.println("ket"+ket);
		System.out.println("fbs"+fbs);
		System.out.println("rbs"+rbs);
		System.out.println("history"+history);
		System.out.println("ogdt"+ogdt);
		
		System.out.println("username"+user_id);
		
			ps=con.prepareStatement("insert into checkup (username,disease,topbp,belowbp,wt,ht,appetite,thirst,urine,vision,urinesugar,ket,fbs,rbs,history,ogdt)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,user_id);
			ps.setString(2,disease);
			ps.setString(3,topbp);
			ps.setString(4,belowbp);
			ps.setString(5, wt);
			ps.setString(6,ht);
			ps.setString(7,appetite);
			ps.setString(8,thirst);
			ps.setString(9,urine);
			ps.setString(10,vision);
			ps.setString(11,urinesugar);
			ps.setString(12,ket);
			ps.setString(13,fbs);
			ps.setString(14,rbs);
			ps.setString(15,history);
			ps.setString(16,ogdt);
			
			
			//ps.setString(12,file.getName());
		
			//System.out.println("file name "+file.getName());
			
			result=ps.executeUpdate();
			
			}
			if (result > 0)
			{
				System.out.println("Patient Checkup successfull");
				
				res.sendRedirect("presciption.jsp?status=success");
				
				
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
