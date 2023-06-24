import logging.LoginController;
import logging.LoginView;
import logging.UserModel;
import logging.UserService;

import java.sql.SQLException;

public class RunMain {

    public static void main(String[] args) throws SQLException {
        UserModel userModel = new UserModel();
        LoginView loginView = new LoginView();
        UserService service = new UserService();

        LoginController loginController = new LoginController(userModel, loginView, service);
        loginView.setVisible(true);

    }
}
