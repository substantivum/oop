package com.example.Repositories;

import com.example.Models.AirTicket;
import org.springframework.data.repository.CrudRepository;

public interface AirTicketRepo extends CrudRepository<AirTicket, Long> {
}
