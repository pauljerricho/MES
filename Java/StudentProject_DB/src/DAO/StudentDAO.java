	package DAO;
	
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	import java.util.ArrayList;
	
	import config.DBMananger;
	import vo.StudentVO;
	
	public class StudentDAO {
		private static StudentDAO instance = new StudentDAO();
		private StudentDAO() {
			
		}
		
		public static StudentDAO getInstance() {
			if(instance == null)
				instance = new StudentDAO();
			return instance;
		}
	
		public StudentVO selectStudent(String studentNo) {
			//1. SQL문을 만들고
			//2. PREPAREDSTATEMENT를 만든다.
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			StudentVO vo = null;
			try {
				String sql = "select * from student where studentno like ?"; // ? : 데이터가 들어갈 자리
				pstmt = DBMananger.getInstance().getConn().prepareStatement(sql);
				//SQL문에 ? 부분에 데이터 셋팅
				pstmt.setString(1, studentNo);
				
				rs = pstmt.executeQuery(); //절때 pstmt 쓸 때에는 SQL 집어넣지말기
				
				if(rs.next()) {
					vo = new StudentVO(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getDouble(4));
				}
				
				return vo;
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
		}
	
		public ArrayList<StudentVO> selectAllStudent() {
			ArrayList<StudentVO> list = new ArrayList<StudentVO>();
			PreparedStatement pstmt = null;
			String sql = "select * from student"; 
			ResultSet rs = null;
			
			try {
				pstmt = DBMananger.getInstance().getConn().prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					list.add(new StudentVO(rs.getString(1), rs.getString(2), 
							rs.getInt(3), rs.getDouble(4)));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			return list;
		}
	
		public int deleteStudent(String studentNo) {
			int result = 0;
			
			/*
			 * sql문 delete 실행 결과를 result에 저장
			 */
			PreparedStatement pstmt = null;
			try {
				String sql = "delete from student s where studentno like ?";
				pstmt = DBMananger.getInstance().getConn().prepareStatement(sql);
				pstmt.setString(1, studentNo);
				result = pstmt.executeUpdate(); //result 값이 올라간다.
				System.out.println(result + "건이 삭제되었습니다.");
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return result;
		}
	
		public int insertStudent(StudentVO studentVO) {
			int result = 0;
			PreparedStatement pstmt = null;
			try {
				String sql = "insert into student values(?,?,?,?)";
				pstmt = DBMananger.getInstance().getConn().prepareStatement(sql);
				pstmt.setString(1,studentVO.getStudentNo());
				pstmt.setString(2,studentVO.getName());
				pstmt.setInt(3, studentVO.getMajor());
				pstmt.setDouble(4, studentVO.getScore());
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return result;
		}
	
		public int updateStudent(StudentVO studentVO) {
			int result = 0;
			PreparedStatement pstmt = null;
			String sql = "update student set studentname=?, score=?, majorno=? "
					+ "where studentno like ?";
			try {
				pstmt = DBMananger.getInstance().getConn().prepareStatement(sql);
				pstmt.setString(1, studentVO.getName());
				pstmt.setDouble(2, studentVO.getScore());
				pstmt.setInt(3, studentVO.getMajor());
				pstmt.setString(4, studentVO.getStudentNo());
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return result;
		}	
	}
