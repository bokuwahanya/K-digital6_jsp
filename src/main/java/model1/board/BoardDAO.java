package model1.board;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.JDBConnect;
import jakarta.servlet.ServletContext;

public class BoardDAO extends JDBConnect {
	public BoardDAO(ServletContext application) {
		super(application);
	}
	// 검색 조건에 맞는 게시물의 개수를 반환
	public int selectCount(Map<String,Object>map) {
		int totalCount = 0;
	
	String query = "SELECT COUNT(*) FROM board";
	if (map.get("searchWord")!=null) {
		query += " WHERE " + map.get("searchField")+" "
				+ " LIKE '%" + map.get("searchWord")+"%'";
	}
	//검색 조건에 맞는 게시물 목록을 반환
	
	
	try {
		stmt = con.createStatement();
		rs = stmt.executeQuery(query);
		rs.next();
		totalCount = rs.getInt(1);
		}
	catch(Exception e) {
		System.out.println("게시물 수를 구하는 중 예외 발생");
		e.printStackTrace();
	}
	
	return totalCount;
	}
	public List<BoardDTO> selectList(Map<String,Object>map){
		List<BoardDTO> bbs =new Vector<BoardDTO>();
		String query = "SELECT * FROM board";
		if (map.get("searchWord")!=null) {
			query += " WHERE " + map.get("searchField")+" "
					+ " LIKE '%" + map.get("searchWord")+"%'";
		
	}
		query +=" ORDER BY num DESC";
	
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString("visitcount"));
				
				bbs.add(dto);
			}
		}
		catch (Exception e) {
			System.out.println("게시물 조회 중 예외 발생");
			e.printStackTrace();
		}
		return bbs;
	}
	
	public int insertWrite(BoardDTO dto) {
		int result = 0;
		
		try {
			
			String query = "INSERT INTO board ( "
					+ " title,content,id,visitcount) "
					+ " VALUES ( "
					+ " ?,?,?, 0)";
					
				psmt = con.prepareStatement(query);
				psmt.setString(1, dto.getTitle());
				psmt.setString(2, dto.getContent());
				psmt.setString(3, dto.getId());
				
				result =psmt.executeUpdate();
		}
		catch (Exception e) {
			System.out.println("게시물 입력 중 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
	public BoardDTO selectView(String num) {
		BoardDTO dto =new BoardDTO();
		
		String query = "SELECT B.*, M.name "
					+ " FROM member M INNER JOIN board B "
					+ " ON M.id=B.id "
					+ " WHERE num=? ";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1,num);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setNum(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString(6));
				dto.setName(rs.getString("name"));
			}
		}
		catch (Exception e) {
			System.err.println("게시물 상세보기 중 예외 발생");
			e.printStackTrace();
		}
		return dto;
	}
	public void updateVisitCount(String num) {
		String query = "UPDATE board SET "
				+ " visitcount=visitcount+1 "
				+ " WHERE num=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, num);
			psmt.executeUpdate();
		}
		catch(Exception e) {
			System.out.println("게시물 조회수 증가 중 예외 발생");
			e.printStackTrace();
		}
	}
	public int updateEdit(BoardDTO dto) {
		int result = 0;
		
		try {
			
			String query = "UPDATE board SET "
					+ " title=?, content=? "
					+ " WHERE num=?";
					
				psmt = con.prepareStatement(query);
				psmt.setString(1, dto.getTitle());
				psmt.setString(2, dto.getContent());
				psmt.setString(3, dto.getNum());
				
				result =psmt.executeUpdate();
		}
		catch (Exception e) {
			System.out.println("게시물 수정 중 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
	public int deletePost(BoardDTO dto) {
		int result = 0;
		
		try {
			
			String query = "DELETE FROM board WHERE num=?";
					
				psmt = con.prepareStatement(query);
				psmt.setString(1, dto.getNum());
				
				result =psmt.executeUpdate();
		}
		catch (Exception e) {
			System.out.println("게시물 삭제 중 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
}