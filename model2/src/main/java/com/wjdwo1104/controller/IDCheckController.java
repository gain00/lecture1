package com.wjdwo1104.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wjdwo1104.model.MemberDao;

@WebServlet("/member/idCheck")
public class IDCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IDCheckController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDao memberDao = new MemberDao();
		String userId = request.getParameter("userId");
		int result = memberDao.idCheck(userId);
		request.setAttribute("count", result);
//		HttpSession session = request.getSession();
//		session.setAttribute("count", 2);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/member/idCheck.jsp");
		dispatcher.forward(request, response);
	}
}










