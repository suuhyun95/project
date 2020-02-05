package board.free_board.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import static common.JDBCTemplate.*;

import board.free_board.model.vo.FreeBoard;
import member.model.dao.MemberDAO;

public class FreeBoardDAO {
	
	private Properties prop = new Properties();
	
	public FreeBoardDAO() {
		//sql member prorperties 불러오기
				String fileName = MemberDAO.class.getResource("/sql/board/free_board/freeBoard-query.properties").getPath();
				
				try {
					prop.load(new FileReader(fileName));
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}
	
	//게시물 표현
	public List<FreeBoard> selectBoardList(Connection conn, int cPage, int numPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<FreeBoard> list = new ArrayList<FreeBoard>();
		FreeBoard b = null;
		String query = prop.getProperty("selectBoardList");
		
		try {
			pstmt = conn.prepareStatement(query);
			int startRownum = (numPerPage*cPage)-(numPerPage-1);
			int endRownum = numPerPage*cPage;
			
			pstmt.setInt(1, startRownum);
			pstmt.setInt(2, endRownum);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				b = new FreeBoard();
				b.setFreeBoardNo(rset.getInt("free_board_no"));
				b.setFreeBoardTitle(rset.getString("free_board_title"));
				b.setFreeBoardWriter(rset.getString("free_board_writer"));
				b.setFreeBoardContent(rset.getString("free_board_content"));
				b.setFreeOriginalFileName(rset.getString("free_board_original_filename"));
				b.setFreeRenamedFileName(rset.getString("free_board_renamed_filename"));
				b.setFreeBoardDate(rset.getDate("free_board_date"));
				b.setFreeReadCount(rset.getInt("free_board_readcount"));
				
				list.add(b);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}
	
	//총 게시물 갯수
	public int selectTotalContents(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int totalContents = 0;
		String query = prop.getProperty("selectTotalContents");
		
		try {
			//미완성 쿼리 값 대입
			pstmt= conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				totalContents = rset.getInt("cnt");
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rset);
		}
		
		return totalContents;
	}
}
