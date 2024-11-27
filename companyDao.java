package companyDb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.jar.Attributes.Name;

import addrbookDb.addrbookDo;
import companyDb.companyDo;

public class companyDao {
	String id = "root";
	String password = "111111";
	String url = "jdbc:mysql://localhost:3306/jspdb_b?characterEncoding=utf-8";
	
	Connection conn = null; //디비 연결을 위한 객체 -> ctrl+space를 통해 import해주어야 함
	
	PreparedStatement pstmt = null; //SQL문 완성을 위한 객체 -> ctrl+space를 통해 import해주어야 함
	
	ResultSet rs = null; //SQL문 결과를 처리하기 위한 객체 -> ctrl+space를 통해 import해주어야 함
	
	//connect() : jdbc를 이용하여 db 연동을 위해서, db와 연결을 해주는 메소드
	public void connect() {	
		try {
			//1. jdbc를 이용하기 위한 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver");
			
			//2. db 연결
			conn = DriverManager.getConnection(url, id, password); //driverMannager도 import 해주기
			
			System.out.println("db 연결 완료");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void disconnect() {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(pstmt != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(rs != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//insertAddrbook(aDo) 
	//사용자로부터 입력받은 데이터를 디비에 저장하는 기능

	public void insertcompany(companyDo ado) {
		connect();
		
		//sql문 처리
		String sql = "insert into company values(num,?,?,?,?,?)";
		try {
			//sql문 완성
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ado.getName());
			pstmt.setString(2, ado.getNumber());
			pstmt.setString(3, ado.getPeriod());
			pstmt.setString(4, ado.getJob());
			pstmt.setString(5, ado.getImage());
			
			pstmt.executeUpdate();
			
			System.out.println("insertcompany() 처리 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disconnect();
		
	}
	
	public ArrayList<companyDo> getAllcompany() {
		connect();
		
		ArrayList<companyDo> aList = new ArrayList<companyDo>();
		
		String sql = "select * from company";
		

		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				companyDo ado = new companyDo();
				
				ado.setNum(rs.getInt(1));
				ado.setName(rs.getString(2));
				ado.setNumber(rs.getString(3));
				ado.setPeriod(rs.getString(4));
				ado.setJob(rs.getString(5));
				ado.setImage(rs.getString(6));
				
				aList.add(ado);
				
				
			}
			System.out.println("getAllCompany() 처리 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disconnect();
		return aList;
		
	}
	
	public companyDo getCompanyOne(int num) {
	    System.out.println("getCompanyOne() 처리 시작");
	    connect();
	    companyDo aDo = new companyDo();
	   
	    try {
	    	String sql = "select * from company where num=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);
	        rs = pstmt.executeQuery();
	        
	        while(rs.next()) {
	        	aDo.setNum(rs.getInt(1));
				aDo.setName(rs.getString(2));
				aDo.setNumber(rs.getString(3));
				aDo.setPeriod(rs.getString(4));
				aDo.setJob(rs.getString(5));
				aDo.setImage(rs.getString(6));
	        }
	        
	        disconnect();
	        System.out.println("처리 완료");
	            
	    } catch (SQLException e) {
	        e.printStackTrace();
	        System.out.println("SQL 실행 오류: " + e.getMessage());
	    } 
	    return aDo;
	}

}
