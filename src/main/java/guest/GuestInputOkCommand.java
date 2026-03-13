package guest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuestInputOkCommand implements GuestInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String content = request.getParameter("content")==null ? "" : request.getParameter("content");
		String email = request.getParameter("email")==null ? "" : request.getParameter("email");
		String homePage = request.getParameter("homePage")==null ? "" : request.getParameter("homePage");
		String clientIp = request.getParameter("clientIp")==null ? "" : request.getParameter("clientIp");
		
		GuestVO vo = new GuestVO();
		vo.setName(name);
		vo.setContent(content);
		vo.setEmail(email);
		vo.sethomePage(homePage);
		vo.setClientIp(clientIp);
		
		GuestDAO dao = new GuestDAO();
		
		int res = dao.setGuestInputOk(vo); //
		
		if(res != 0) {
			request.setAttribute("message", "방명록이 저장되었습니다");
			request.setAttribute("url", "GuestList.gu");
		}
		else {
			request.setAttribute("message", "방명록이 글 등록 실패");
			request.setAttribute("url", "GuestInput.gu");
		}
		
	}

}
