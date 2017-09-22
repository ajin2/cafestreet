package cst;

import java.sql.*;
import java.util.ArrayList;

public class CSTDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
   
   public CSTDAO() {
   }
   
   public int upload_Text(CSTDTO dto,String str1,String str2) {
	      try {
	    	 conn = db.DB.getConn();
	         String sql="insert into TEST values(TEST_IDX.nextval,?,?,?,?,?,0,0)";
	         ps=conn.prepareStatement(sql);
	         ps.setString(1, str1);
	         ps.setString(2, str2);
	         ps.setString(3, dto.getTitle());
	         ps.setString(4, dto.getImg());
	         ps.setString(5, dto.getContent());
	         
	         int count=ps.executeUpdate();
	         return count;
	      }catch(Exception e) {
	         e.printStackTrace();
	         return -1;
	      }finally {
	         try {
	            ps.close();
	            conn.close();
	         }catch(Exception e2) {
	            
	         }
	      }
	   }
   
   public ArrayList<CSTDTO> bbsList(String si,String gu) {
		
		try {
			conn=db.DB.getConn();
			String sql="select * from test where area_ci=? and area_gu=?";  //where 시구분=? and 구구분=?
			ps=conn.prepareStatement(sql);		
			ps.setString(1, si);
			ps.setString(2, gu);
			rs=ps.executeQuery();
			ArrayList<CSTDTO> arr=new ArrayList<CSTDTO>();
			
			while(rs.next()) {
				String img=rs.getString("img");
				String writer=rs.getString("writer");
				String title=rs.getString("title");
				String hit=rs.getString("hit");
				String content=rs.getString("content");
				String area_ci=rs.getString("area_ci");
				String area_gu=rs.getString("area_gu");
				int idx = rs.getInt("idx");
				
				CSTDTO dto=new CSTDTO(title, content, img, idx, area_ci, area_gu, writer, hit);
				
				
				arr.add(dto);
			}
			
			
				return arr;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close(); 
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				
			}
		}
		
	}
	
public ArrayList<CSTDTO> bbsList(String si,String gu,String searchType,String search) {
		
		String sqlAdd=null;
		
		if(searchType.equals("writer_title")) {    
			sqlAdd="writer like('%"+search+"%') or title like('%"+search+"%')";				
		}else {
			sqlAdd=searchType+" like('%"+search+"%')";
			 
		}
		
		try {
			conn=db.DB.getConn();
			String sql="select * from test where area_ci=? and area_gu=? and "+sqlAdd;  //where 시구분=? and 구구분=?
			System.out.println(sql);
			ps=conn.prepareStatement(sql);		
			ps.setString(1, si);
			ps.setString(2, gu);
			rs=ps.executeQuery();
			ArrayList<CSTDTO> arr=new ArrayList<CSTDTO>();
			
			while(rs.next()) {
				String img=rs.getString("img");
				String writer=rs.getString("writer");
				String title=rs.getString("title");
				String hit=rs.getString("hit");
				String content=rs.getString("content");
				String area_ci=rs.getString("area_ci");
				String area_gu=rs.getString("area_gu");
				int idx = rs.getInt("idx");
				
				CSTDTO dto=new CSTDTO(title, content, img, idx, area_ci, area_gu, writer, hit);
				
				
				arr.add(dto);
			}
			
			
				return arr;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			
		}finally {
			try {
				if(rs!=null)rs.close();
				if(ps!=null)ps.close(); 
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				
			}
		}
		
	}
}
