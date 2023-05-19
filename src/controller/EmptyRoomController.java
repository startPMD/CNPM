package controller;

import model.*;
import service.*;
import view.*;

import javax.swing.*;
import java.sql.Date;

public class EmptyRoomController extends AManagerRoomController {

    EmptyRoomInformationService emptyRoomInformationService;
    public EmptyRoomController(ARoomModel aRoomModel, ARoomService aRoomService, ARoomView aRoomView) {
        super(aRoomModel, aRoomService, aRoomView);
    }
    @Override
    public void construcFirst() {

    }

    @Override
    public void loadDataInfoRoom() {
        System.out.println("EmptyRoomController");
        EmptyRoomInformationService emptyRoomInformationService = EmptyRoomInformationService.getInstanceEmptyRoomInformationService();
        for (RoomBookingFormModel.EmptyRoomInformationModel emptyRoomInformationModel : emptyRoomInformationService.getInforRoomModels()) {
            ((EmptyRoomView) this.aRoomView).setDataEmptyRoomInformation(emptyRoomInformationModel);
        }
    }

    @Override
    public void setActionSaveForm() {
        for (ImageRoomView imageRoomView : this.aRoomView.getImageRoomViews()) {
            RoomBookingFormView roomBookingFormView = imageRoomView.getRoomBookingForm();
            roomBookingFormView.addButtonSaveInfroCustomerListener(new ButtonListener() {
                @Override
                public void buttonPerformed(RoomEvent roomEvent) {

                    if (roomBookingFormView.hasEmptyValue()){
                        JOptionPane.showMessageDialog(null, "Các trường thông tin: "+ roomBookingFormView.getTxtGuestName()
                                +","+roomBookingFormView.getTxtPhone()+","+roomBookingFormView.getTxtIDNumber()+" là bắt buộc!");
                        return;
                    }

                    EmptyRoomService emptyRoomService = (EmptyRoomService) aRoomService;
                    CustomerService customerService = CustomerService.getInstanceCustomerService();
                    CustomerModel customerModel;
                    String idNumberCus = roomBookingFormView.getInputIDNumber();

                    int idCustomer = customerService.getIdNumberCus(idNumberCus);
                    // khach hang chua ton tai => tao khach hâng moi
                    if (idCustomer == -1) {
                        customerModel = new CustomerModel(-1, roomBookingFormView.getInputGuestName(),
                                roomBookingFormView.getInputPhone(), "null",
                                roomBookingFormView.getInputEmail(), idNumberCus,
                                roomBookingFormView.getSelectedNationality());
                        customerService.insertCustomerNew(customerModel);
                        customerModel.setId(customerService.getIdNumberCus(idNumberCus));
                        // luu khach hang khog thanh cong (luu khach hang moi)
                        if (customerModel.getId() == -1) {
                            JOptionPane.showMessageDialog(null, "Lưu khách hàng thất bại. Vui lòng thử lại sau.");
                            return;
                        }
                    }
                    //khach hang da ton tai
                    else {
                        customerModel = new CustomerModel();
                        customerModel.setId(idCustomer);
                    }
                    // luu lai thong tin khach hang dac phòng
                    RoomBookingFormModel.InforBookedRoomModel inforBookedRoomModel = new RoomBookingFormModel().new InforBookedRoomModel(
                            roomBookingFormView.getInputNumGuest(), roomBookingFormView.getSelectedPaymentStatus());
                    inforBookedRoomModel.setEndDate(roomBookingFormView.getCheckInTime());
                    inforBookedRoomModel.setCheckInTime(roomBookingFormView.getCheckInTime());

                  // luu phong khach hang dat
                    emptyRoomService.saveBookedRoom(customerModel.getId(), imageRoomView.getIdNumRoom(),inforBookedRoomModel);
                  // cap nhat trang thai phong la dat phong
                    // 00:00 khach hag nhan phong luon
                    StatesRoomService statesRoomService = StatesRoomService.getInstanceDatabaseService();
                    int numberRoom = imageRoomView.getNumberRoom();
                    if("null".equalsIgnoreCase(roomBookingFormView.getJtfCheckInTime()) ||"".equalsIgnoreCase(roomBookingFormView.getJtfCheckInTime())){
                        statesRoomService.updateStatesRoom(numberRoom,2);
                    }
                    //khach hangg dat phong
                    else {
                        statesRoomService.updateStatesRoom(numberRoom,3);
                    }
                  // luu lai tien  thanh toan neu khach hang da thuc hien thanh toan
//                   if("Đã thanh toán".equalsIgnoreCase(inforBookedRoomModel.getPaymentStatus())){
//                       int idBookedRoom = emptyRoomService.getIdBookedRoom(customerModel.getId(), imageRoomView.getIdNumRoom(),inforBookedRoomModel.getCheckInTime());
//                       double totalPayPrice = Double.parseDouble(roomBookingFormView.getSelectedStayDuration().substring(0,1))*roomBookingFormView.getPriceRoom();
//                       PaymentModel paymentModel = new PaymentModel(customerModel.getId(),idBookedRoom,totalPayPrice,"null");
//                       emptyRoomService.savePaymentCustomer(paymentModel);
//                   }
                   // tat form sau khi thuc hien xong
                       JOptionPane.showMessageDialog(null, "Thông tin đã được lưu thành công");
                       roomBookingFormView.offDetail();
                }
            });
        }
    }

}
