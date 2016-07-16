package com.bus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bus.DAOCustomer;
import com.bus.CustomerData;

/**
 * Servlet implementation class CnfEditCustomerServlet
 */
public class CnfEditCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CnfEditCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("cusId");
		DAOCustomer dao=new DAOCustomer();
		//Calling the same function as of deletion because this does the same work , tats fetching the data
		//from the database of the ID choosen by the admin and returns an pojo object
		
		CustomerData ob= dao.DisplayDelRecord(cid);
	
		//response.getWriter().print("OBjet data" + ob.getBid());
		
		request.setAttribute("allrecords", ob );
		RequestDispatcher rd=request.getRequestDispatcher("/editcuscf.jsp");
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
