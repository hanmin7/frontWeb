package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.model.MemberDAO;
import com.dev.model.MemberVo;

public class MemberDeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("회원삭제");
		
		//파라미터
		String id = request.getParameter("id");
		
		//유효성 체크 id값이 널인가아닌가
		if (id.isEmpty()) {
			request.setAttribute("error", "id를 입력하시오");
			// search페이지로 포워드
			request.getRequestDispatcher("/member/memberDelete.jsp").forward(request, response);
			return;
		}
		
		//vo
		MemberVo member = new MemberVo();
		member.setId(id);
		
		//서비스
		int r = MemberDAO.getInstance().delete(member);
		
		//결과저장
		request.setAttribute("cnt", r);
		
		//뷰페이지이동
		request.getRequestDispatcher("/member/memberDeleteOutput.jsp").forward(request, response);
	}

}
