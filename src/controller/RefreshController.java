package controller;

import service.ARoomService;
import service.EmptyRoomService;
import view.*;

import java.util.List;

public class RefreshController {
    public RefreshController(PanelLeftView panelLeftView, ARoomService aRoomService, List<ARoomView> aRoomViews,List<AManagerRoomController> aManagerRoomControllers){

        panelLeftView.addButtonRefreshFormListener(new RoomListener() {
            @Override
            public void btnRefreshPerformed(RoomEvent event) {
                // cập nhật lại những phòng  hết thời gian đăng kí
                // cập nhật lại  cả các phòng hết hạn đăng kí
                aRoomService.updateStatestRoom();
                aRoomService.updateVacantRoom();
                // ve lai cac view phong
                for (ARoomView aRoomView:aRoomViews) {
                    aRoomView.removeAll(); //xóa đi view cũ
                }
                for (AManagerRoomController aManagerRoomController:aManagerRoomControllers) {
                    if(!(aManagerRoomController instanceof RoomAllLayoutController))
                             aManagerRoomController.creatAgainRooms();
                    else
                        ((RoomAllLayoutController)aManagerRoomController).loadStateRoom();
                }

            }
        });
    }


}
