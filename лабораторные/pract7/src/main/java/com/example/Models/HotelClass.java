package com.example.Models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "hotel_class")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class HotelClass {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "hotel_class")
    private String hotel_class;
    @OneToMany(mappedBy = "hotelClass")
    private List<Hotel> hotelList;
}
