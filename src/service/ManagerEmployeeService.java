package service;

import model.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ManagerEmployeeService {
    private DatabaseService databaseService = null;

    public ManagerEmployeeService() {
        databaseService = DatabaseService.getInstanceDatabaseService();
    }


    public boolean updateStatesRoom(int numberRoom, int codeState) {
        String query = "UPDATE room SET status = ? WHERE room_number = ?";
        try (PreparedStatement statement = databaseService.getPreparedStatement(query)) {
            statement.setInt(1, codeState);
            statement.setInt(2, numberRoom);
            int count = statement.executeUpdate();
            return count > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean updateStateBookedRoom(String idNumber, String bookedTime) {
        String query = "UPDATE book_a_room SET state = 6 " +
                "WHERE customer_id IN(SELECT id FROM customer WHERE identity_number = ?) " +
                "AND start_date = ?";
        try (PreparedStatement statement = databaseService.getPreparedStatement(query)) {
            statement.setString(1, idNumber);
            statement.setString(2, bookedTime);
            int count = statement.executeUpdate();
            return count > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public List<AccountAndEmployeeModel> getListEmployee() {
        List<AccountAndEmployeeModel> l = new ArrayList<>();
        String query = "SELECT e.id,u.username,e.full_name,e.email,e.phone,e.address,e.position,u.active_account FROM users u " +
                "JOIN employee e ON e.id = u.employee_id";
        try (ResultSet rs = this.databaseService.executeQuery(query)) {
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("full_name");
                String email = rs.getNString("email");
                String numberPhone = rs.getString("phone");
                String address = rs.getNString("address");
                String position = rs.getNString("position");
                EmployeeModel e = new EmployeeModel(id, name, null, email, numberPhone, address, position);

                String nameAccount = rs.getString("username");
                int stateAccount = rs.getInt("active_account");
                EmployeeAccountModel a = new EmployeeAccountModel(nameAccount, null, stateAccount == 1);
                AccountAndEmployeeModel ae = new AccountAndEmployeeModel(a, e);
                l.add(ae);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public boolean delEmployeeSelected(AccountAndEmployeeModel ae) {
        try {
            String sql1 = "DELETE FROM users WHERE username = ?";
            PreparedStatement stmt1 = databaseService.getPreparedStatement(sql1);
            stmt1.setString(1, ae.getAccount().getNameAccount());
            int c2 = stmt1.executeUpdate();

            String sql = "DELETE FROM employee WHERE phone = ? AND email = ?";
            PreparedStatement stmt = databaseService.getPreparedStatement(sql);
            stmt.setString(1, ae.getEmployee().getNumberPhone());
            stmt.setString(2, ae.getEmployee().getEmail());
            int c1 = stmt.executeUpdate();

            if (c2 > 0) {
                return true;
            }
        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
        }

        return false;
    }

    public boolean insertAccountAndEmployee(AccountAndEmployeeModel employeeRegis) {
        String sql = "INSERT INTO employee (full_name,gender, address, phone, email,position) VALUES (?, ? ,?, ?, ?, ?)";

        try (PreparedStatement statement1 = this.databaseService.getPreparedStatement(sql)) {
            statement1.setString(1, employeeRegis.getEmployee().getName());
            statement1.setString(2, employeeRegis.getEmployee().getGender());
            statement1.setString(3, employeeRegis.getEmployee().getAddress());
            statement1.setString(4, employeeRegis.getEmployee().getNumberPhone());
            statement1.setString(5, employeeRegis.getEmployee().getEmail());
            statement1.setString(6, employeeRegis.getEmployee().getPosition());
            statement1.executeUpdate();

            // Lấy ID của bản ghi mới được thêm vào bảng employee
            ResultSet rs = statement1.getGeneratedKeys();
            int employeeId = -1;
            if (rs.next()) {
                employeeId = rs.getInt(1);

                if(employeeId == -1) return false;
            }
            // Thêm một bản ghi mới cho bảng account_employee
            String sql2 = "INSERT INTO users (active_account, username, password, employee_id) VALUES (?, ?, ?, ?)";
            PreparedStatement statement2 = this.databaseService.getPreparedStatement(sql2);
            statement2.setInt(1, employeeRegis.getAccount().getStateActive());
            statement2.setString(2, employeeRegis.getAccount().getNameAccount());
            statement2.setString(3, employeeRegis.getAccount().getPassAccount());
            statement2.setInt(4, employeeId);
            int count = statement2.executeUpdate();

            if (count < 1) return false;

            if (statement1 != null) {
                statement1.close();
            }
            if (statement2 != null) {
                statement2.close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return true;
    }
}
