package com.hotel.dao;
import org.springframework.data.repository.CrudRepository;

import com.hotel.model.User;

public interface UserDao extends CrudRepository<User,Integer> {

}
