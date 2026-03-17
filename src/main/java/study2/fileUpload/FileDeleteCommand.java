package study2.fileUpload;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import guest.GuestInterface;

public class FileDeleteCommand implements GuestInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileName = request.getParameter("file")== null ? "" : request.getParameter("file");
		
		String realPath = request.getServletContext().getRealPath("/images/fileUpload/");
		
		File file = new File(realPath + fileName);
		
		String res = "0";
		if(file.exists()) {
			file.delete();
			res = "1";
		}
		
		response.getWriter().write(res);
	}

}
