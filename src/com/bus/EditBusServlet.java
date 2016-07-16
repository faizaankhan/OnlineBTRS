package com.bus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditBusServlet
 */
public class EditBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditBusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("busID");
		String s=request.getParameter("source");
		String d=request.getParameter("destination");
		String nos=request.getParameter("noOfSeats");
		String type=request.getParameter("type");
		String t=request.getParameter("time");
		String fare=request.getParameter("fare");
				
		DAOBus dao=new DAOBus();
		BusData ob1= new BusData();

		ob1.setBid(id);
		ob1.setTime(t);
		ob1.setSource(s);;
		ob1.setDest(d);
		ob1.setNo_seats(Integer.parseInt(nos));;
		ob1.setFare(Float.parseFloat(fare));
		ob1.setType(type);
			
		boolean flag_status=dao.editRecord(ob1);
		response.getWriter().print("Retuned flag_status = "+flag_status);
		
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
