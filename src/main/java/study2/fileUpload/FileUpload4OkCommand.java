package study2.fileUpload;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import guest.GuestInterface;

@SuppressWarnings("rawtypes")
public class FileUpload4OkCommand implements GuestInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/images/fileUpload");
		int maxSize = 1024 * 1024 * 20; // 1회 서버에 파일 업로드 저장용량제한(10MByte)
		
		// 파일 업로드 처리 
		MultipartRequest mulRequest = new MultipartRequest(request, realPath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		// 업로드된 파일의 정보를 추출해보자~
		
		String fNames = mulRequest.getParameter("fNames");
		
		Enumeration fileNames = mulRequest.getFileNames();
		
		String file = "";
		String oFileName = "";
		String fsName = "";
		
		while(fileNames.hasMoreElements()) {
			file = (String) fileNames.nextElement();
			oFileName += mulRequest.getOriginalFileName(file) + "/";
			fsName += mulRequest.getOriginalFileName(file) + "/";
		}
		oFileName = oFileName.substring(0, oFileName.lastIndexOf("/"));
		fsName = oFileName.substring(0, fsName.lastIndexOf("/"));
		
		System.out.println("원본 파일 : " + oFileName); 
		System.out.println("서버 저장 파일 : " + fsName); 

		System.out.println("클라이언트에서 업로드시킨 파일 리스트 : " + fNames);
		
		// BackEnd 파일체크
		if(oFileName != null && !oFileName.trim().equals("")) {
			request.setAttribute("message", "파일이 정상적으로 저장되었습니다리마");
		}
		else {
			request.setAttribute("message", "파일 전송 실패~~~ㅋ");
		}
		
		request.setAttribute("url", "FileUpload4.st");

	}

}
