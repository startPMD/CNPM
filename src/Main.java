import controller.*;
import service.*;
import view.*;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

public class Main   {
    public static void main(String[] args) throws AWTException {
        // Lấy kích thước của màn hình
        Robot robot = new Robot();
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
//<---------PANEL ROOM--------------------->
        TabbebPaneRoomView tabbebPaneRoomView = new TabbebPaneRoomView();

        RoomAllLayoutView roomAllLayoutView = new RoomAllLayoutView();
        ARoomView emptyRoomView = new EmptyRoomView();
        ARoomView guestRoomView = new GuestRoomView();
        ARoomView bookedRoomView = new BookedRoomView();
        tabbebPaneRoomView.addTabeb(roomAllLayoutView.getName(),roomAllLayoutView,false);
        tabbebPaneRoomView.addTabeb(emptyRoomView.getName(),emptyRoomView,true);
        tabbebPaneRoomView.addTabeb(guestRoomView.getName(),guestRoomView,true);
        tabbebPaneRoomView.addTabeb(bookedRoomView.getName(),bookedRoomView,true);

        ARoomService layoutRoomService = new LayoutRoomService();
        ARoomService emptyRoomService = new EmptyRoomService();
        ARoomService guestRoomService = new GuestRoomService();
        ARoomService bookedRoomService = new BookedRoomService();

        AManagerRoomController roomAllLayoutController = new RoomAllLayoutController(null,layoutRoomService,roomAllLayoutView);
        AManagerRoomController emptyRoomController = new EmptyRoomController(null,emptyRoomService, emptyRoomView);
        AManagerRoomController guestRoomController = new GuestRoomController(null,guestRoomService,guestRoomView);
        AManagerRoomController bookedRoomController = new BookedRoomController(null,bookedRoomService,bookedRoomView);
//<---------PANEL SERVICE--------------------->
        PanelManagerServiceView panelManagerServiceView = new PanelManagerServiceView();
        ServiceRoomService service = new ServiceRoomService();
        ServiceController serviceController = new ServiceController(panelManagerServiceView, service);



        PanelRightView panelRight = new PanelRightView();
        panelRight.setTabbebPaneRoomView(tabbebPaneRoomView);
        panelRight.setPanelManagerServiceView(panelManagerServiceView);

        PanelLeftView panelLeft = new PanelLeftView(panelRight);


        // refresh
        List<ARoomView> aRoomViews = new ArrayList<>();
        aRoomViews.add(emptyRoomView);aRoomViews.add(guestRoomView);aRoomViews.add(bookedRoomView);

        List<AManagerRoomController> aManagerRoomControllers = new ArrayList<>();
        aManagerRoomControllers.add(roomAllLayoutController);
        aManagerRoomControllers.add(emptyRoomController);
        aManagerRoomControllers.add(guestRoomController);
        aManagerRoomControllers.add(bookedRoomController);

        RefreshController refreshController = new RefreshController(panelLeft,emptyRoomService,aRoomViews,aManagerRoomControllers);
        //----
        MainView mainView = new MainView(panelLeft,panelRight);
        mainView.setSize(1245,640);
        mainView.setVisible(true);
    }
}