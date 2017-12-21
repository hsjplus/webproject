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
		prop = config.getInitParameter("propLocation");
		System.out.println("prop ��ġ: " + prop);
	}
	
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String context = request.getContextPath();
		String uri = request.getRequestURI();
		uri = uri.substring(context.length());
				
		System.out.println("context-path: " + context);
		System.out.println("uri: " + uri);
		
		//3��° ��� 
		Controller control = new HandlerMapping(prop).getController(uri);
		
		//2��° ��� 
/*		
        Map<String, Controller> mappings = new HashMap<>();
		mappings.put("/board/list.do", new BoardListController());
		mappings.put("/login/login.do", new LoginController());

		Controller control = mappings.get(uri);
*/		
		
		// 1��° ���
		/*if(request.getRequestURI().substring(request.getContextPath().length()).equals("/list.do")) {
			path = new ListController().handleRequest(request, response);
		}*/
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(control.handleRequest(request, response));
		dispatcher.forward(request, response);
		
	}

}
