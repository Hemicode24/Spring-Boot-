package com.example.hotelmanagementsystem.service;

import java.util.List;

import com.example.hotelmanagementsystem.entity.Hotel;

public interface HotelService {
	
	public List<Hotel> findAll();
	
	public Hotel findById(int theId) throws Exception;
	
	public void save (Hotel theHotel);
	
	public String deleteById(int theId) throws Exception;
	
}
