package logging;

import view.MainView;
import view.PanelLeftView;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class LoginController {
    private UserModel model;
    private LoginView view;
    private UserService userService;
    private PanelLeftView panelLeftView;

    public LoginController(UserModel model, LoginView view, UserService userService) {
        this.model = model;
        this.view = view;
        this.userService = userService;

        view.addLoginListener(new LoginListener() {
            @Override
            public void loginPerformed(LoginEvent event) {
                view.setCursor(new Cursor(Cursor.WAIT_CURSOR));
                String username = view.getUsername();
                String password = view.getPassword();
                Object[] isLoggedIn = userService.authenticateUser(username, password);
                if (isLoggedIn != null) {
                    view.removePasswordField();

                    MainView main = new MainView();

                    String nameE = (String) isLoggedIn[0];
                    String positionE = (String) isLoggedIn[1];
                    main.getPanelLeft().setInfoEmployee(nameE, positionE);
                    main.showGUI();

                    view.setStatus("");
                    view.dispose();

                    main.getPanelLeft().getLogOut().addMouseListener(new MouseAdapter() {
                        @Override
                        public void mouseClicked(MouseEvent e) {
                            super.mouseClicked(e);
                            int response = JOptionPane.showConfirmDialog(null, "Bạn có muốn đăng xuất không?", "Xác nhận đăng xuất", JOptionPane.YES_NO_OPTION);
                            if (response == JOptionPane.YES_OPTION) {
                                main.dispose();
                                view.setVisible(true);
                            }
//                                else {
//                                    // Không thực hiện đăng xuất
//                                }

                        }
                    });

                } else {
                    view.setStatus("Tên đăng nhập hoặc mật khẩu không đúng");
                }
                view.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
            }
        });
    }
}