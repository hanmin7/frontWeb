package com.dev.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dev.model.MemberDAO;
import com.dev.model.MemberVo;

public class MemberInsertController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("회원등록");
		//파라미터를 Vo에 담기 (책 568p)
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");
		String reason = request.getParameter("reason");
		String mailyn = request.getParameter("mailyn");
		String[] hobby = request.getParameterValues("hobby");
		//유효성 체크 (책568p)
		
		//값 변환처리 여기서~
		MemberVo member = new MemberVo();
		member.setId(id);
		member.setPw(pw);
		member.setGender(gender);
		member.setJob(job);
		member.setReason(reason);
		member.setMailyn(mailyn);
		member.setHobby(Arrays.toString(hobby));
		
		if(member.getMailyn()==null) {
			member.setMailyn("N");
		}
		
		//서비스 처리
		int r = MemberDAO.getInstance().insert(member);
		
		//결과저장
		request.setAttribute("cnt", r);
		
		//뷰페이지로 이동
		request.getRequestDispatcher("/member/memberInsertOutput.jsp").forward(request, response);
		
	}

}
