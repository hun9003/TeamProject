package com.hanjum.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JdbcUtil {
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			// JNDI 연결을 위한 설정(대부분의 API 는 javax.naming 패키지에 위치함)
			// context.xml 파일 내의 <Context> 태그 항목 가져오기
			Context initCtx = new InitialContext();
			
			// context.xml 파일 내의 <Context> 태그 내에서 <Resource> 태그 항목 가져오기
			// Context 객체의 lookup() 메서드를 호출하여 "java:comp/env" 문자열 전달
			// => 리턴타입이 Object 타입이므로 Context 타입으로 다운캐스팅 필요
			// 환경변수 전달 context 안에 있는 내용을 읽어들임
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			
			// context.xml 파일 내의 <Resource> 태그 내에서 
			// JNDI 설정을 위한 이름(name) 속성 가져오기
			// => 리턴타입이 Object 타입이므로 DataSource 타입으로 다운캐스팅 필요
			DataSource ds = (DataSource)envCtx.lookup("jdbc/MySQL");
			
			// DataSource 객체의 getConnection() 메서드를 호출하여 Connection 객체 가져오기
			con = ds.getConnection(); 
			// => ds.getConnection(username, password) 형식으로 사용할 수도 있다!
			
			con.setAutoCommit(false);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public static void close(Connection con) {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(PreparedStatement pstmt) {
		try {
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
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
