package Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnDB {
	String sql;
	public static boolean ConectnDB(String username, String userpass , String RoleID)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection cnn=null;
		Statement stm=null;
		ResultSet rs=null;
		boolean tmp = false;
		try {
			cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/data-web", "root", "1234");
			stm =cnn.createStatement();
			rs = stm.executeQuery("SELECT * FROM tbl_user WHERE UserName ='"+username +"' AND Password='"+userpass+"'AND RoleID ='"+RoleID+"'");
			tmp=rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tmp;
	}
	public ConnDB()
	{
		super();
	}
	public Connection cnn() throws Exception
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/data-web", "root", "1234");

			return cnn;
		}catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	public void ThucThiCauLenhSQL(String sql)
	{
		try {
			Connection connect = cnn();
			Statement stm=connect.createStatement();
			stm.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public ResultSet chonDuLieu(String sql) throws Exception {
		Connection connect= cnn();
		Statement stm= connect.createStatement();
		ResultSet rs=stm.executeQuery(sql);
		return rs;
	}
	public static void main(String[] args) throws Exception
	{
		ConnDB connect=new ConnDB();
		
		System.out.println(connect.cnn());
	}
}
