package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.SecurityUtil;

public class MemberpwdCheckOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getMemberIdCheck(mid);
		
		String salt = vo.getPwd().substring(vo.getPwd().length()-8);
		SecurityUtil security = new SecurityUtil();
		String tempPwd = security.encryptSHA256(pwd + salt) + salt;
		
		String str = "0";
		if(vo.getPwd().equals(tempPwd)) str = "1";
		
		response.getWriter().write(str);
		
	}
}
