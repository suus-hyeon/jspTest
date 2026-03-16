package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberUpdateCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");
		
		MemberDAO dao = new MemberDAO();

		MemberVO vo = dao.getMemberIdCheck(mid);
		
		String[] addresses = vo.getAddress().split("/");
		request.setAttribute("postcode", addresses[0].trim());
		request.setAttribute("roadAddress", addresses[1].trim());
		request.setAttribute("detailAddress", addresses[2].trim());
		request.setAttribute("extraAddress", addresses[3].trim());
		
		request.setAttribute("vo", vo);
	}

}
