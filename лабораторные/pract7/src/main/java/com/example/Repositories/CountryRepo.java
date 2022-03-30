package com.example.Repositories;

import com.example.Models.Contract;
import org.springframework.data.repository.CrudRepository;

public interface CountryRepo extends CrudRepository<Contract, Long> {

}
