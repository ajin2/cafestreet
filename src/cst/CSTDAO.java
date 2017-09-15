package cst;

import java.sql.*;

public class CSTDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
   
   public CSTDAO() {
   }
   
   public int upload_Text(CSTDTO dto,String str1,String str2) {
	      try {
	    	 conn = db.DB.getConn();
	         String sql="insert into TEST values(TEST_IDX.nextval,?,?,?,?,?)";
	         ps=conn.prepareStatement(sql);
	         ps.setString(1, str1);
	         ps.setString(2, str2);
	         ps.setString(3, dto.getTitle());
	         ps.setString(4, dto.getImg());
	         ps.setString(5, dto.getText());
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
   public void selList() {
	   try {
		   conn = db.DB.getConn();
		   String sql = "select * from seoul";
		   ps = conn.prepareStatement(sql);
		   rs = ps.executeQuery();
		   while(rs.next()) {
			   String name = rs.getString("name");
		   }
	   }catch(Exception e) {
		   e.printStackTrace();
	   }finally {
		   try {
			   if(rs!=null) rs.close();
			   if(ps!=null) ps.close();
			   if(conn!=null) conn.close();
		   }catch(Exception e2) {
			   
		   }
	   }
   }
}
