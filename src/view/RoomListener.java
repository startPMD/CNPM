package view;

import test.LoginEvent;

import java.awt.event.MouseListener;
import java.util.EventListener;
import java.util.EventObject;

public interface RoomListener extends EventListener {
    void btnRefreshPerformed(RoomEvent event);
}
