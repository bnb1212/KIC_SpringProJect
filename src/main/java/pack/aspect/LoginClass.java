package pack.aspect;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

@Component
public class LoginClass {

	public boolean loginCheck(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("member_email") == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
//			out.print("<script language='javascript'>");
//			out.print("alert('로그인 후에 사용 할 수 있습니다');");
//			out.print("</script>");
			out.println("<script>alert('로그인 후에 신청가능합니다.');location.href='main';</script>");
			out.flush();
			//response.sendRedirect("main");
			return true;
		}else {
			return false;
		}
	}
}
