package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter("/login/*")
public class CertificationFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest)request;
		HttpSession session = req.getSession(); // 세션이 없으면 만들지 말아라 false
		
		String login = session.getAttribute("sLogin")==null ? "" : (String) session.getAttribute("sLogin");
		
//		System.out.println("login : " + login);
		
		String uri = req.getRequestURI();
		
		
		if(!uri.contains("/") && !uri.contains("/guest/*") && !uri.contains("/login/*") && !uri.contains("/study/*")) {
			if(!uri.contains("/css/") && !uri.contains("/js/")) {
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=utf-8");
			}
			if(login == null || login.equals("")) {
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('로그인 후 사용하세요')");
				out.println("location.href='"+req.getContextPath()+"/Login?loginSw=main_Login'");
				out.println("</script>");
			}
		}
		
		
		chain.doFilter(request, response); // 얘 기준으로 전 후 필터작업
		
		
	}
	

}
