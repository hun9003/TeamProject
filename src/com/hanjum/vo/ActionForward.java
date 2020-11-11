package com.hanjum.vo;

public class ActionForward {
	/*
	 * 서블릿에서 클라이언트로부터 요청을 받아 처리 후
	 * View 페이지로 포워딩 할 때
	 * 이동할 View 페이지의 URL(주소)과 
	 * 포워딩 방식(Redirect or Dispatcher) 을 다루기 위한 클래스
	 */
	private String path; // 포워딩 할 View 페이지 URL 을 저장
	private boolean redirect; // 포워딩 방식 저장
	// true : Redirect 방식, false : Dispatcher 방식
	
	// Getter/Setter 정의
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	
	
	
}
