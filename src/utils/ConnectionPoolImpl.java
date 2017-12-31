package utils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Stack;

public class ConnectionPoolImpl implements ConnectionPool {
    private Connection conn;
	// Thong tin account truy cap db
    private String username;
    private String userpass;
    // Thong tin trinh dieu khien
    private String driver;
    // Thong tin duong dan toi CSDL trong MYSQL
    private String url;
    // Ngan xep luu tru cac ket noi
    private Stack<Connection> pool;

    public ConnectionPoolImpl() {
        Properties p = new Properties();
        try {
            p.load(Thread.currentThread().getContextClassLoader()
                    .getResourceAsStream("database_info.properties"));
            this.username = p.getProperty("USER");
            this.userpass = p.getProperty("PASSWORD");
            this.url = p.getProperty("URL");
            // Thong tin chinh dieu khien
            this.driver = "com.mysql.jdbc.Driver";
            // Khoi tao Stack lưu cac connection
            this.pool = new Stack<Connection>();
            // load JDBC driver
            Class.forName(this.driver).newInstance();
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InstantiationException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    @Override
    public Connection getConnection() throws SQLException {
        if (this.pool.isEmpty()) {
            return DriverManager.getConnection(this.url, this.username,
                    this.userpass);
        } else {
            return (Connection) this.pool.pop();
        }
    }
    @Override
    public void releaseConnection(Connection con)
            throws SQLException {
        this.pool.push(con);
    }
    @Override
    public void refreshConnectionPool() {
        while(!pool.empty()){
            try {
                pool.pop().close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
    
}