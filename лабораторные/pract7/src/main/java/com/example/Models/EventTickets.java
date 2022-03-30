package com.example.Models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "event_tickets")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class EventTickets {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Column(name = "place_number")
    private int place_number;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "events_id")
    private Events events;

    @ManyToMany
    @JoinTable(name = "travelPackage_eventTickets",
    joinColumns = @JoinColumn(name = "event_tickets_id"),
    inverseJoinColumns = @JoinColumn(name = "travel_package_id"))
    private List<TravelPackage> travelPackageList;



}
