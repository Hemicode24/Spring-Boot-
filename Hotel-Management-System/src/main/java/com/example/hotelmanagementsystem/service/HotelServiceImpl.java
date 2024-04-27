package com.example.hotelmanagementsystem.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hotelmanagementsystem.dao.HotelRepository;
import com.example.hotelmanagementsystem.entity.Hotel;

@Service
public class HotelServiceImpl implements HotelService {
	//create an object repository
	//create constructor
	HotelRepository hotelRepository;
	
	@Autowired//injecting HotelRepository dependeny
	public HotelServiceImpl(HotelRepository hotelRepository) {
		super();
		this.hotelRepository = hotelRepository;
	}
	@Override
	public List<Hotel> findAll() {
		return  hotelRepository.findAll();
	}

	@Override
	public Hotel findById(int theId) throws Exception  {
		Optional<Hotel> result = hotelRepository.findById(theId);
		
		Hotel theHotel;
		if(result.isPresent())
		{
			theHotel = result.get();
		}
		else {
			
			throw new Exception("Hotel id not found : "+theId);
		}
	
		return theHotel;
	}

	@Override
	public void save(Hotel theHotel) {
		hotelRepository.save(theHotel);
		
	}

	@Override
	public String deleteById(int theId) throws Exception {
		Hotel hotel = findById(theId);
		if (hotel==null)
		{
			throw new Exception("hotel id not found : "+theId);
		}
		
		hotelRepository.deleteById(theId);
		
		return " Deleted employee id : "+theId;
	}
	
}
//database table(id) ---present--fetch
//return type is optional class
//dao can access in our db  
//u acess  database --we nead dao layer--dao layer means our hotelRepository class--
//hote Repository layer using in our service layer
//controller--when we give request-- the request go to controller--servive--doa--db--
//service layer using in our --hotel service impl.
//
