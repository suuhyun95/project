package board.staff_board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.staff_board.model.service.Staff_BoardSerivce;
import board.staff_board.model.vo.Staff_BoardComment;

/**
 * Servlet implementation class staff_BoardCommentInsertServlet
 */
@WebServlet("/board/staff_board/staff_BoardCommentInsert")
public class Staff_BoardCommentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Staff_BoardCommentInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터 핸들링
		int staff_BoardRef = Integer.parseInt(request.getParameter("boardRef"));
		String staff_BoardCommentWriter = request.getParameter("boardCommentWriter");
		String staff_BoardCommentContent = request.getParameter("boardCommentContent");
		int staff_BoardCommentLevel = Integer.parseInt(request.getParameter("boardCommentLevel"));
		int staff_BoardCommentRef = Integer.parseInt(request.getParameter("boardCommentRef"));
		
		Staff_BoardComment bc = new Staff_BoardComment(0, staff_BoardCommentLevel, staff_BoardCommentWriter, staff_BoardCommentContent, staff_BoardRef, staff_BoardCommentRef, null);
		System.out.println(bc+"검사");
		int result = new Staff_BoardSerivce().insertBoardComment(bc);
		System.out.println(result + "오류 검사" );
		//3.view단 처리: 댓글등록여부를 msg.jsp를 통해서 알림후,
		// 				/board/boardView로 이동
		
		String msg = "";
		String loc = "/board/staff_board/staff_BoardView?boardNo="+staff_BoardRef;
		if(result>0) {
			msg = "댓글 입력 성공!";
		}else {
			msg = "댓글 입력 실패!";
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
