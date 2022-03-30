package com.example.Repositories;

import com.example.Models.Events;
import org.springframework.data.repository.CrudRepository;

public interface EventsRepo extends CrudRepository<Events, Long> {
}
