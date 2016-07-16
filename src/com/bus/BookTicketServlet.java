package com.bus;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * Servlet implementation class BookTicketServlet
 */
public class BookTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookTicketServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			TranData ob1=new TranData();
			DAOTran dao=new DAOTran();
			
			//system date
			Date dNow = new Date( );
		    SimpleDateFormat ft =   new SimpleDateFormat ("yyyy-MM-dd");
			String r_date= ft.format(dNow);
			
			String bid=request.getParameter("bid");
			String trvl_date=request.getParameter("tdate");
			
			
			//cid from session
			HttpSession session=request.getSession(false);
			
			if (session!=null) {
				String cid=(String) session.getAttribute("uemail");
				
				ob1.setR_date(r_date);
				ob1.setCid(cid);
				ob1.setBid(bid);
				ob1.setTrvl_date(trvl_date);
			
						
				boolean flag_status=dao.insertBook(ob1);
				response.getWriter().print("Retuned flag_status = "+flag_status);
				
				request.setAttribute("reply", flag_status);
				
				RequestDispatcher rd=request.getRequestDispatcher("/a_sucess.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd=request.getRequestDispatcher("a_unsuccess.html");
				rd.forward(request, response);
			}
			
			
			
			
			

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
