package com.parkQwik.Dao;

import org.springframework.data.repository.CrudRepository;

import com.parkQwik.model.ParkingEntity;

public interface ParkingEntityRepository extends CrudRepository<ParkingEntity, Integer>{

}
