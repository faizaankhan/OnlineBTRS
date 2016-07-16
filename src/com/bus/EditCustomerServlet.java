package com.bus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditCustomerServlet
 */
public class EditCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerData ob1=new CustomerData();
		DAOCustomer dao=new DAOCustomer();
		
		String email=request.getParameter("Email_Id");
		String fn=request.getParameter("First_Name");
		String ln=request.getParameter("Last_Name");
		String sex=request.getParameter("sex");
		String password=request.getParameter("password");
		String city=request.getParameter("City");
		String phn=request.getParameter("Contact_Number");
		
		ob1.setEmail(email);
		ob1.setFname(fn);
		ob1.setLname(ln);
		ob1.setCity(city);
		ob1.setSex(sex);
		ob1.setPhone(phn);;
		ob1.setPswd(password);;
		
		boolean flag_status=dao.editRecord(ob1);
		
		response.getWriter().print("### Returned flag_status = "+flag_status);
		
		request.setAttribute("reply", flag_status);
		
		RequestDispatcher rd=request.getRequestDispatcher("/a_sucess.jsp");
		rd.forward(request, response);

		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
