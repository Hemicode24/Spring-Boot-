package com.hotel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hotel.Dao.BookingEntityRepository;
import com.hotel.model.BookingEntity;

@Service
public class BookingService {
	
@Autowired
BookingEntityRepository repository;
public BookingEntity saveDetails(BookingEntity entity) {
	return repository.save(entity);
	}


}
