package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Getconn {
	private static Connection conn = null;
	
	@SuppressWarnings("unused")
	private static Getconn instance = new Getconn();
	
	private Getconn() {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/springgreen";
		String user = "root";
		String password = "1234";
		
		try {
			Class.forName(driver); //클래스네임에 맞는 클래스 읽는다 시도 
			conn = DriverManager.getConnection(url, user, password); //연결 시도 
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 검색 실패 : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("DB 연동 실패 : " + e.getMessage());
		}
	}
	
	public static Connection getConn() {
		return conn;
	}
	
}
