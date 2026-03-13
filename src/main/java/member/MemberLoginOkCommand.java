package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.SecurityUtil;

public class MemberLoginOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getMemberIdCheck(mid);
		
		if(vo.getMid() == null) { 
			request.setAttribute("message", "로그인실패~ \\n다시 로그인해주셔요");
			request.setAttribute("url", "MemberLogin.mem");
			return;
		}
		else {
			// 비밀번호 비교처리
			String salt = vo.getPwd().substring(vo.getPwd().length()-8);
			SecurityUtil security = new SecurityUtil();
			String tempPwd = security.encryptSHA256(pwd + salt) + salt;
			if(vo.getUserDel().equals("OK") || !vo.getPwd().equals(tempPwd)) {
				request.setAttribute("message", "로그인실패~ \\n다시 로그인해주셔요");
				request.setAttribute("url", "MemberLogin.mem");
				return;
			}
		}
			
		// 로그인 완료시 처리할 내용들을 기술한다.(쿠키/세션/기타 로그인 시? 수행처리해야할것들)
		String idSave = request.getParameter("idSave")==null ? "off" : request.getParameter("idSave");
		
		Cookie cookieMid = new Cookie("cMid", mid);
		cookieMid.setPath("/");
		if(idSave.equals("on")) cookieMid.setMaxAge(60*60*24*7);
		else cookieMid.setMaxAge(0);
		response.addCookie(cookieMid);
		
		// 세션처리
		String strLevel = "";
		if(vo.getLevel() == 0) strLevel = "관리자";
		else if(vo.getLevel() == 1) strLevel = "준회원";
		else if(vo.getLevel() == 2) strLevel = "정회원";
		else if(vo.getLevel() == 3) strLevel = "우수회원";
		
		HttpSession session = request.getSession();
		session.setAttribute("sMid", mid);
		session.setAttribute("sNickName", vo.getNickName());
		session.setAttribute("sLevel", vo.getLevel());
		session.setAttribute("strLevel", strLevel);
		session.setAttribute("sLastDate", vo.getLastDate());
		
		// 기타 처리(1.로그인시 10포인트씩 지급(단, ), 2.최종방문일처리, 3.자동등업처리)
		//1. 10포인트씩 지급(단, 1일 3회까지만 방문포인트 10씩 증가.), 2.최종 방문일 처리
		dao.setMemberPointPlus(mid);
		
		
		//2. 자동 정회원 등업시키기
		// 조건 : 방명록에 5회이상 글을 올렸을 시 '준회원'에서 '정회원'으로 자동 등업처리한다 (단, 방명록의 글을 하루에 여러번 등록해도 1회로 처리한다.)
		
		
		request.setAttribute("message", mid + "님 로그인 되었습니다~");
		request.setAttribute("url", "MemberMain.mem");
	}
}
