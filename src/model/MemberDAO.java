package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberDAO {
	
	String id = "오라클 아이디";
	String pass = "오라클 비밀번호";
	String url="jdbc:oracle:thin:@localhost:1521:XE";
	
	Connection con;
	
	PreparedStatement pstmt;
	
	ResultSet rs;
	
	public void getCon() {
		try {
			//해당 데이터베이스를 사용한다고 선언
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//해당 데이터베이스를 접속
			con = DriverManager.getConnection(url, id, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertMember(MemberBean bean) {
		
		try {
			
			getCon();
			
			String sql = "insert into member values(?,?,?,?,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPass1());
			pstmt.setString(3, bean.getEmail());
			pstmt.setString(4, bean.getTel());
			pstmt.setString(5, bean.getHobby());
			pstmt.setString(6, bean.getJob());
			pstmt.setString(7, bean.getAge());
			pstmt.setString(8, bean.getInfo());
			pstmt.executeUpdate();
			
			con.close();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public Vector<MemberBean> getAllMember() {
		
			Vector<MemberBean> vec = new Vector<MemberBean>();
			
			try {
				
				getCon();
				
				String sql = "select * from member";
				
				pstmt = con.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					MemberBean mbean = new MemberBean();
					
					mbean.setId(rs.getString(1));
					mbean.setPass1(rs.getString(2));
					mbean.setEmail(rs.getString(3));
					mbean.setTel(rs.getString(4));
					mbean.setHobby(rs.getString(5));
					mbean.setJob(rs.getString(6));
					mbean.setAge(rs.getString(7));
					mbean.setInfo(rs.getString(8));
					
					vec.add(mbean);
				}
				
				con.close();
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}
			
			return vec;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
