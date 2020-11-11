package com.hanjum.notice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanjum.notice.action.Action;
import com.hanjum.notice.vo.ActionForward;


@WebServlet("*.nt")
public class NoticeFrontController extends HttpServlet {
	 // get/post 방식에 맞게 처리하는 메서드. doGet(), doPost()로부터 호출됨
       
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8"); // POST 방식 요청
		
		String command = request.getServletPath(); // 서블릿 주소 가져옴
		System.out.println("command 서블릿 주소 : " + command);
		
		Action action = null;
		ActionForward forward = null;
		
		
		// 서블릿 주소 판별
		// - view 페이지로 이동하려면 이동할 view 페이지를 ActionForward객체의 setPath()로 지정해서 이동
		// - DB작업할거라면, action의 execute(request, response)를 호출해서 작업해줌
		if(command.equals("/******.nt")) {
			
		}else if(command.equals("/*****.nt")) {
			
		}
		
		
		// forward 존재여부판별해서 : dispatcher or redirect
		if(forward != null) {
			if(forward.isRedirect()) {
				// redirect - true
				response.sendRedirect(forward.getPath());			
			}else {
				// dispatcher - false
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
				
			}
			
		} // forward 객체 있는지?
		
		
		
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
