package view;

import javax.swing.*;
import java.awt.*;

public class PanelRightView extends JPanel {
    private TabbebPaneRoomView tabbebPaneRoomView;
    private PanelManagerServiceView panelManagerServiceView;
    JPanel  p3, p4;
    private CardLayout cardLayout;
    public PanelRightView() {
        this.setLayout(cardLayout = new CardLayout());
        setBackground(Color.orange);

        p3 = new JPanel();
        p4 = new JPanel();


        p3.setBackground(Color.GREEN);
        p4.setBackground(Color.pink);

        this.add(p3,"p3");
        this.add(p4,"p4");

    }

    public void setTabbebPaneRoomView(TabbebPaneRoomView tabbebPaneRoomView) {
        this.tabbebPaneRoomView = tabbebPaneRoomView;
        this.add(this.tabbebPaneRoomView,this.tabbebPaneRoomView.getName());
        cardLayout.show(this,this.tabbebPaneRoomView.getName());
    }
    public void setPanelManagerServiceView(PanelManagerServiceView panelManagerServiceView) {
        this.panelManagerServiceView = panelManagerServiceView;
        this.panelManagerServiceView.setVisible(false);
        this.add(this.panelManagerServiceView,this.panelManagerServiceView.getName());
    }
    public void visiblePanelFunc(String nameFunc) {
        switch (nameFunc) {
            case "QLP": {
                setVisibleFunc(tabbebPaneRoomView);
                break;
            }
            case "QLDV": {
                setVisibleFunc(panelManagerServiceView);
                break;
            }
            case "QLTT": {
                p3.setBounds(0,0,800,600);
                setVisibleFunc(p3);
                break;
            }
            case "QLNV": {
                p4.setBounds(0,0,800,600);
                setVisibleFunc(p4);
                break;
            }

        }
    }
    private void setVisibleFunc(JPanel panelFunc) {
        cardLayout.show(this,panelFunc.getName());
    }
    public TabbebPaneRoomView getTabbebPaneRoomView() {
        return tabbebPaneRoomView;
    }
}
