package com.hanjum.notice.service;

import java.sql.Connection;

import com.hanjum.notice.dao.NoticeDAO;
import com.hanjum.notice.db.jdbcUtil;
import com.hanjum.notice.vo.NoticeBean;

public class NoticeProService {
	// Action 클래스로부터 요청받은 작업에 대한 데이터등을 전달받아
	// Model(DAO)를 통해 실제 작업처리를 요청하고
	// 처리결과를 리턴받아 해당 결과에 대한 판별을 통해
	// 결과값으로 처리할 데이터를 리턴

	public boolean registArticle(NoticeBean noticeBean) {
		System.out.println("src - registArticle()");
		
		// 알림 여부? 
		boolean isAlertSuccess = false; // 수락 : true, 거절 : false;
		
		// (공통) 1. DB 작업에 필요한 Connection 객체 가져오기
		Connection con = jdbcUtil.getConnection();
		
		// (공통) 2. DB 작업에 필요한 DAO 객체 가져오기
		NoticeDAO noticeDAO = NoticeDAO.getInstance();
		
		// (공통) 3. 가져온 Connection 객체를 DAO에 전달하기
		noticeDAO.setConnection(con);
		
		// 4. BoardDAO객체의 
		// ******* 작업할 메서드 호출 **********
		
		
		// 5. 4번의 작업결과(리턴받은 값)를 리턴받아 commit하고
		// isAlertSuccess 상태를 true/false로 바꿔줌
		
		// (공통) 6. 사용 완료된 Connection 객체 반환하기
		jdbcUtil.close(con);
		 
		
		
		
		return isAlertSuccess;
	}
	
	
}
