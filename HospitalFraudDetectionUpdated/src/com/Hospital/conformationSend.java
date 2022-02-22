package com.Hospital;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class conformationSend
 */
public class conformationSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public conformationSend() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		try
		{
			HttpSession session=request.getSession();
			System.out.println("2nd session id="+session.getId());
			session.invalidate();
			session=null;
			/*
			
			PrintWriter out=response.getWriter();
			
			 response.setContentType("text/html");  
			 out.println("<script type=\"text/javascript\">");  
			 out.println("alert('Claim Accept Successfully');");	
			 out.println("document.location('adminhome.jsp')");
			 out.println("</script>");*/
		
			 response.sendRedirect("adminhome.jsp? Accept=done");
			return;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void distroy()
	{
		try
		{
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
}	
		
		
	
