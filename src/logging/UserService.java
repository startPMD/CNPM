package logging;

import service.DatabaseService;

import java.sql.*;

public class UserService {
    private DatabaseService databaseService;

    public UserService() {
        databaseService = DatabaseService.getInstanceDatabaseService();
    }

    public Object[] authenticateUser(String username, String password) {
        Object[] infoE = null;
        String sql = "SELECT e.full_name,e.position FROM users u " +
                "JOIN employee e ON e.id = u.employee_id  WHERE username = '"+username+"' AND password = '"+password+"'";
        try (ResultSet rs = databaseService.executeQuery(sql)) {
            while (rs.next()) {
                String name = rs.getString("full_name");
                String position = rs.getString("position");
                infoE = new Object[]{name,position};
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return infoE;
    }

    public static void main(String[] args)  {
        UserService u = new UserService();
      u.authenticateUser("user12","1") ;

        }
}