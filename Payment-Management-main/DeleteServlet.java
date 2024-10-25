package com.payment;



import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCustomerServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = userDButil.deleteCustomer(id);
		
		if (isTrue == true) {
			String alertMessage = "Details Delete Successful";
		    response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='Insert.jsp';</script>");

		}
		else {
			
			List<User> cusDetails = userDButil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Profile.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}

