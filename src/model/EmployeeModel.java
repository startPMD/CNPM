package model;

public class EmployeeModel {
    private int id;
    private String name;
    private String gender;
    private String email;
    private String numberPhone;
    private String address;
    private String position;
    public EmployeeModel() {
    }
    public EmployeeModel(int id,String name,String gender ,String email, String numberPhone, String address,String position) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.email = email;
        this.numberPhone = numberPhone;
        this.address = address;
        this.position = position;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
         this.gender  = gender;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Override
    public String toString() {
        return "EmployeeModel{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", numberPhone='" + numberPhone + '\'' +
                ", address='" + address + '\'' +
                ", position='" + position + '\'' +
                '}';
    }


}
