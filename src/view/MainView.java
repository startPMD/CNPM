package view;
import javax.swing.*;
import java.awt.*;


public class MainView extends JFrame {
    private static final long serialVersionUID = 1L;
    PanelLeftView panelLeft;
    PanelRightView panelRight;

    public MainView(PanelLeftView panelLeft, PanelRightView panelRight) {
        super("Main View");
        setLayout(new BorderLayout());
        this.panelLeft = panelLeft;
        this.panelRight = panelRight;

        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        this.add(this.panelLeft, BorderLayout.WEST);
        this.add(this.panelRight, BorderLayout.CENTER);

    }

}