package test;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableRowSorter;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

public class SearchTableExample extends JFrame implements ActionListener {
    private JTextField searchField;
    private JButton searchButton;
    private JButton clearButton;
    private JTable table;
    private DefaultTableModel model;
    private TableRowSorter<DefaultTableModel> sorter;

    public SearchTableExample() {
        // Tạo một DefaultTableModel với các cột "ID" và "Name"
        model = new DefaultTableModel(new Object[]{"ID", "Name"}, 0);
        // Thêm dữ liệu mẫu vào DefaultTableModel
        model.addRow(new Object[]{1, "Alice"});
        model.addRow(new Object[]{2, "Bob"});
        model.addRow(new Object[]{3, "Charlie"});

        // Tạo một JTable với DefaultTableModel
        table = new JTable(model);

        // Tạo một TableRowSorter để lọc các hàng dữ liệu
        sorter = new TableRowSorter<>(model);
        table.setRowSorter(sorter);

        // Tạo một JTextField cho phép người dùng nhập từ khóa tìm kiếm
        searchField = new JTextField(20);

        // Tạo một JButton để bắt đầu tìm kiếm
        searchButton = new JButton("Search");
        searchButton.addActionListener(this);

        // Tạo một JButton để xóa các thông tin tìm kiếm và khôi phục lại tất cả các hàng dữ liệu
        clearButton = new JButton("Clear");
        clearButton.addActionListener(this);

        // Tạo một JPanel chứa JTextField và JButton
        JPanel searchPanel = new JPanel();
        searchPanel.add(searchField);
        searchPanel.add(searchButton);
        searchPanel.add(clearButton);

        // Thêm JTable và JPanel vào JFrame
        add(new JScrollPane(table));
        add(searchPanel, "South");

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(400, 300);
        setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == searchButton) {
            // Lọc các hàng dữ liệu dựa trên từ khóa tìm kiếm
            String searchText = searchField.getText();
            if (!searchText.isEmpty()) {
                List<RowFilter<Object, Object>> filters = new ArrayList<>();
                filters.add(RowFilter.regexFilter(searchText));
                RowFilter<Object, Object> filter = RowFilter.andFilter(filters);
                sorter.setRowFilter(filter);
            }
        } else if (e.getSource() == clearButton) {
            // Xóa bộ lọc hàng và khôi phục lại tất cả các hàng dữ liệu
            sorter.setRowFilter(null);
            searchField.setText("");
        }
    }

    public static void main(String[] args) {
        new SearchTableExample();
    }
}