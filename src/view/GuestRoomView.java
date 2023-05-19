package view;

import model.RoomBookingFormModel;
import model.ServiceRoomModel;

import java.util.List;
import java.util.Map;

public class GuestRoomView extends ARoomView{

    public GuestRoomView() {
        super();
    }

    @Override
    public String getName() {
        return  "Phòng có khách";
    }

    @Override
    public ARoomView getObjectRoomView() {
        return this;
    }

    public void setDataGuestRoomInformation(RoomBookingFormModel roomBookingFormView) {
        System.out.println(roomBookingFormView.toString());
        for (ImageRoomView imageRoomView : super.getImageRoomViews()) {
            InfoCusBookedFormView infoCusBookedFormView = new InfoCusBookedFormView();
            infoCusBookedFormView.setEmptyRoomInformationModel(roomBookingFormView);
            if (imageRoomView.hasRoomCode(roomBookingFormView.getRoomCodeEmptyRoomInformationModel())) {
                imageRoomView.setIdRoomImg(roomBookingFormView.getEmptyRoomInformationModel().getId());
                imageRoomView.setInfoCusBookedFormView(infoCusBookedFormView);
            }
        }
    }
    public void setDateServiceCus(int idRoom,List<ServiceRoomModel> serviceCus){
        double totalPrice = 0;
        for (ImageRoomView imageRoomView : super.getImageRoomViews()) {
            if(imageRoomView.getIdRoomImg() == idRoom){
                InfoCusBookedFormView infoCusBookedFormView = imageRoomView.getInfoCusBookedFormView();
                for (ServiceRoomModel service:serviceCus) {
                    totalPrice += service.getTotalPrice();
                    infoCusBookedFormView.setDataService(service);
                }
                infoCusBookedFormView.setTotalPrice(totalPrice);
            }


        }
    }
}
