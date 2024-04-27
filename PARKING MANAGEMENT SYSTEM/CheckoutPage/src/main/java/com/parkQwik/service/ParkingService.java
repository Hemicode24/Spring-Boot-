package com.parkQwik.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.parkQwik.Dao.ParkingEntityRepository;
import com.parkQwik.model.ParkingEntity;
@Service
public class ParkingService {
@Autowired
ParkingEntityRepository repository;
public ParkingEntity saveDetails(ParkingEntity entity) {
	return repository.save(entity);
}

}
