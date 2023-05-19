package controller;

import model.ARoomModel;
import model.BookedRoomModel;
import model.RoomBookingFormModel;
import service.ARoomService;
import service.BookedRoomService;
import service.EmptyRoomInformationService;
import view.ARoomView;
import view.BookedRoomView;
import view.EmptyRoomView;
import view.GuestRoomView;

public class BookedRoomController  extends AManagerRoomController{

    public BookedRoomController(ARoomModel aRoomModel, ARoomService aRoomService, ARoomView aRoomView) {
        super(aRoomModel, aRoomService, aRoomView);

    }

    @Override
    public void construcFirst() {

    }

    @Override
    public void loadDataInfoRoom() {
        BookedRoomService bookedRoomService = (BookedRoomService) super.aRoomService;
        for (RoomBookingFormModel roomBookingFormModel : bookedRoomService.getInforBookedRooms()) {
            ((BookedRoomView) this.aRoomView).setDataGuestRoomInformation(roomBookingFormModel);
        }


    }

    @Override
    public void setActionSaveForm() {

    }
}
