package org.example.POJO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="airclass")
public class Airclass {

    @Id
    @Column(name="IDairClass")
    private int ID;

    @Column(name="name")
    private String name;

    public Airclass() {
    }

    public Airclass(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Airclass{" +
                "ID=" + ID +
                ", name='" + name + '\'' +
                '}';
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
