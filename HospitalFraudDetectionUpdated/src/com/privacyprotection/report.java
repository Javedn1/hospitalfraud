package com.privacyprotection;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Decoder.BASE64Decoder;
import Decoder.BASE64Encoder;

import com.util.DbConnection;


public class report extends HttpServlet 
{
	Connection con = null;
	PreparedStatement ps,ps1,ps2;
	ResultSet rs,rs1,rs2;
	int result;
	String report;
	public static final String DEFAULT_ENCODING="UTF-8"; 
	   static BASE64Encoder enc=new BASE64Encoder();
	   static BASE64Decoder dec=new BASE64Decoder();
	   String key="key phrase used for XOR-ing";
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
       
	public static String base64encode(String text){
	      try {
	         String rez = enc.encode( text.getBytes( DEFAULT_ENCODING ) );
	         return rez;         
	      }
	      catch ( UnsupportedEncodingException e ) {
	         return null;
	      }
	   }//base64encode

	   public static String base64decode(String text){

	         try {
	            return new String(dec.decodeBuffer( text ),DEFAULT_ENCODING);
	         }
	         catch ( IOException e ) {
	           return null;
	         }

	      }//base64decode

   
	
	

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try
		{

			
			int i=0;
			report=req.getParameter("report");
			 
			HttpSession session = req.getSession(true);
			
			if(report.equals("report1"))
			{
				

				ps=con.prepareStatement("SELECT disease, COUNT( disease )  AS thecount, (COUNT( * ) / ( select count(*) from table1))*100 AS percentage FROM table1 GROUP BY disease ORDER BY thecount DESC LIMIT 50");
				rs=ps.executeQuery();
				while(rs.next()){
	             session.setAttribute("loop", i++);
	            
	                 String disease = rs.getString("disease");
	                 String count = rs.getString("thecount");
	                 String percentage = rs.getString("percentage");
	                 System.out.println(disease +" "+count+" "+percentage);
	                 
	                 String dd=disease;
	                 System.out.println("ddddddd  "+dd);
	                 disease=base64decode( dd );
	                  disease=xorMessage( disease, key ) ;
	                /*  count=xorMessage( count, key ) ;
	                  percentage=xorMessage( percentage, key ) ;*/
	                  
	                  System.out.println("original "+disease+"---------");
	                  
	                  session.setAttribute("disease", disease);
	                  session.setAttribute("count", count);
	                  session.setAttribute("percentage", percentage);
	                  
				}
				
				
				
				
				res.sendRedirect("report1.jsp");
			}
			else if(report.equals("report2"))
			{
				ps1=con.prepareStatement("SELECT disease, COUNT( disease )  AS thecount, (COUNT( * ) / ( select count(*) from table2))*100 AS percentage FROM table2 GROUP BY disease ORDER BY thecount DESC LIMIT 50");
				rs1=ps1.executeQuery();
				while(rs1.next()){
	                 
	                 String disease = rs1.getString("disease");
	                 String count = rs1.getString("thecount");
	                 String percentage = rs1.getString("percentage");
	             
	                 
	                  disease=xorMessage( disease, key ) ;
	                  count=xorMessage( count, key ) ;
	                  percentage=xorMessage( percentage, key ) ;
	                  
	               
	                  
	                  session.setAttribute("disease", disease);
	                  session.setAttribute("count", count);
	                  session.setAttribute("percentage", percentage);
	                  
				}
				res.sendRedirect("report2.jsp");
			}
			else if(report.equals("report3"))
			{
				ps2=con.prepareStatement("SELECT disease, COUNT( disease )  AS thecount, (COUNT( * ) / ( select count(*) from table3))*100 AS percentage FROM table3 GROUP BY disease ORDER BY thecount DESC LIMIT 50");
				rs2=ps2.executeQuery();
				while(rs2.next()){
	                 
	                 String disease = rs2.getString("disease");
	                 String count = rs2.getString("thecount");
	                 String percentage = rs2.getString("percentage");
	                
	                 
	                  disease=xorMessage( disease, key ) ;
	                  count=xorMessage( count, key ) ;
	                  percentage=xorMessage( percentage, key ) ;
	                  
	                  session.setAttribute("disease", disease);
	                  session.setAttribute("count", count);
	                  session.setAttribute("percentage", percentage);
	                  
				}
				res.sendRedirect("report3.jsp");
			}
			 
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static String xorMessage(String message, String key){
	       try {
	          if (message==null || key==null ) return null;

	         char[] keys=key.toCharArray();
	         char[] mesg=message.toCharArray();

	         int ml=mesg.length;
	         int kl=keys.length;
	         char[] newmsg=new char[ml];

	         for (int i=0; i<ml; i++){
	            newmsg[i]=(char)(mesg[i]^keys[i%kl]);
	         }//for i
	         mesg=null; keys=null;
	         return new String(newmsg);
	      }
	      catch ( Exception e ) {
	         return null;
	       }  
	      }
	 
}
