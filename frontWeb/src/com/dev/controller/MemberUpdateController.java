package com.dev.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.model.MemberDAO;
import com.dev.model.MemberVo;

public class MemberUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("회원정보수정");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");
		String reason = request.getParameter("reason");
		String mailyn = request.getParameter("mailyn");
		String[] hobby = request.getParameterValues("hobby");
		
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
		
		// 서비스 처리
		int r = MemberDAO.getInstance().update(member);

		// 결과저장
		request.setAttribute("cnt", r);

		// 뷰페이지로 이동
		request.getRequestDispatcher("/member/memberUpdate.jsp").forward(request, response);
	}

}
