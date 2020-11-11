package com.hanjum.board.dao;

import java.sql.Connection;

import com.hanjum.board.vo.EnterBean;

public class EnterDAO {
	private EnterDAO() {}
	
	private static EnterDAO instance = new EnterDAO();

	public static EnterDAO getInstance() {
		return instance;
	}
	
	Connection con;

	public void setConnection(Connection con) {
		this.con = con;
	}
	
	
	// GET ======================================================================================
	
	
	
	// CHECK ====================================================================================
		
		
		
	// INSERT ===================================================================================
		
	public int insertEnter(EnterBean enterBean) {
		System.out.println("EnterDAO - insertEnter()");
		int insertCount = 1;
		
		return insertCount;
	}
		
	// UPDATE ===================================================================================
		
		
		
	// DELETE ===================================================================================
		
		
		
	// LIST =====================================================================================
		
		
		
	// OTHER ====================================================================================	
}
