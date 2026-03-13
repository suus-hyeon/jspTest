package member;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.SecurityUtil;

public class MemberPwdCheckResCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pwdNew = request.getParameter("pwdNew")==null ? "" : request.getParameter("pwdNew");
		
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");
		
		MemberDAO dao = new MemberDAO();
		
		// 비밀번호 암호화 처리(SHA256)
		UUID uid = UUID.randomUUID();
		String salt = uid.toString().substring(0,8);
		SecurityUtil security = new SecurityUtil();
		pwdNew = security.encryptSHA256(pwdNew + salt) + salt;
		
		int res = dao.setMemberPwdCheckRes(pwdNew, mid);
		
		if(res != 0) {
			session.invalidate();
			request.setAttribute("message", "비밀번호가 변경되엇습니다.\\n다시 로그인해 주세요.");
			request.setAttribute("url", "MemberLogin.mem");
		}
		else {
			request.setAttribute("message", "회원 가입 실패~~");
			request.setAttribute("url", "MemberPwdCheck.mem");
		}
	}
}
