package com.hanjum.board.action;

import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanjum.action.Action;
import com.hanjum.board.service.ProjectWriteProService;
import com.hanjum.board.vo.ProjectBean;
import com.hanjum.vo.ActionForward;

public class ProjectWriteProAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ProjectWriteProAction!");
		
		ActionForward forward = null;
		
		ProjectBean projectBean = new ProjectBean();
		projectBean.setBoard_subject(request.getParameter("board_subject"));
		projectBean.setBoard_content(request.getParameter("board_content"));
		projectBean.setBoard_date(new Timestamp(System.currentTimeMillis()));
		projectBean.setType(1);
		projectBean.setBoard_creator_content_detail(request.getParameter("board_creator_content_detail"));
		projectBean.setBoard_creator_genre(0);
		projectBean.setBoard_creator_recording(0);
		projectBean.setBoard_creator_cam_num(0);
		projectBean.setBoard_creator_ori_clip_num(0);
		projectBean.setBoard_creator_ori_length(0);
		projectBean.setBoard_creator_edit_length(0);
		projectBean.setBoard_creator_ori_transfer(0);
		projectBean.setBoard_creator_cre_ref(request.getParameter("board_creator_cre_ref"));
		projectBean.setBoard_creator_cre_min_price(0);
		projectBean.setBoard_creator_cre_max_price(0);
		projectBean.setBoard_creator_status(0);
		
		ProjectWriteProService projectWriteProService = new ProjectWriteProService();
		boolean isWriteSuccess = projectWriteProService.registProject(projectBean);
		
		if(!isWriteSuccess) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('작성에 실패했습니다. 계속 실패 시 관리자에게 문의해주십시오.')"); 
			out.println("history.back()"); 
			out.println("</script>");
		} else {
			forward = new ActionForward();
			forward.setPath("ProjectList.bo");
			forward.setRedirect(true);
		}
		return forward;
	}
	
}
