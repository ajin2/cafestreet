package member;
import java.io.*;
import java.net.*;
import java.sql.*;
import javax.sql.*;
public class memberDAO {
	
	private Connection conn;
	private PreparedStatement ps;	
	private ResultSet rs;
	
	//로그인 관련 상수 선언
	public static final int NOT_ID=1;
	public static final int NOT_PWD=2;
	public static final int LOGIN_OK=3;
	public static final int ERROR=-1;
	
	/** 회원가입관련 메소드 */
	   public int member(memberDTO dto) {
	      try {

	         conn = db.DB.getConn();
	         
	         String sql = "insert into cafe_member values(?,?,?,?)";
	         ps = conn.prepareStatement(sql);
	         ps.setString(1, dto.getId());
	         ps.setString(2, dto.getPwd());
	         ps.setString(3, dto.getNickname());
	         ps.setString(4, dto.getAddr());
	         
	         int count = ps.executeUpdate();
	         return count;

	      } catch (Exception e) {
	         
	         e.printStackTrace();
	         return -1;
	      
	      } finally {
	         try {
	            
	            if(ps!=null)ps.close();
	            if(conn!=null)conn.close();
	            
	         } catch (Exception e2) {

	         }
	      }
	   }
	/**로그인 관련 메소드*/
	public int login_Check(String id, String pwd){
		try {
			conn=db.DB.getConn();
			String sql="select pwd from cafe_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			if(rs.next()){//해당 아이디가 있을때
				String user_pwd=rs.getString(1);
				if(user_pwd.equals(pwd)){//아이디 비밀번호 모두 같을때
					return LOGIN_OK;
				}else{//비밀번호가 틀릴때
					return NOT_PWD;
				}
			}else{
				return NOT_ID;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		} finally{
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)ps.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
	/**아이디 중복검사 메소드*/
	public boolean idCheck(String user_id) {
		try {
			conn=db.DB.getConn();
			String sql="select * from cafe_member where id=?";
		
			ps=conn.prepareStatement(sql);
			ps.setString(1, user_id);
			rs=ps.executeQuery();

			if(rs.next()) {//중복된 아이디가 존재할때
				return false;
			}else {//존재 하지 않을때
				return true;
			}
			
			}catch(Exception e) {
				e.printStackTrace();
				return false;
			}finally {
				try {
					if(rs!=null)rs.close();
					if(ps!=null)ps.close();
					if(conn!=null)conn.close();
				} catch (Exception e2) {
				// TODO: handle exception
				
			}
		}
		
	}
	
	/**닉네임 중복검사 메소드*/
	public boolean nickCheck(String user_nick) {
		try {
			conn=db.DB.getConn();
			String sql="select * from cafe_member where nickname=?";
		
			ps=conn.prepareStatement(sql);
			ps.setString(1, user_nick);
			rs=ps.executeQuery();

			if(rs.next()) {//중복된 닉네임이 존재할때
				return false;
			}else {//존재 하지 않을때
				return true;
			}
			
			}catch(Exception e) {
				e.printStackTrace();
				return false;
			}finally {
				try {
					if(rs!=null)rs.close();
					if(ps!=null)ps.close();
					if(conn!=null)conn.close();
				} catch (Exception e2) {
				// TODO: handle exception
				
			}
		}
		
	}
	
	
	/**사용자 정보 get 메소드*/
	public String getUserInfo(String id){
		try {
			conn=db.DB.getConn();
			String sql="select nickname from cafe_member where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			rs.next();
			return rs.getString(1);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
}
