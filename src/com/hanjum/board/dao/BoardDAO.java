package com.hanjum.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.hanjum.board.vo.BoardBean;
import com.hanjum.db.JdbcUtil;

public class BoardDAO {
	private BoardDAO() {}
	
	private static BoardDAO instance = new BoardDAO();

	public static BoardDAO getInstance() {
		return instance;
	}
	
	Connection con;

	public void setConnection(Connection con) {
		this.con = con;
	}
	// GET ======================================================================================
	
	public int getBoardLastId() { // board테이블의 마지막 id 값
		System.out.println("BoardDAO - insertBoard()");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int board_id = 0;
		try {
			String sql = "SELECT MAX(board_id) FROM board";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				board_id = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return board_id;
	}
	
	// CHECK ====================================================================================
	
	
	
	// INSERT ===================================================================================
	
	public int insertBoard(BoardBean boardBean) {
		System.out.println("BoardDAO - insertBoard()");
		int insertCount = 1;
		
		return insertCount;
	}
	
	// UPDATE ===================================================================================
	
	
	
	// DELETE ===================================================================================
	
	
	
	// LIST =====================================================================================
	
	
	
	// OTHER ====================================================================================
	
	
}
