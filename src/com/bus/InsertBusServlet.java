package com.bus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertBusServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BusData ob1=new BusData();
		DAOBus dao=new DAOBus();
		String id=request.getParameter("busid");
		String t=request.getParameter("time");
		String s=request.getParameter("source");
		String d=request.getParameter("dest");
		String type=request.getParameter("type");
		String nos=request.getParameter("no_of_seats");
		String fare=request.getParameter("fare");
		
		
		
		ob1.setBid(id);
		ob1.setTime(t);
		ob1.setSource(s);;
		ob1.setDest(d);
		ob1.setNo_seats(Integer.parseInt(nos));;
		ob1.setFare(Float.parseFloat(fare));
		ob1.setType(type);
				
		boolean flag_status=dao.insertRecord(ob1);
		response.getWriter().print("Retuned flag_status = "+flag_status);
		
		request.setAttribute("reply", flag_status);
		
		RequestDispatcher rd=request.getRequestDispatcher("/a_sucess.jsp");
		rd.forward(request, response);

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
