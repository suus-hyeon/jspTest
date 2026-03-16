package study2.fileUpload;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import guest.GuestInterface;

public class FileUpload1OkCommand implements GuestInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 	COS라이브러리에서 제공해주는 객체 : MultipartRequest() / DefaultFileRenamePolicy()
		- MultipartRequest() 사용법? 
		  MultipartRequest(저장소명(request),'서버에 저장될 파일의 실제경로','서버에 저장될 파일의 최대용량','코드변환방식','기타옵션())
		  
		  저장되는 서버 웹사이트의 절대경로(/webapp) : getRealPath("/") 
		  
		  getRealPath() 메소드경로 : request.getServletContext().getRealPath()
		*/
		
		String realPath = request.getServletContext().getRealPath("/images/fileUpload");
		int maxSize = 1024 * 1024 * 10; // 1회 서버에 파일 업로드 저장용량제한(10MByte)
		
		// 파일 업로드 처리 
		MultipartRequest mulRequest = new MultipartRequest(request, realPath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		// 업로드된 파일의 정보를 추출해보자~
		String originalFileName = mulRequest.getOriginalFileName("fName");
		String filesystemName = mulRequest.getFilesystemName("fName");

		// BackEnd 파일체크
		if(originalFileName != null && !originalFileName.trim().equals("")) {
			request.setAttribute("message", "파일이 정상적으로 저장되었습니다리마");
		}
		else {
			request.setAttribute("message", "파일 전송 실패~~~ㅋ");
		}
		
		request.setAttribute("url", "FileUpload1.st");
	}

}
