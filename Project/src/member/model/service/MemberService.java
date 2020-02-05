package member.model.service;

import member.model.dao.MemberDAO;
import member.model.vo.Member;
import static common.JDBCTemplate.*;

import java.sql.Connection;

public class MemberService {
	
	//회원가입 
	public int insertMember(Member m) {
		//DAO에 전달할 업무로직
		Connection conn = getConnection();
		int result = new MemberDAO().insertMember(conn, m);
		
		//커밋&롤백 처리
		if(result>0) commit(conn);
		else rollback(conn);
		
		return result;
	}
	
	//아이디 중복검사
	public int selectIdChk(String email) {
		//DAO에 전달할 업무로직
		Connection conn = getConnection();
		int result = new MemberDAO().selectIdChk(conn,email);
		
		close(conn);
		
		return result;
	}
	
	//로그인
	public Member selectOne(String memberEmail) {
		
		Connection conn = getConnection();
		Member m = new MemberDAO().selectOne(conn, memberEmail);
		close(conn);
		
		
		return m;
	}

}
