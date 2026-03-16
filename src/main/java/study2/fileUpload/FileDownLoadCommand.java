package study2.fileUpload;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import guest.GuestInterface;

public class FileDownLoadCommand implements GuestInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/images/fileUpload");

		String[] files = new File(realPath).list();
		
		
		for(String file : files) {
			System.out.println("file : " + file);
		}
		
		request.setAttribute("files", files);
	}

}
