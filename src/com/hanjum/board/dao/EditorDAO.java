package com.hanjum.board.dao;

import java.sql.Connection;

import com.hanjum.board.vo.EditorBean;

public class EditorDAO {
	private EditorDAO() {}
	
	private static EditorDAO instance = new EditorDAO();

	public static EditorDAO getInstance() {
		return instance;
	}
	
	Connection con;

	public void setConnection(Connection con) {
		this.con = con;
	}
	// GET ======================================================================================
	
	
	
	// CHECK ====================================================================================
		
		
		
	// INSERT ===================================================================================
		
	public int insertEditor(EditorBean ediorBean) {
		System.out.println("EditorDAO - insertEditor()");
		int insertCount = 1;
		
		return insertCount;
	}
		
	// UPDATE ===================================================================================
		
		
		
	// DELETE ===================================================================================
		
		
		
	// LIST =====================================================================================
		
		
		
	// OTHER ====================================================================================
	
	
}
