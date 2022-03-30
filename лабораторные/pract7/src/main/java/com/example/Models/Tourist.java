package com.example.Models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "tourist")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tourist{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id")
    private long id;
    @Column(name = "tourist_passport_number")
    private long touristPassportNumber;
    @Column(name = "full_name")
    private String fullName;
    @Column(name = "tourist_age")
    private int touristAge;
    @Column(name = "address")
    private String address;
    @OneToOne(mappedBy = "tourist")
    private TravelPackage travelPackage;
}
