package com.hanjum.notice.vo;

import java.sql.Timestamp;

public class NoticeBean {
	
	int notice_id; // 각 알림들에 매겨지는 값
	String notice_content; // 알림 내용
	Timestamp notice_date; // 알림 날짜
	String notice_url; // 알림 링크
	int notice_read; // 알림 조회 여부
	int board_id; // 프로젝트 id
	String user_id; // 유저(본인) 아이디
	String notice_from_id; // 알람을 보낸 사람 아이디
	
	
	// Getter / Setter
	public int getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public Timestamp getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Timestamp notice_date) {
		this.notice_date = notice_date;
	}
	public String getNotice_url() {
		return notice_url;
	}
	public void setNotice_url(String notice_url) {
		this.notice_url = notice_url;
	}
	public int getNotice_read() {
		return notice_read;
	}
	public void setNotice_read(int notice_read) {
		this.notice_read = notice_read;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getNotice_from_id() {
		return notice_from_id;
	}
	public void setNotice_from_id(String notice_from_id) {
		this.notice_from_id = notice_from_id;
	}
	
	
	
}
