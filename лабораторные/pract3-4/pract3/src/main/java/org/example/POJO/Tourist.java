package org.example.POJO;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tourist")
public class Tourist {

    @Id
    @Column(name="passportID")
    private int passportID;

    @Column(name="age")
    private int age;

    @Column(name="touristFullName")
    private String touristFullName;

    @Column(name="address")
    private String address;

    public Tourist() {
    }

    public Tourist(int age, String touristFullName, String address) {
        this.age = age;
        this.touristFullName = touristFullName;
        this.address = address;
    }

    public int getPassportID() {
        return passportID;
    }

    public void setPassportID(int passportID) {
        this.passportID = passportID;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getTouristFullName() {
        return touristFullName;
    }

    public void setTouristFullName(String touristFullName) {
        this.touristFullName = touristFullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Tourist{" +
                "passportID=" + passportID +
                ", age=" + age +
                ", touristFullName='" + touristFullName + '\'' +
                ", address='" + address + '\'' +
                '}';
    }


}
