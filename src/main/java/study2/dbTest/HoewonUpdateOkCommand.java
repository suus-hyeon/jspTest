package study2.dbTest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HoewonUpdateOkCommand implements HoewonInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		int age = (request.getParameter("age")==null) || (request.getParameter("age").equals("")) ? 0 : Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender")==null ? "" : request.getParameter("gender");
		String address = request.getParameter("address")==null ? "" : request.getParameter("address");
		
		HoewonDAO dao = new HoewonDAO(); //데이터베이스 검색하기 위해서 얘를 통해가야해서 부름
		
		HoewonVO vo = new HoewonVO();
		vo.setName(name);
		vo.setAge(age);
		vo.setGender(gender);
		vo.setAddress(address);
		
		// 회원 정보 수정처리
		int res = dao.setHoewonUpdateOk(vo);
		
		if(res != 0) {
			request.setAttribute("message", "회원 정보가 수정되었습니다~~");
			request.setAttribute("url", "HoewonList.db");
		}
		else {
			request.setAttribute("message", "회원 정보 수정 실패~~ㅠㅠ");
			request.setAttribute("url", "HoewonUpdate.db?name="+name);
		}

	}

}
