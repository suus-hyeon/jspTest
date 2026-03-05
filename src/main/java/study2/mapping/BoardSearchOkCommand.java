package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardSearchOkCommand implements ReInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String content = request.getParameter("content")==null ? "" : request.getParameter("content");
		
		System.out.println("개별조회할 이름 : " + name + " , 내용 : "+content+", 이곳에서 게시판 DB에 개별조회 처리한다.");
		
		request.setAttribute("message", "게시판 개별조회 고고씽");
		request.setAttribute("url", "boardList.re");

	}

}
