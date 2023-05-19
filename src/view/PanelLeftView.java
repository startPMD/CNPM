package view;

import javax.swing.*;
import javax.swing.border.EmptyBorder;
import javax.swing.event.EventListenerList;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class PanelLeftView extends JPanel {
    private JButton btnRefresh;
    private JLabel jlRoomManager,jlServiceManager,jlPayManager,jlEmployeeManager;
    private JPanel  panelLogo ,panelFuncName;
    private final String BACKGROUND_COLOR = "#5690E8";
    private PanelRightView panelRightView;
    public PanelLeftView(PanelRightView panelRightView) {
        this.panelRightView = panelRightView;

        setLayout(new BorderLayout());
        panelLogo = new JPanel(new BorderLayout());
        createLogoHotel();
        this.add(panelLogo,BorderLayout.NORTH);


        panelFuncName = new JPanel();
        panelFuncName.setLayout(new BoxLayout(panelFuncName,BoxLayout.Y_AXIS));
        panelFuncName.setBackground(Color.decode(BACKGROUND_COLOR));
        panelFuncName.setBorder(new EmptyBorder(-5,-5,-5,-5));

        panelFuncName.add(jlRoomManager=createFuncName(    "Quản lý phòng     "));
        panelFuncName.add(jlServiceManager=createFuncName( "Quản lý dịch vụ   "));
        panelFuncName.add(jlPayManager=createFuncName(     "Quản lý thanh toán"));
        panelFuncName.add(jlEmployeeManager=createFuncName("Quản lý nhân viên "));

        jlRoomManager.setBackground(Color.WHITE);
        jlRoomManager.setOpaque(true);

        jlRoomManager.setName("QLP");
        jlServiceManager.setName("QLDV");
        jlPayManager.setName("QLTT");
        jlEmployeeManager.setName("QLNV");


        // Đăng ký sự kiện cho funcName
        for (int i = 0; i <panelFuncName.getComponentCount() ; i++) {
            JLabel funcNmae = (JLabel) panelFuncName.getComponent(i);
            ((JLabel) panelFuncName.getComponent(i)).addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e) {
                    setBackgroundFuncName(funcNmae);
                    panelRightView.visiblePanelFunc(funcNmae.getName());

                }
            });
        }

        this.add(panelFuncName,BorderLayout.CENTER);

        this.btnRefresh = new JButton("Refresh");
        this.btnRefresh.addActionListener(e -> {buttonRefreshFormEvent();});
        this.add(btnRefresh,BorderLayout.SOUTH);

    }
    private void createLogoHotel() {
// Tạo hình ảnh và đặt vào phía trên của panel
        ImageIcon imgLogo = new ImageIcon("img\\logo.png");
        JLabel imageLabel = new JLabel(imgLogo);
        panelLogo.add(imageLabel, BorderLayout.NORTH);

// Tạo tên ảnh và đặt vào phía dưới của panel
        JLabel nameLogo = new JLabel("Mozila Hotel");
        nameLogo.setBorder(new EmptyBorder(0,getWidth()/2-(imgLogo.getIconWidth()/2),0,0));

        panelLogo.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createMatteBorder(0, 0, 1, 0,Color.GRAY)
                ,new EmptyBorder(10,0,0,0)));
        panelLogo.add(nameLogo, BorderLayout.CENTER);

    }
    public JLabel createFuncName(String funcName){
        JLabel txtFunc = new JLabel(funcName);
        txtFunc.setCursor(new Cursor(Cursor.HAND_CURSOR));
        txtFunc.setBorder(new EmptyBorder(5,10,5,80));
        txtFunc.setFont(new Font("Serif", Font.ROMAN_BASELINE, 19));
        return txtFunc;
    }
    public void setBackgroundFuncName(JLabel txtFunc){
        jlRoomManager.setBackground(Color.decode(BACKGROUND_COLOR));
        jlServiceManager.setBackground(Color.decode(BACKGROUND_COLOR));
        jlPayManager.setBackground(Color.decode(BACKGROUND_COLOR));
        jlEmployeeManager.setBackground(Color.decode(BACKGROUND_COLOR));

        txtFunc.setBackground(Color.WHITE);
        txtFunc.setOpaque(true);
    }
    public JButton getBtnRefresh(){
        return this.btnRefresh;
    }
    private EventListenerList listenerList = new EventListenerList();

    public void addButtonRefreshFormListener(RoomListener listener) {
        listenerList.add(RoomListener.class, listener);
    }
    private void buttonRefreshFormEvent() {
        RoomListener[] listeners = listenerList.getListeners(RoomListener.class);
        for (RoomListener listener : listeners) {
            listener.btnRefreshPerformed(new RoomEvent(this));
        }
    }
}
