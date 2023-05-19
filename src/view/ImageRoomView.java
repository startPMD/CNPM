package view;


import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class ImageRoomView extends JPanel {
    private int idRoomImg;
    private final String PATH_IMG = "img\\e.png";
    private JLabel jlNumRoom;
    private RoomBookingFormView roomBookingForm;
    private InfoCusBookedFormView infoCusBookedFormView;

    public ImageRoomView(ARoomView aRoomView) {
        JLabel jlImgLabel = new JLabel();
        jlImgLabel.setCursor(new Cursor(Cursor.HAND_CURSOR));
        jlImgLabel.setIcon(new ImageIcon(new ImageIcon(PATH_IMG).getImage().getScaledInstance(45, 45, Image.SCALE_DEFAULT)));

        jlNumRoom = new JLabel();
        jlNumRoom.setHorizontalAlignment(JLabel.CENTER);

        this.setLayout(new BorderLayout());
        this.add(jlImgLabel, BorderLayout.NORTH);
        this.add(jlNumRoom, BorderLayout.CENTER);

        if (aRoomView instanceof EmptyRoomView)
            this.addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e) {
                    showRoomBookingForm();
                }
            });
        if (aRoomView instanceof GuestRoomView)
            this.addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e) {showInfoCusBookedFormView();
                }
            });
    }

    public int getIdRoomImg() {
        return idRoomImg;
    }

    public void setIdRoomImg(int idRoomImg) {
        this.idRoomImg = idRoomImg;
    }

    public boolean hasRoomCode(int roomCode) {
        return Integer.parseInt(this.jlNumRoom.getText()) == roomCode;
    }

    public void setJlNumberRoom(int numberRoom) {
        this.jlNumRoom.setText(numberRoom + "");
    }

    public int getNumberRoom() {
        return Integer.parseInt(this.jlNumRoom.getText());
    }

    public int getIdNumRoom() {
        return Integer.parseInt(this.jlNumRoom.getName());
    }

    public void setIdNumRoom(int numRoom) {
        this.jlNumRoom.setName(String.valueOf(numRoom));
    }

    public RoomBookingFormView getRoomBookingForm() {
        return this.roomBookingForm;
    }

    public void setRoomBookingForm(RoomBookingFormView roomBookingFormView) {
        this.roomBookingForm = roomBookingFormView;
    }

    public InfoCusBookedFormView getInfoCusBookedFormView() {
        return this.infoCusBookedFormView;
    }

    public void setInfoCusBookedFormView(InfoCusBookedFormView infoCusBookedFormView) {
        this.infoCusBookedFormView = infoCusBookedFormView;
    }

    public void showRoomBookingForm() {
        this.roomBookingForm.showDetail();
    }
    public void showInfoCusBookedFormView() {
        this.infoCusBookedFormView.showDetail();
    }
}
