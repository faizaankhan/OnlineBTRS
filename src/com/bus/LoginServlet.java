package com.bus;

import java.io.IOException;
import java.io.PrintWriter;
import com.bus.CustomerData;
import com.bus.DAOCustomer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CustomerData c1=new CustomerData();
		DAOCustomer d1=new DAOCustomer();

		String i_email=request.getParameter("email");
		String i_pswd=request.getParameter("pswd");

		c1=d1.customerDet(i_email);

		PrintWriter out=response.getWriter();

		System.out.println();

		response.setContentType("text/html");



		if (i_email.equals("admin@admin.com")) {
			if(i_pswd.equals(c1.getPswd())){
				request.setAttribute("uname", c1.getFname());
				RequestDispatcher rd=request.getRequestDispatcher("ad_nav.jsp");
				rd.include(request, response);
				

				
				HttpSession session=request.getSession();
				session.setAttribute("uemail", i_email);
			}	
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("nav_incorrect.jsp");
				rd.include(request, response);
			}
		}

		else {
			if(i_pswd.equals(c1.getPswd())){
				request.setAttribute("uname", c1.getFname());
				RequestDispatcher rd=request.getRequestDispatcher("cus_nav.jsp");
				rd.include(request, response);
				
				
				HttpSession session=request.getSession();
				session.setAttribute("uemail", i_email);
			}		
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("nav_incorrect.jsp");
				rd.include(request, response);
			}
		}		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
