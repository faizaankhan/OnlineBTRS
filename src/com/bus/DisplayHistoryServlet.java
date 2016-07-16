package com.bus;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DisplayBusServlet
 */
public class DisplayHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayHistoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		DAOTran dao=new DAOTran();
		
		
		HttpSession session=request.getSession(false);
		
		if (session!=null) {
			String uemail=(String) session.getAttribute("uemail");
			List <HisData> list=dao.DisplayHistory(uemail);
			
			request.setAttribute("allrecords", list);
			
			RequestDispatcher rd=request.getRequestDispatcher("/viewhisdisplay.jsp");
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
