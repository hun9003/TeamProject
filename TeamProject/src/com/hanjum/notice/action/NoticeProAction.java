package com.hanjum.notice.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanjum.notice.service.NoticeProService;
import com.hanjum.notice.vo.ActionForward;
import com.hanjum.notice.vo.NoticeBean;

public class NoticeProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		


		// NoticeBean 객체에 전달
		NoticeBean noticeBean = new NoticeBean();
		noticeBean.setBoard_id(Integer.parseInt(request.getParameter("board_id")));
		noticeBean.setNotice_content(request.getParameter("notice_content"));
//		noticeBean.setNotice_date(notice_date);
		noticeBean.setNotice_from_id(request.getParameter("notice_from_id"));
		noticeBean.setNotice_id(Integer.parseInt(request.getParameter("notice_id")));
		noticeBean.setNotice_read(Integer.parseInt(request.getParameter("notice_read")));
		noticeBean.setNotice_url(request.getParameter("notice_url"));
		noticeBean.setUser_id(request.getParameter("user_id"));
		
		// 서비스 클래스를 통해 실제 글 등록 작업 수행을 위한 요청
		// NoticeProService에 수행할 작업을 요청
		NoticeProService service = new NoticeProService();
		service.registArticle(noticeBean); // ****** 리턴값확인하기
		
		
		
		
		
		
		
		return forward;
	}

	
	
}
