package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDeleteOkCommand implements ReInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		
		System.out.println("삭제할 사람 : " + name + " , 이곳에서 게시판 DB에 삭제처리한다.");
		
		request.setAttribute("message", "게시판 삭제 완료");
		request.setAttribute("url", "boardList.re");
	}
}
