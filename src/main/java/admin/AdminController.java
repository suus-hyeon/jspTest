package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.guest.AdminGuestListCommand;
import admin.member.AdminMemberListCommand;
import admin.member.MemberLevelChangeCommand;

@SuppressWarnings("serial")
@WebServlet("*.ad")
public class AdminController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminInterface command = null;
		String viewPage = "/WEB-INF/admin/";
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/")+1, com.lastIndexOf("."));
		
		// 인증처리
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel")==null ? 999 : (int) session.getAttribute("sLevel");
		
		if(level != 0) {
			viewPage = "/index";
		}
		else if(com.equals("AdminMain")) {
			viewPage += "adminMain";
		}
		else if(com.equals("AdminLeft")) {
			viewPage += "adminLeft";
		}
		else if(com.equals("AdminRight")) {
			viewPage += "adminRight";
		}
		else if(com.equals("AdminGuestList")) {
			command = new AdminGuestListCommand();
			command.execute(request, response);
			viewPage += "guest/adminGuestList";
		}
		else if(com.equals("AdminMemberList")) {
			command = new AdminMemberListCommand();
			command.execute(request, response);
			viewPage += "member/adminMemberList";
		}
		else if(com.equals("MemberLevelChange")) {
			command = new MemberLevelChangeCommand();
			command.execute(request, response);
			return;
		}
		
		viewPage += ".jsp";
		
		request.getRequestDispatcher(viewPage).forward(request, response);
	}
}
