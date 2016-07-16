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
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession(false);
		
		if (session!=null) {
			String uemail=(String) session.getAttribute("uemail");
			
			System.out.print("/n########sess    :"+uemail);
			
			CustomerData c1=new CustomerData();
			DAOCustomer d1=new DAOCustomer();

			c1=d1.customerDet(uemail);

			PrintWriter out=response.getWriter();

			System.out.println();

			response.setContentType("text/html");
			request.setAttribute("fname", c1.getFname());
			request.setAttribute("lname", c1.getLname());
			request.setAttribute("sex", c1.getSex());
			request.setAttribute("city", c1.getCity());
			request.setAttribute("email", c1.getEmail());
			request.setAttribute("phone", c1.getPhone());

			System.out.print("########NAME    :"+c1.getFname());
			
			RequestDispatcher rd=request.getRequestDispatcher("c_profile.jsp");
			rd.forward(request, response);
		} else {
			System.out.print("########NOT LOGGED IN SESSION ERROR");
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
