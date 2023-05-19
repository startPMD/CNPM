package view;

import model.RoomBookingFormModel;
import model.ServiceRoomModel;

import javax.swing.*;
import javax.swing.event.EventListenerList;
import javax.swing.table.*;
import java.awt.*;

public class InfoCusBookedFormView extends JFrame {
    // ... các thành phần khác của form
    private JPanel panel;
    private JLabel lblGuestRoom, lblNumPhone, lblIdNumber, lblStayDuration, lblStatesPayment, lblPriceRoom;
    private JLabel lblTypeRoom, lblNumRoom, lblCheckInTime, lblBookedTime, lblEndDate;
    private DefaultTableModel modelService;
    private JButton btnCheckOut_Print, btnChangeRoom, btnCheckOut;

    public InfoCusBookedFormView() {
        super("Thông tin khách hàng đặt phòng");
        panel = new JPanel();
        panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
        createC1();
        createC2();
        createC3();

        JPanel panelBtn = new JPanel();
        btnChangeRoom = new JButton("Đổi phòng");
        btnCheckOut = new JButton("Trả phòng");
        btnCheckOut_Print = new JButton("Trả phòng và In");


        btnChangeRoom.setCursor(new Cursor(Cursor.HAND_CURSOR));
        btnCheckOut_Print.setCursor(new Cursor(Cursor.HAND_CURSOR));
        btnCheckOut.setCursor(new Cursor(Cursor.HAND_CURSOR));


        btnChangeRoom.addActionListener(e -> buttonEvent("btnChangeRoom"));
        btnCheckOut.addActionListener(e -> buttonEvent("btnCheckOut"));
        btnCheckOut_Print.addActionListener(e -> buttonEvent("btnCheckOut_Print"));

        panelBtn.add(btnChangeRoom);
        panelBtn.add(btnCheckOut);
        panelBtn.add(btnCheckOut_Print);


        panel.add(panelBtn);

        add(panel);
    }

    public String getIdNumber() {
        return lblIdNumber.getText();
    }

    public String getBookedTime() {
        return lblBookedTime.getText();
    }

    private void createC1() {
        JPanel infoPanel = new JPanel(new GridLayout(0, 2, 5, 5));
        infoPanel.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5),
                BorderFactory.createTitledBorder("Thông tin khách hàng")));

        JLabel nguoiDatPhongLabel = new JLabel("Người đặt phòng:");
        JLabel soDienThoaiLabel = new JLabel("Số điện thoại:");
        JLabel soChungMinhLabel = new JLabel("Số chứng minh:");

        lblGuestRoom = new JLabel();
        lblNumPhone = new JLabel();
        lblIdNumber = new JLabel();
        lblStayDuration = new JLabel();
        lblStatesPayment = new JLabel();
        lblPriceRoom = new JLabel();
        lblTypeRoom = new JLabel();
        lblNumRoom = new JLabel();
        lblCheckInTime = new JLabel();
        lblBookedTime = new JLabel();
        lblEndDate = new JLabel();

        infoPanel.add(nguoiDatPhongLabel);
        infoPanel.add(lblGuestRoom);
        infoPanel.add(soChungMinhLabel);
        infoPanel.add(lblIdNumber);
        infoPanel.add(soDienThoaiLabel);
        infoPanel.add(lblNumPhone);
        panel.add(infoPanel);
    }

    private void createC2() {
        // Component 2: Thông tin phòng
        JLabel thoiGianOLabel = new JLabel("Thời gian ở:");
        JLabel trangThaiThanhToanLabel = new JLabel("Trạng thái thanh toán:");
        JLabel giaPhongLabel = new JLabel("Tổng giá phòng:");
        JLabel loaiPhongLabel = new JLabel("Loại phòng:");
        JLabel soPhongLabel = new JLabel("Số phòng:");
        JLabel thoiGianNhanPhongLabel = new JLabel("Thời gian nhận phòng:");
        JLabel thoiGianDatPhongLabel = new JLabel("Thời gian đặt phòng:");
        JLabel thoiGianHetHanDatPhongLabel = new JLabel("Thời gian hết hạn đặt phòng:");

        JPanel infoRoomPanel = new JPanel(new GridLayout(0, 4, 5, 5));
        infoRoomPanel.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5),
                BorderFactory.createTitledBorder("Thông tin phòng")));
        infoRoomPanel.add(loaiPhongLabel);
        infoRoomPanel.add(lblTypeRoom);
        infoRoomPanel.add(thoiGianDatPhongLabel);
        infoRoomPanel.add(lblBookedTime);
        infoRoomPanel.add(soPhongLabel);
        infoRoomPanel.add(lblNumRoom);
        infoRoomPanel.add(thoiGianNhanPhongLabel);
        infoRoomPanel.add(lblCheckInTime);
        infoRoomPanel.add(giaPhongLabel);
        infoRoomPanel.add(lblPriceRoom);
        infoRoomPanel.add(thoiGianOLabel);
        infoRoomPanel.add(lblStayDuration);
        infoRoomPanel.add(trangThaiThanhToanLabel);
        infoRoomPanel.add(lblStatesPayment);
        infoRoomPanel.add(thoiGianHetHanDatPhongLabel);
        infoRoomPanel.add(lblEndDate);
        panel.add(infoRoomPanel);
    }

    private void createC3() {
        // Component 3: Các dịch vụ đã yêu cầu
        JPanel servicePanel = new JPanel(new BorderLayout());
        servicePanel.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5),
                BorderFactory.createTitledBorder("Các dịch vụ đã yêu cầu")));

        String[] columnNames = {"Tên dịch vụ", "Ngày yêu cầu dịch vụ", "Giá dịch vụ", "Số lượng", "Thành tiền"};
        modelService = new DefaultTableModel(columnNames, 0);

        JTable serviceTable = new JTable(modelService);

        TableColumnModel columnModel = serviceTable.getColumnModel();
        DefaultTableCellRenderer renderRight = new DefaultTableCellRenderer();
        { // initializer block
            renderRight.setHorizontalAlignment(SwingConstants.RIGHT);
        }
        // align data col
        TableColumn colDateService = columnModel.getColumn(1);
        TableColumn colPriceService = columnModel.getColumn(2);
        TableColumn colQuantityService = columnModel.getColumn(3);
        TableColumn colTotalPriceService = columnModel.getColumn(4);
        colDateService.setCellRenderer(renderRight);
        colPriceService.setCellRenderer(renderRight);
        colQuantityService.setCellRenderer(renderRight);
        colTotalPriceService.setCellRenderer(renderRight);
        serviceTable.setEnabled(false);

        JScrollPane scrollPane = new JScrollPane(serviceTable);
        scrollPane.setPreferredSize(new Dimension(300, 200));
        servicePanel.add(scrollPane, BorderLayout.CENTER);
        panel.add(servicePanel);
    }

    public void setDataService(ServiceRoomModel serviceRoomModel) {
        this.modelService.addRow(new Object[]
                {" " + serviceRoomModel.getName(), serviceRoomModel.getDateAt() + " ", serviceRoomModel.getPrice() + " "
                        , serviceRoomModel.getQuantityService() + " ", serviceRoomModel.getTotalPrice() + " "});

    }
    public void setTotalPrice(double totalPrice){
        this.modelService.addRow(new Object[]{"","","","",totalPrice+" "});
    }
    public void setTxtGuestRoom(String nameGuestRoom) {
        this.lblGuestRoom.setText(nameGuestRoom);
    }

    public void setTxtNumPhone(String numPhone) {
        this.lblNumPhone.setText(numPhone);
    }

    public void setTxtIdNumber(String idNumber) {
        this.lblIdNumber.setText(idNumber);
    }

    public void setTxtPriceRoom(String totalPrice) {
        this.lblPriceRoom.setText(totalPrice);
    }

    public void setTxtStayDuration(String stayDuration) {
        this.lblStayDuration.setText(stayDuration);
    }

    public void setTxtStatesPayment(String statesPayment) {
        this.lblStatesPayment.setText(statesPayment);
    }

    public void setTxtTypeRoom(String typeRoom) {
        this.lblTypeRoom.setText(typeRoom);
    }

    public void setTxtNumRoom(String numRoom) {
        this.lblNumRoom.setText(numRoom);
    }

    public void setTxtCheckInTime(String checkInTime) {
        this.lblCheckInTime.setText(checkInTime);
    }

    public void setTxtBookedTime(String bookedTime) {
        this.lblBookedTime.setText(bookedTime);
    }

    public void setTxtEndDate(String endDate) {
        this.lblEndDate.setText(endDate);
    }

    private EventListenerList listenerList = new EventListenerList();

    public void addButtonListener(ButtonListener listener) {
        listenerList.add(ButtonListener.class, listener);
    }

    protected void buttonEvent(String name) {
        ButtonListener[] listeners = listenerList.getListeners(ButtonListener.class);
        for (ButtonListener listener : listeners) {
            listener.buttonPerformed(new RoomEvent(this, name));
        }
    }


   public void setEmptyRoomInformationModel(RoomBookingFormModel roomBookingFormView) {
        // C1
        setTxtGuestRoom(roomBookingFormView.getCustomerModel().getName());
        setTxtIdNumber(roomBookingFormView.getCustomerModel().getIdNumber());
        setTxtNumPhone(roomBookingFormView.getCustomerModel().getPhone());
        //C2
        setTxtTypeRoom(roomBookingFormView.getEmptyRoomInformationModel().getRoomType());
        setTxtNumRoom(roomBookingFormView.getEmptyRoomInformationModel().getRoomCode() + "");
        setTxtPriceRoom(roomBookingFormView.getEmptyRoomInformationModel().getRoomPrice() + "");
        setTxtStatesPayment(roomBookingFormView.getInforBookedRoomModel().getPaymentStatus());
        setTxtBookedTime(roomBookingFormView.getInforBookedRoomModel().getStartDate() + "");
        setTxtCheckInTime(roomBookingFormView.getInforBookedRoomModel().getCheckInTime() + "");
        setTxtStayDuration(roomBookingFormView.getInforBookedRoomModel().getStayDuration());
        setTxtEndDate(roomBookingFormView.getInforBookedRoomModel().getEndDate() + " VND");
        //C3
    }

    public void showDetail() {
        this.pack();
        this.setLocationRelativeTo(null);
        this.setVisible(true);
    }

    public void offDetail() {
        this.setVisible(false);
    }

    public static void main(String[] args) {
        new InfoCusBookedFormView().showDetail();
    }
}