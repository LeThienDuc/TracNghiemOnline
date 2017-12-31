package DAO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//import com.sun.org.apache.xpath.internal.operations.String;

import utils.ConnectionPool;
//import org.apache.tomcat.jdbc.pool.jmx.ConnectionPool;
import Models.Model_User;

public class AccountDAO {
	public static boolean Add(Model_User user)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection cnn= null;
		Statement stm=null;
		ResultSet rs=null;
		boolean tmp=false;
		try {

			cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/data-web", "root", "1234");
			stm=cnn.createStatement();
			stm.executeUpdate("INSERT INTO tbl_user values('"+user.UserID+"','"+user.UserName+"', "
					+ "'"+user.Password+"', '"+user.Name+"', '"+user.Email+"', "
					+ "'"+user.NgaySinh+"', '"+user.GioiTinh+"','"+user.ClassID+"', '"+user.RoleID+"')");
			//tmp=rs.next();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tmp;
	}
}
