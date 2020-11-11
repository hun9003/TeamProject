package com.hanjum.board.service;

import java.sql.Connection;

import com.hanjum.board.dao.BoardDAO;
import com.hanjum.board.dao.ProjectDAO;
import com.hanjum.board.vo.ProjectBean;
import com.hanjum.db.JdbcUtil;

public class ProjectWriteProService {
	
	public boolean registProject(ProjectBean projectBean) {
		System.out.println("ProjectWriteProService - registBoard");
		
		boolean isWriteSuccess = false;
		Connection con = JdbcUtil.getConnection();
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		ProjectDAO projectDAO = ProjectDAO.getInstance();
		
		boardDAO.setConnection(con);
		projectDAO.setConnection(con);
		
		int insertBoardCount = boardDAO.insertBoard(projectBean);
		int insertProjectCount = projectDAO.insertProject(projectBean);
		
		if(insertBoardCount > 0 && insertProjectCount > 0) {
			JdbcUtil.commit(con);
			isWriteSuccess = true;
		} else {
			JdbcUtil.rollback(con);
		}
		
		JdbcUtil.close(con);
		
		return isWriteSuccess;
	}
}
