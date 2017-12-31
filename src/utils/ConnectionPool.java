package utils;

import java.sql.Connection;
import java.sql.SQLException;
public interface ConnectionPool {
    //tra ve connection
    public Connection getConnection() throws SQLException;
    //lay lii ket noi
    public void releaseConnection(Connection con) throws SQLException;
    //lam moi pool
    public void refreshConnectionPool();
}