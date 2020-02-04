package member.model.service;

import member.model.dao.MemberDAO;
import member.model.vo.Member;
import static common.JDBCTemplate.*;

import java.sql.Connection;

public class MemberService {

	public int insertMember(Member m) {
		//DAO에 전달한 업무로직
		Connection conn = getConnection();
		int result = new MemberDAO().insertMember(conn, m);
		
		//커밋&롤백 처리
		if(result>0) commit(conn);
		else rollback(conn);
		
		return result;
	}

}
