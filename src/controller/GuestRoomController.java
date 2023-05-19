package controller;

import model.ARoomModel;
import model.RoomBookingFormModel;
import model.ServiceRoomModel;
import service.*;
import view.*;

import javax.swing.*;
import java.util.List;
import java.util.Map;

public class GuestRoomController extends AManagerRoomController {
    GuestRoomView guestRoomView;
    GuestRoomService guestRoomService;
    public GuestRoomController(ARoomModel aRoomModel, ARoomService aRoomService, ARoomView aRoomView) {
        super(aRoomModel, aRoomService, aRoomView);
    }

    @Override
    public void construcFirst() {
        guestRoomView = (GuestRoomView) aRoomView;
        guestRoomService= (GuestRoomService) aRoomService;
    }

    @Override
    public void loadDataInfoRoom() {
        System.out.println("GuestRoomService");
        System.out.println("DataGuestRoomInformation_____ ");
        for (RoomBookingFormModel roomBookingFormModel : guestRoomService.getInforBookedRooms()) {
            ((GuestRoomView) this.aRoomView).setDataGuestRoomInformation(roomBookingFormModel);
        }
        loadDateServiceCus();
    }

    public void loadDateServiceCus() {
        ServiceRoomService serviceRoomService = ServiceRoomService.getInstanceServiceRoomService();
        for (Map.Entry<Integer, List<ServiceRoomModel>> services : serviceRoomService.getListServiceCus().entrySet()) {
            int idRoom = services.getKey();
            List<ServiceRoomModel> serviceList = services.getValue();
            ((GuestRoomView) this.aRoomView).setDateServiceCus(idRoom, serviceList);
        }
    }

    @Override
    public void setActionSaveForm() {
        for (ImageRoomView imageRoomView : this.aRoomView.getImageRoomViews()) {
            InfoCusBookedFormView infoCusBookedFormView = imageRoomView.getInfoCusBookedFormView();
            if(infoCusBookedFormView == null)return;
            infoCusBookedFormView.addButtonListener(new ButtonListener() {
                @Override
                public void buttonPerformed(RoomEvent roomEvent) {
                    String nameBtnClick = roomEvent.getNameBtn();
                    switch (nameBtnClick) {
                        case "btnChangeRoom": {

                            break;
                        }
                        case "btnCheckOut": {
                            StatesRoomService statesRoomService = StatesRoomService.getInstanceDatabaseService();
                            // cap nhat lai phong
                            int numberRoom = imageRoomView.getNumberRoom();
                            boolean updateStateSuccess = statesRoomService.updateStatesRoom(numberRoom, 1);
                            // cap nhat lai trang thai phong duoc dat
                            String idNumber = infoCusBookedFormView.getIdNumber();
                            String bookedTime = infoCusBookedFormView.getBookedTime();
                            boolean updateStateBookedSuccess = statesRoomService.updateStateBookedRoom(idNumber,bookedTime);
                            if(updateStateSuccess && updateStateBookedSuccess){
                                int yes = JOptionPane.showConfirmDialog(null,"Bạn có muốn trả phòng hay không?", "Swing Tester", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
                                if(yes == 0){
                                    infoCusBookedFormView.offDetail();
                                }
                            }
                            break;
                        }
                        case "btnCheckOut_Print": {

                            break;
                        }
                    }

                }
            });
        }
    }
}
