package com.baishui.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

public class AJAXServer extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AJAXServer() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
	   this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 
		 response.setContentType("text/xml;charset=UTF-8");
         PrintWriter out = response.getWriter();

         Integer inte = (Integer)request.getSession().getAttribute("inte");
         int temp=0;
         if(inte==null){
        	  temp  = 1;
         }else{
        	   temp = inte.intValue()+1;
         }
         request.getSession().setAttribute("inte", temp);
         
         //1解决中文的方法一
         //String username =new String( request.getParameter("username").getBytes("iso8859-1"),"UTF-8");
         
         
         //2解决中文方法二
         String username = URLDecoder.decode(request.getParameter("username"),"UTF-8");
         System.out.println("username="+username);
         
         String t = request.getParameter("t");
         System.out.println("timstemp="+t);
         
         
         StringBuilder builder = new StringBuilder();
         builder.append("<message>"); 
         //2相应的验证
         if(username!=null&&!username.equals("")){
        	 if(username.equals("baishui")){
        		 builder.append("用户【"+username+"】已被占用,"+temp+"</message>"); 
        	 }else{
        		 builder.append("用户【"+username+"】可以使用,"+temp+"</message>"); 
        	 }
         }else{
        	 builder.append("用户不能为空,"+temp+"</message>"); 
         }
          out.print(builder.toString());
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
