package test;

import javax.swing.*;
import javax.swing.event.EventListenerList;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class LoginView extends JFrame {
    private JTextField usernameField;
    private JPasswordField passwordField;
    private JButton loginButton;
    private JLabel statusLabel;

    public LoginView() {
        setTitle("Đăng nhập");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Tạo các thành phần UI
        JPanel panel = new JPanel(new GridLayout(3, 2));
        panel.add(new JLabel("Tên đăng nhập:"));
        usernameField = new JTextField();
        panel.add(usernameField);
        panel.add(new JLabel("Mật khẩu:"));
        passwordField = new JPasswordField();
        panel.add(passwordField);
        loginButton = new JButton("Đăng nhập");
        panel.add(loginButton);
        statusLabel = new JLabel();
        panel.add(statusLabel);
        add(panel);

        // Đăng ký sự kiện cho nút đăng nhập
        loginButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                fireLoginEvent();
            }
        });

        pack();
        setLocationRelativeTo(null);
        setVisible(true);
    }

    public String getUsername() {
        return usernameField.getText();
    }

    public String getPassword() {
        return new String(passwordField.getPassword());
    }

    public void setStatus(String status) {
        statusLabel.setText(status);
    }

    public void addLoginListener(LoginListener listener) {
        listenerList.add(LoginListener.class, listener);
    }

    public void removeLoginListener(LoginListener listener) {
        listenerList.remove(LoginListener.class, listener);
    }

    protected void fireLoginEvent() {
        LoginListener[] listeners = listenerList.getListeners(LoginListener.class);
        for (LoginListener listener : listeners) {
            listener.loginPerformed(new LoginEvent(this));
        }
    }

    private EventListenerList listenerList = new EventListenerList();
}
