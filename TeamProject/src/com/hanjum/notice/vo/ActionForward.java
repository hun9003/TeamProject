package com.hanjum.notice.vo;

public class ActionForward {

	// 서블릿에서 요청받아처리 후 view(.jsp)로 포워딩할때 
	// 이동할 페이지주소 + 포워딩방식(dispatcher or redirect) 지정하는 클래스
	private String path; //  forward 할 URL 저장
	private boolean Redirect; // true이면 redirect, false이면 dispatcher
	
	// Getter / Setter
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return Redirect;
	}
	public void setRedirect(boolean redirect) {
		Redirect = redirect;
	}
	
	
	
} 
