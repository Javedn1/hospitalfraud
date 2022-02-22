package com.Hospital;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;
//import com.MyStringRandomGen;
//import com.SendSMS;

/**
 * Servlet implementation class MessageSend
 */
public class MessageSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageSend() {
        super();
        // TODO Auto-generated constructor stub
    }

    Connection con ;
   	PreparedStatement ps;
   	ResultSet rs;
   	String email,mno,date,ctime;
   	

       protected void processRequest(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
           response.setContentType("text/html;charset=UTF-8");
           PrintWriter out = response.getWriter();
           HttpSession session=request.getSession();  
           try {
           	Connection con= DbConnection.getConnection();
               Statement smt=con.createStatement();
           	String mno=request.getParameter("mno");
           	
           	
           	System.out.print("mobile no is"+mno);
           	
           	 rs=smt.executeQuery("select *  from appform where mno='"+mno+"'");
           	 if(rs.next())
           	 {
           	  mno=rs.getString("mno"); 
           	  date=rs.getString("date"); 
           	 ctime=rs.getString("time");
   		System.out.println("User reg  mobile no is ="+mno);
   		System.out.println("User reg  name is ="+email);
   		java.util.Date dategot = new java.util.Date();

   	    Date currentDatetime = new Date(System.currentTimeMillis());
   	        java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
   	        java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
   	    
   	        

   	         
   	         
   	          ResultSet rt=smt.executeQuery("select * from appform where mno='"+mno+"'");
   	          if(rt.next()){
   	          
   	          String OTP_date =  "";
   	          System.out.println("time = ="+ctime);
   	          System.out.println("date ="+date);
   	         String conform="fix";
   	         
   	           String query = "UPDATE appform SET appoint = '"+conform+"',ctime = '"+ctime+"' WHERE mno ='"+mno+"'";
   	          int n= smt.executeUpdate(query);
   	           String msgC="your appointment has been confrom on this date "+date +" and time is"+ctime+"";
   	           String user ="vinodotp";
   	           String password = "123123";
   	           String sender = "CAPTCH";
   	           String PhoneNumber = mno;
   	           if(n>0){
   	               
   	               
   	             String myURL = "http://www.smswave.in/panel/sendsms.php";
   	               
   	               SendSMS sSMS = new SendSMS();
   	               sSMS.callURL(myURL, msgC, PhoneNumber);
   	               System.out.println(" message has been send");
   	             
   	           }else{
   	           System.out.println("Not Updated");
   	           }
           	 }
   			
              
              
             rs=smt.executeQuery("select mno   from appform where mno='"+mno+"'");
             System.out.println("The result set is="+rs);
             if(rs.next()){
                 HttpSession email=request.getSession(true);
                       email.setAttribute("email", mno);
                       System.out.println("Hello");
                       
                 response.sendRedirect("doctorhome.jsp?"+mno);
             }
             else{
                 out.println("Mobile number not registred with this usename...");
             }
             
           } }
           catch(Exception e){
               out.println(e);
           }
           finally {            
               out.close();
           }
       }

       // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
      
       @Override
       protected void doGet(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
           processRequest(request, response);
       }

      
       @Override
       protected void doPost(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
           processRequest(request, response);
       }

       
       @Override
       public String getServletInfo() {
           return "Short description";
       }// </editor-fold>
   }
