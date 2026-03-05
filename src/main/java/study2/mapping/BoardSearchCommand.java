package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardSearchCommand implements ReInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("이곳에서 게시판 DB에 개별조회한다.");
		
		request.setAttribute("name", "김말숙");
		
		request.setAttribute("msg", "게시판 개별 조회 완료");
	}

}
