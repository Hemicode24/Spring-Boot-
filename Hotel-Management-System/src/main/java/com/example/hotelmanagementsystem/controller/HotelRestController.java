package com.example.hotelmanagementsystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.hotelmanagementsystem.entity.Hotel;
import com.example.hotelmanagementsystem.service.HotelService;

@RestController
@RequestMapping("/api")

public class HotelRestController {
	private HotelService hotelService;
	//1.generate constructor method
	@Autowired //2. inject the object of service.
	public HotelRestController(HotelService hotelService) {
		super();
		this.hotelService = hotelService;
	}
	
	// exposing "/hotels" and return list of Hotels
	@GetMapping("hotels")
	
	public List<Hotel>findAll()
	{
		return hotelService.findAll();
	}
	// add,mapping  to retrive single Hotel
	@GetMapping("/hotels/{hotelId}")
	public Hotel findById(@PathVariable int hotelId)
	{
		Hotel hotel = null;
		try {
			hotel = hotelService.findById(hotelId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return hotel;
	}
	//add mapping for POST/ hotel - add new employee
	@PostMapping("/hotels")
	public Hotel addHotel(@RequestBody Hotel theHotel) 
	{
		//also just in case they pass id in json...set id as 0
		//this is to  force a save new hotel....instead of update
	theHotel.setId(0);
	hotelService.save(theHotel);
	return theHotel;
	}
	//add mapping for PUT/hotels -- update an exiting hotel
	@PutMapping("/employees")
	public Hotel updateHotel(@RequestBody Hotel theHotel)
	{
		hotelService.save(theHotel);
		return theHotel;
	}
	// add mapping for DELETE/hotel/{theId} - delete an hotel
	@DeleteMapping("employees/{theId}")
	public String deleteHotel(@PathVariable int theId)
	{
		String msg="";
		try {
			msg = hotelService.deleteById(theId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return msg;
	}
}






//develop controller layer
//different http method in controller
// HTTP methods(get,post,put,delete)
//get-reterving all existing record--read a list of entities or single entity
//put-- updating existing record--update an existing entity
//delete--delete record--delete an exiting entity 
//postman-insert in new record--create a new entity
//how to test endpoints in postman--controller use postman--
//endpoint--hotels--plural method in entity
//controller--service--DOA--db
