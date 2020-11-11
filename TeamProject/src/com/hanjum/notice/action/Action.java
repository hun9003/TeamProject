package com.hanjum.notice.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanjum.notice.vo.ActionForward;

public interface Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response);
	// ActionForward 클래스에서 강제 구현하도록하는 Action 인터페이스
	
}
