package kr.co.pj.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	
	private String prop;
	
	//3��° ��� 
	@Override
	public void init(ServletConfig config) throws ServletException {
		// properties�̸� �޾Ƽ� HandlerMapping ���� Map�� �߰� 
		//prop = config.getInitParameter("propLocation");
	}
	
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		System.out.println("uri: " + request.getRequestURI());
		System.out.println("context-path: " + request.getContextPath());
		
		//String path ="";
		
		//3��° ��� 
		//Controller control = new HandlerMapping(prop).
		
		//2��° ��� 
		
        Map<String, Controller> mappings = new HashMap<>();
		mappings.put("/board/list.do", new BoardListController());
		mappings.put("/login/login.do", new LoginController());
		
		Controller control = mappings.get(request.getRequestURI().substring(request.getContextPath().length()));

		
		// 1��° ���
		/*if(request.getRequestURI().substring(request.getContextPath().length()).equals("/list.do")) {
			path = new ListController().handleRequest(request, response);
		}*/
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(control.handleRequest(request, response));
		dispatcher.forward(request, response);
		
	}

}
