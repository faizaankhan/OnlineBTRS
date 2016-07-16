package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EnqueryServlet1
 */
public class EnqueryServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnqueryServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String dest=request.getParameter("dest");
		String source=request.getParameter("source");
		String jd=request.getParameter("j_date");
		String jm=request.getParameter("j_month");
		String jy=request.getParameter("j_year");
		String tdate=jy+"-"+jm+"-"+jd;
		
		System.out.println("##########dest "+dest+"##########source "+source+"   ##########tdate "+tdate);
				
		DAOTran dao=new DAOTran();
		EnqData ob1= new EnqData();

		List <EnqData> list=dao.DisplayEnquery(tdate, dest, source);
		
		request.setAttribute("allrecords", list);
		request.setAttribute("tdate", tdate);
		

		RequestDispatcher rd=request.getRequestDispatcher("/enquery.jsp");
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
