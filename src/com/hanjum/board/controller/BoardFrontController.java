package com.hanjum.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanjum.action.Action;
import com.hanjum.board.action.ProjectWriteProAction;
import com.hanjum.vo.ActionForward;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String command = request.getServletPath();
		System.out.println("요청 서블릿 주소 : " + command);
		
		Action action = null;
		ActionForward forward = null;
		
//============================== FRONT ======================================

		if(command.equals("/Project.bo")) { // 프로젝트 조회
			forward = new ActionForward();
			forward.setPath("/project/projectContent.jsp");
		} else if(command.equals("/ProjectWrite.bo")) { // 프로젝트 글쓰기
			forward = new ActionForward();
			forward.setPath("/project/projectWrite.jsp");
		} else if(command.equals("/ProjectUpdate.bo")) { // 프로젝트 수정
			forward = new ActionForward();
			forward.setPath("/project/projectUpdate.jsp");
		} else if(command.equals("/EnterList.bo")) { // 채용 리스트
			forward = new ActionForward();
			forward.setPath("/enter/enterList.jsp");
		} else if(command.equals("/EnterWrite.bo")) { // 채용 글쓰기
			forward = new ActionForward();
			forward.setPath("/enter/enterWrite.jsp");
		} else if(command.equals("/EnterUpdate.bo")) { // 채용 수정
			forward = new ActionForward();
			forward.setPath("/enter/enterUpdate.jsp");
		} else if(command.equals("/EditorList.bo")) { //편집자 찾기 리스트
			forward = new ActionForward();
			forward.setPath("/editor/editorList.jsp");
		} else if(command.equals("/EditorUpdate.bo")) { //편집자 수정
			forward = new ActionForward();
			forward.setPath("/editor/editorUpdateForm.jsp");
		} 
//============================== BACK ======================================
		
		else if(command.equals("/ProjectWritePro.bo")) {
			action = new ProjectWriteProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/ProjectUpdatePro.bo")) {
			
		} else if(command.equals("/ProjectDeletePro.bo")) {
			
		} else if(command.equals("/ProjectList.bo")) {
			
		} else if(command.equals("/EnterWritePro.bo")) {
			
		} else if(command.equals("/EnterUpdatePro.bo")) {
			
		} else if(command.equals("/EnterDeletePro.bo")) {
			
		} else if(command.equals("/EnterList.bo")) {
			
		} else if(command.equals("/EditorUpdatePro.bo")) {
			
		} else if(command.equals("/EditorList.bo")) {
			
		}
		
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
