package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/member/memeberLogin")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. 인코딩
		request.setCharacterEncoding("utf-8");
		
		//2. 파라미터 생성
		String memberEmail = request.getParameter("loginEmail");
		String password = request.getParameter("loginPassword");
		
		
		Member m = new MemberService().selectOne(memberEmail);

		
		String msg = "";
		String loc = "/";
		
		//3. 업무로직
		
		//이 아이디의 member 객체가 null이 아니면 true
		if(m != null) {
			
			//패스워드까지 일치할 경우 로그인 성공
			if(password.equals(m.getPassword())) {
				
				msg = "로그인에 성공하셨습니다!";
		
				return;	
				
			}//패스워드가 일치하지 않을 경우
			else {
				
				msg = "비밀번호가 틀렸습니다!";
				
			}
		}//null이면 false 바로 로그인 실패
		else {
			
			msg = "아이디가 틀렸습니다!";
			
		}
		System.out.println("msg="+msg);
		
		//4.view단 처리 포워딩
		
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		
		request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp")
			   .forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
