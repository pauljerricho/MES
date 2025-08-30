package config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//싱글톤메서드
//드라이버 불러옴

public class DBMananger {
	private static DBMananger instance = new DBMananger();
	private Connection conn;
	
	private DBMananger() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","scott","tiger");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
	public static DBMananger getInstance() {
		if(instance == null)
			instance = new DBMananger();
			return instance;
	}
	public Connection getConn() {
		return conn;
	}
}


