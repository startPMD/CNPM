package test;

import java.sql.*;

public class UserService {
    private Connection connection;

    public UserService() throws SQLException {
        // Tạo kết nối đến CSDL
//        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "username", "password");
    }

    public boolean authenticateUser(String username, String password) throws SQLException {
//        PreparedStatement statement = connection.prepareStatement("SELECT COUNT(*) FROM users WHERE username = ? AND password = ?");
//        statement.setString(1, username);
//        statement.setString(2, password);
//        ResultSet rs = statement.executeQuery();
//        rs.next();
//        int count = rs.getInt(1);
        return  true;
    }

    public void close() throws SQLException {
        connection.close();
    }
}