package com.hotel.Dao;

import org.springframework.data.repository.CrudRepository;
import com.hotel.model.RoomEntity;


public interface RoomEntityRepository extends CrudRepository<RoomEntity, Integer> {

}
