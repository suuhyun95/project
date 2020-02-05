package board.free_board.model.service;

import java.sql.Connection;
import java.util.List;
import static common.JDBCTemplate.*;

import board.free_board.model.dao.FreeBoardDAO;
import board.free_board.model.vo.FreeBoard;

public class FreeBoardSerivce {

	public List<FreeBoard> selectBoardList(int cPage, int numPerPage) {
		Connection conn = getConnection();
		List<FreeBoard> list = new FreeBoardDAO().selectBoardList(conn, cPage, numPerPage);
		close(conn);
		return list;
	}

}
