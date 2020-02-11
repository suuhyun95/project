package board.staff_board.model.service;

import java.sql.Connection;
import java.util.List;
import static common.JDBCTemplate.*;


import board.staff_board.model.dao.Staff_BoardDAO;
import board.staff_board.model.vo.Staff_Board;
import board.staff_board.model.vo.Staff_BoardComment;

public class Staff_BoardSerivce {

	public List<Staff_Board> selectBoardList(int cPage, int numPerPage) {
		Connection conn = getConnection();
		List<Staff_Board> list = new Staff_BoardDAO().selectBoardList(conn, cPage, numPerPage);
		close(conn);
		return list;
	}

	public int selectTotalContents() {
		Connection conn = getConnection();
		int totalContents = new Staff_BoardDAO().selectTotalContents(conn);
		close(conn);
		return totalContents;
	}

	public Staff_Board selectBoard(int boardNo, boolean hasRead) {
		Connection conn = getConnection();
		int result = 0;
		// 조회수 증가
		if (hasRead == false) {
			result = new Staff_BoardDAO().increaseReadCount(conn, boardNo);
		}

		// 클릭한 게시물 찾기
		Staff_Board b = new Staff_BoardDAO().selectBoard(conn, boardNo);

		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);

		return b;
	}
	
	public Staff_Board selectBoard(int boardNo) {
		Connection conn = getConnection();
		
		// 클릭한 게시물 찾기
		Staff_Board b = new Staff_BoardDAO().selectBoard(conn, boardNo);

		close(conn);

		return b;
	}

	// 댓글 출력
	public List<Staff_BoardComment> selectCommentList(int boardNo) {
		Connection conn = getConnection();
		List<Staff_BoardComment> list = new Staff_BoardDAO().selectCommentList(conn, boardNo);
		close(conn);
		return list;
	}

	// 댓글 입력
	public int insertBoardComment(Staff_BoardComment bc) {
		Connection conn = getConnection();
		int result = new Staff_BoardDAO().insertBoardComment(conn, bc);

		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);
		return result;
	}

	// 댓글 삭제
	public int deleteComment(int delNo) {
		Connection conn = getConnection();
		int result = new Staff_BoardDAO().deleteComment(conn, delNo);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);
		return result;
	}

	// 게시물 삭제
	public int deleteBoard(int boardNo) {
		Connection conn = getConnection();
		int result = new Staff_BoardDAO().deleteBoard(conn, boardNo);

		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);
		return result;
	}

	// 게시물 등록
	public int insertBoard(Staff_Board b) {
		Connection conn = getConnection();
		int result = new Staff_BoardDAO().insertBoard(conn, b);

		int boardNo = new Staff_BoardDAO().selectLastSeq(conn);
		b.setStaff_BoardNo(boardNo);

		// 트랜잭션 처리
		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);
		return result;
	}

	public int updateBoard(Staff_Board b) {
		Connection conn = getConnection();

		int result = new Staff_BoardDAO().updateBoard(conn, b);

		// 트랜잭션 처리
		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);
		return result;
	}


	

}
