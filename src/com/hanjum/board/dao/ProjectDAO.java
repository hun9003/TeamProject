package com.hanjum.board.dao;

import java.sql.Connection;

import com.hanjum.board.vo.ProjectBean;

public class ProjectDAO {
	private ProjectDAO() {}
	
	private static ProjectDAO instance = new ProjectDAO();

	public static ProjectDAO getInstance() {
		return instance;
	}
	
	Connection con;

	public void setConnection(Connection con) {
		this.con = con;
	}
	
	
	// GET ======================================================================================
	
	
	
	// CHECK ====================================================================================
		
		
		
	// INSERT ===================================================================================
		
	public int insertProject(ProjectBean projectBean) {
		System.out.println("ProjectDAO - insertProject()");
		int insertCount = 1;
		
		return insertCount;
	}
		
	// UPDATE ===================================================================================
		
		
		
	// DELETE ===================================================================================
		
		
		
	// LIST =====================================================================================
		
		
		
	// OTHER ====================================================================================	
}
