package com.dev.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontController
 */

/*
@WebServlet(name = "front", 
			urlPatterns = "*.do", 
			initParams = 
			{
					@WebInitParam(name = "charset", value = "UTF-8")
			})  //여기적거나 web-int에 web.xml 파일에 적거나. 책550p
*/
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	String charset = null;
	HashMap<String, Controller> list = null;
	
	
    @Override
	public void init(ServletConfig config) throws ServletException {
    	charset = config.getInitParameter("charset"); //initparam_name 읽음
    	list = new HashMap<String, Controller>();
    	list.put("/memberInsert.do", new MemberInsertController());
    	list.put("/memberUpdate.do", new MemberUpdateController());
    	list.put("/memberSearch.do", new MemberSearchController());
    	list.put("/memberDelete.do", new MemberDeleteController());
    	list.put("/memberList.do", new MemberListController());
	}

    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(charset);
		String uri = request.getRequestURI();   			//   /frontWeb/memberInsert.do
		String contextPath = request.getContextPath();      //	 frontWeb
		String path = uri.substring(contextPath.length());  //   /memberInsert.do
		Controller subController = list.get(path);
		subController.execute(request, response);
	}
	
	

}
