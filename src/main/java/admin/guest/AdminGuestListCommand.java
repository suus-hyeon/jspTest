package admin.guest;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.AdminInterface;
import guest.GuestDAO;
import guest.GuestVO;

public class AdminGuestListCommand implements AdminInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GuestDAO dao = new GuestDAO();
		
		// 1. 현재 페이지번호를 구해온다.
		int pag = request.getParameter("pag")==null ? 1 : Integer.parseInt(request.getParameter("pag"));
		
		// 2. 한 페이지의 분량을 정해준다.(여기서는 1페이지당 5건의 자료를 출력한다고 가정)
		int pageSize = 3;
		
		// 3. 총 레코드 건수 구한다.(sql의 집계함수 count()를 사용한다.)
		int totRecCnt = dao.getTotRecCnt();
		
		// 4. 총 페이지 수를 구한다.
		int totPage = (totRecCnt / pageSize) == 0 ? (totRecCnt / pageSize) : (totRecCnt / pageSize) + 1;
		
		// 5. 현재페이지에 출력할 '시작 인덱스 번호'를 구핸다.
		int startIndexNo = (pag -1) * pageSize;
		
		// 6. 현재 화면에표시될 시작 페이지 번호
		int curScrStartNo = totRecCnt - startIndexNo;
		
		// 블록페이지 처리(시작블록은 0으로 처리함)
		
		// 7. 블록의 크기결정(현재는 3으로 지정했다)
		int blockSize = 3;
		
		// 8. 현재페이지가 속한 블록의 번호를 구한다.
		int curBlock = (pag - 1) / blockSize; // (1page,2page,4page는 0블록), (4page,5page는 1블록) 
		
		// 9. 마지막블록 구한다.
		int lastBlock = (totPage - 1) / blockSize;
		
		List<GuestVO> vos = dao.getGuestList(startIndexNo, pageSize);
		
		request.setAttribute("vos", vos);
		
		request.setAttribute("pag", pag);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("totRecCnt", totRecCnt);
		request.setAttribute("totPage", totPage);
		request.setAttribute("curScrStartNo", curScrStartNo);
		request.setAttribute("blockSize", blockSize);
		request.setAttribute("curBlock", curBlock);
		request.setAttribute("lastBlock", lastBlock);
	}

}
