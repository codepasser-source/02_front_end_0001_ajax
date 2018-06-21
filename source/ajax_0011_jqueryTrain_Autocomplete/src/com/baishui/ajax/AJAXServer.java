package com.baishui.ajax;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AJAXServer extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4125963689599515687L;

 
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
 this.doPost(request, response);
	}

 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		 
		String wd = request.getParameter("wd");
		System.out.println("wordchar="+wd);
		request.setAttribute("word", wd);
		request.getRequestDispatcher("/wordxml.jsp").forward(request,response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
