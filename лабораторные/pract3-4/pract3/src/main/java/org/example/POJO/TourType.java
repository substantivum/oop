package org.example.POJO;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tourtype")
public class TourType {

    @Id
    @Column(name="TourType")
    private String TourType;
    public TourType() {

    }

    public TourType(String tourType) {
        this.TourType = tourType;

    }

    public String getTourType() {
        return TourType;
    }

    public void setTourType(String tourType) {
        TourType = tourType;
    }
    @Override
    public String toString() {
        return "TourType{" +
                "TourType='" + TourType + '\'' +
                '}';
    }
}



