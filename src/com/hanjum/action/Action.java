package com.hanjum.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanjum.vo.ActionForward;

public interface Action {
	/*
	 * 서블릿 요청이 들어올 때 각 요청에 따른 각각의 클래스들의 객체를 생성하여
	 * 요청을 처리하는데, 이 때, 공통 부모인 Action 인터페이스를 정의하여
	 * 각 Action 클래스들의 메서드를 추상메서드로 정의하고
	 * 각각의 Action 클래스에서 추상메서드를 구현하도록 강제하면
	 * 다형성을 통해 하나의 Action 타입으로 Action 클래스 관리가 가능
	 * 또한, 각각의 Action 클래스에서 사용할 메서드 형태를 미리 강제할 수 있음
	 * - 각 요청을 받아들일 execute() 메서드를 통해 request, response 객체를
	 *   파라미터로 전달받도록 정의
	 * - 포워딩 URL, 포워딩 방식이 저장된 ActionForward 객체를 리턴하도록 정의
	 * - 모든 예외 발생 시 FrontController 쪽으로 예외를 던지기
	 */
	public ActionForward execute(
			HttpServletRequest request, HttpServletResponse response) 
					throws Exception;
	
}












