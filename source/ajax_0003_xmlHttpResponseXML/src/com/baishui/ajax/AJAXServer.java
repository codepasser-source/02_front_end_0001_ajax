package com.baishui.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AJAXServer extends HttpServlet {

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

		//设置response 文本格式 为 xml
		 response.setContentType("text/xml;charset=UTF-8");
         PrintWriter out = response.getWriter();

         //1获取页面参数
         String username = request.getParameter("username");
         
         
         System.out.println("username="+username);
         
         StringBuilder builder = new StringBuilder();
         builder.append("<message>");
         //2相应的验证
         if(username==null|| "".equals(username)){
        	 System.out.println("用户名不能为空");
        	 builder.append("用户名不能为空").append("</message>"); 
         }else  {
          //3 校验信息 
           if(username.equals("baishui")){
        	   System.out.println("用户名已存在");
        	   builder.append("用户名【"+username+"】已经存在，请使用其他用户名").append("</message>");
           }else{
        	   System.out.println("用户名尚未存在");
        	   builder.append("用户名【"+username+"】尚未存在，可以使用该名称注册").append("</message>");
           } 
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
