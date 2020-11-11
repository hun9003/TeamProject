package com.hanjum.notice.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class jdbcUtil {

	// DB - 연결, 자원반환, commit, rollback, ...
	// static으로 생성 : 다른 클래스에서 객체 생성없이 접근 가능하도록
	
	// getConnection() : Connection 객체를 가져옴
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			// JNDI 연결을 위한 설정
			// context.xml 파일 내의 <Context> 태그 항목 가져오기
			Context initCtx = new InitialContext();
			
			// <Context>태그 내의 <Resource> 태그 항목 가져오기
			// Context 객체의 lookup() 호출해서 "java:comp/env" , 리턴타입 : Object(downcasting!)
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			
			// <Resource> 태그 내의 JNDI 설정을 위한 name속성 가져오기, 리턴타입 : Object(downcasting!!)
			DataSource ds = (DataSource)envCtx.lookup("jdbc/MySQL");
			
			// DataSource 객체의 getConnection()호출해서 Connection객체 가져오기
			con = ds.getConnection();
			
			// AutoCommit 기능해제 - 트랜잭션 개념을 적용하기 위함
			con.setAutoCommit(false);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// Connection 객체 리턴
		return con;
	}
	
	// 자원반환 -> overloading (Connection, ResultSet, PreparedStatement. ...)
	public static void close(Connection con) {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} // Connection 객체 자원반환
	
	public static void close(ResultSet rs) {
		try {
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} // ResultSet 자원반환
	
	public static void close(PreparedStatement pstmt) {
		try {
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} // PreparedStatement 자원반환
	
	
	// Connection 객체의 commit(), rollback() <- AutoCommit 기능 해제 했음
	public static void commit(Connection con) {
		try {
			con.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection con) {
		try {
			con.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
}








