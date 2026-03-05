package study2.dbTest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.db")
public class HoewonController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HoewonInterface command = null;
		String viewPage = "/WEB-INF/study2/dbTest/";
		
		String com = request.getRequestURI(); // www.naver.com:9090/springGreen/hoewon/HoewonList.jsp
		com = com.substring(com.lastIndexOf("/")+1, com.lastIndexOf("."));
		
		if(com.equals("DbTest")) {
			viewPage += "dbTest"; // jsp는 앞이 소문자로 앞에 두개는 메뉴라서 데이터베이스에서 가져올게없어서 두줄 지움
		}
		else if(com.equals("HoewonList")) { // 클릭했을때
			command = new HoewonListCommand();
			command.execute(request, response);
			viewPage += "hoewonList";
		}
		else if(com.equals("HoewonInput")) {
			viewPage += "hoewonInput";
		}
		else if(com.equals("HoewonInputOk")) { // 클릭했을때
			command = new HoewonInputOkCommand();
			command.execute(request, response);
			viewPage = "/include/message";
		}
		else if(com.equals("HoewonUpdate")) { // 클릭했을때
			command = new HoewonUpdateCommand();
			command.execute(request, response);
			viewPage += "hoewonUpdate";
		}
		else if(com.equals("HoewonUpdateOk")) { // 클릭했을때
			command = new HoewonUpdateOkCommand();
			command.execute(request, response);
			viewPage = "/include/message";
		}
		else if(com.equals("HoewonDelete")) { // 클릭했을때
			command = new HoewonDeleteCommand();
			command.execute(request, response);
			viewPage = "/include/message";
		}
		else if(com.equals("HoewonSearch")) { // 클릭했을때
			command = new HoewonSearchCommand();
			command.execute(request, response);
			viewPage += "hoewonSearch";
		}
		
		viewPage += ".jsp";
		request.getRequestDispatcher(viewPage).forward(request, response);
	}
}
