package controller;

import model.AccountAndEmployeeModel;
import service.ManagerEmployeeService;
import view.ButtonListener;
import view.PanelManagerEmployee;
import view.RoomEvent;

import javax.swing.*;

public class ManagerEmployeeController {
    private PanelManagerEmployee panelManagerEmployee;
    private ManagerEmployeeService managerEmployeeServicel;

    public ManagerEmployeeController(PanelManagerEmployee panelManagerEmployee, ManagerEmployeeService managerEmployeeServicel) {
        this.panelManagerEmployee = panelManagerEmployee;
        this.managerEmployeeServicel = managerEmployeeServicel;
        loadDataEmployeeToTable();
        this.panelManagerEmployee.addButtonListener(new ButtonListener() {
            @Override
            public void buttonPerformed(RoomEvent roomEvent) {
                switch (roomEvent.getNameBtn()){
                    case "editButton":{

                        break;
                    }
                    case "deleteButton":{
                        // xóa account và thông tin nhân viên
                        for (AccountAndEmployeeModel e: panelManagerEmployee.getCustomerSelected()) {
                            boolean delSuccess = managerEmployeeServicel.delEmployeeSelected(e);
                            if(!delSuccess){
                                JOptionPane.showMessageDialog(null,"Thao tác thực hiện không thành công!");
                                return;
                            }
                        }
                            JOptionPane.showMessageDialog(null,"Thông tin nhân viên đã được xóa!");
                        break;
                    }
                    case "saveEmployeeButton":{
                       AccountAndEmployeeModel employeeRegis =  panelManagerEmployee.getUserForm().getInfoEmployeeRegis();
                       if(employeeRegis == null){
                           JOptionPane.showMessageDialog(null,"Vui lòng nhập đầy đủ thông tin !");
                           return;
                       }
                       boolean success =  managerEmployeeServicel.insertAccountAndEmployee(employeeRegis);
                        if(success) {
                            panelManagerEmployee.offFormCusRegis();
                            JOptionPane.showMessageDialog(null, "Thông tin đã được lưu");
                            return;
                        }
                        else JOptionPane.showMessageDialog(null, "Thông tin không được lưu thành công");
                        break;
                    }
                }
            }
        });
    }

    private void loadDataEmployeeToTable() {
        for (AccountAndEmployeeModel ae:managerEmployeeServicel.getListEmployee()){
            panelManagerEmployee.setDataEmployeeTable(ae);
        }
    }

    public static void main(String[] args) {
        PanelManagerEmployee employeePanel = new PanelManagerEmployee();
        JFrame frame = new JFrame("Test");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.getContentPane().add(employeePanel);
        frame.pack();
        frame.setVisible(true);
        ManagerEmployeeService managerEmployeeService = new ManagerEmployeeService();
        ManagerEmployeeController managerEmployeeController = new ManagerEmployeeController(employeePanel, managerEmployeeService);

    }
}
