package com.aman.spring.mvc.inai.POJO;
import javax.persistence.*;

@Entity
@Table(name="country")
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="country")
    private String country;
}
