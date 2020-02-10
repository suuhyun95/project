package board.staff_board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.staff_board.model.service.Staff_BoardSerivce;

/**
 * Servlet implementation class staff_BoardCommentDeleteServlet
 */
@WebServlet("/board/staff_board/staff_BoardCommentDelete")
public class Staff_BoardCommentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Staff_BoardCommentDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int delNo = Integer.parseInt(request.getParameter("delNo"));
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		
		int result = new Staff_BoardSerivce().deleteComment(delNo);
		
		String msg = "";
		String loc = "/board/staff_board/staff_BoardView?boardNo="+boardNo;
		if(result > 0) {
			msg = "댓글이 삭제 되었습니다.";
		}else {
			msg = "오류가 발생했습니다.";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
