package com.example.hotelmanagementsystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.hotelmanagementsystem.entity.Hotel;

public interface HotelRepository extends JpaRepository<Hotel, Integer> {
	//no need to write any code 
	//jpaRepository-- give-- implementation and( findAll()/findByID()/save()/deleteById())--curd 

}
 