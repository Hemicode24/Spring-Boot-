package com.hotel.Dao;

import org.springframework.data.repository.CrudRepository;
import com.hotel.model.CustomerEntity;


public interface CustomerEntityRepository extends CrudRepository<CustomerEntity, Integer>{

}
