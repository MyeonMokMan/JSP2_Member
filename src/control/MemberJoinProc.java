package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberBean;

/**
 * Servlet implementation class MemberJoinProc
 */
@WebServlet("/proc.do")
public class MemberJoinProc extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberBean bean = new MemberBean();
		
		bean.setId(request.getParameter("id"));
		bean.setPass1(request.getParameter("pass1"));
		bean.setPass2(request.getParameter("pass2"));
		bean.setEmail(request.getParameter("email"));
		bean.setTel(request.getParameter("tel"));
		String [] hobbyArr = request.getParameterValues("hobby");
		String data ="";
		for(String data1 : hobbyArr) {
			data += data1+" ";
		}
		bean.setHobby("data");
		bean.setJob(request.getParameter("job"));
		bean.setAge(request.getParameter("age"));
		bean.setInfo(request.getParameter("info"));
	}
}
