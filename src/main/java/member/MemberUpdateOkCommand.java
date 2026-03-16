package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberUpdateOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sNickName = (String) session.getAttribute("sNickName"); 
		
		
		String mid = request.getParameter("mid")==null? "" : request.getParameter("mid");
		String nickName = request.getParameter("nickName")==null? "" : request.getParameter("nickName");
		String name = request.getParameter("name")==null? "" : request.getParameter("name");
		String gender = request.getParameter("gender")==null? "" : request.getParameter("gender");
		String birthday = request.getParameter("birthday")==null? "" : request.getParameter("birthday");
		String tel = request.getParameter("tel")==null? "" : request.getParameter("tel");
		String address = request.getParameter("address")==null? "" : request.getParameter("address");
		String email = request.getParameter("email")==null? "" : request.getParameter("email");
		String homePage = request.getParameter("homePage")==null? "" : request.getParameter("homePage");
		String job = request.getParameter("job")==null? "" : request.getParameter("job");
		String photo = request.getParameter("photo")==null? "" : request.getParameter("photo");
		String content = request.getParameter("content")==null? "" : request.getParameter("content");
		String userInfor = request.getParameter("userInfor")==null? "" : request.getParameter("userInfor");
		
		String[] hobbys = request.getParameterValues("hobby");
		String hobby = "";	//    등산/낚시/바둑
		if(hobbys.length != 0) {
			for(String h : hobbys) hobby += h + "/";
		} 
		hobby = hobby.substring(0, hobby.lastIndexOf("/"));
		
		photo = "noimage.jpg"; 
		
		MemberVO vo = new MemberVO();
		MemberDAO dao = new MemberDAO();
		
		// 백엔드체크(닉네임 중복체크)
		if(!nickName.equals(sNickName)) {
			String tempNickName = dao.getMemberNickNameCheck(nickName).getNickName();
			if(tempNickName != null) {
				request.setAttribute("message", "이미 사용중인 닉네임 입니다이~");
				request.setAttribute("url", "MemberUpdate.mem");
				return;
			}
		}
		
		vo.setMid(mid);
		vo.setNickName(nickName);
		vo.setName(name);
		vo.setGender(gender);
		vo.setBirthday(birthday);
		vo.setTel(tel);
		vo.setAddress(address);
		vo.setEmail(email);
		vo.setHomePage(homePage);
		vo.setJob(job);
		vo.setHobby(hobby);
		vo.setPhoto(photo);
		vo.setContent(content);
		vo.setUserInfor(userInfor);
		
		// 모든 체크가 완료되면 DB에 자료를 Update한다.
		int res = dao.setMemberUpdateOk(vo);
		
		if(res != 0) {
			request.setAttribute("message", "회원정보가 수정되었습니다~~");
			request.setAttribute("url", "MemberMain.mem");
		}
		else {
			session.setAttribute("sNickName", nickName);
			request.setAttribute("message", "회원 수정 실패~~");
			request.setAttribute("url", "MemberUpdate.mem");
		}

	}

}
