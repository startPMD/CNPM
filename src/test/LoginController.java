package test;

import java.sql.SQLException;

public class LoginController {
    private UserModel model;
    private LoginView view;
    private UserService userService;

    public LoginController(UserModel model, LoginView view, UserService userService) {
        this.model = model;
        this.view = view;
        this.userService = userService;

        view.addLoginListener(new LoginListener() {
            @Override
            public void loginPerformed(LoginEvent event) {
                try {
                    String username = view.getUsername();
                    String password = view.getPassword();
                    System.out.println(username+" "+password );
                    boolean isLoggedIn = userService.authenticateUser(username, password);
                    if (isLoggedIn) {
                        view.setStatus("Đăng nhập thành công");
                    } else {
                        view.setStatus("Tên đăng nhập hoặc mật khẩu không đúng");
                    }
                } catch (SQLException e) {
                    view.setStatus("Lỗi kết nối CSDL");
                    e.printStackTrace();
                }
            }
        });
    }
}