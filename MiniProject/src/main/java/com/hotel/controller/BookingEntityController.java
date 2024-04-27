package com.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hotel.Dao.BookingEntityRepository;
import com.hotel.Dao.CustomerEntityRepository;
import com.hotel.Dao.RoomEntityRepository;
import com.hotel.model.BookingEntity;
import com.hotel.model.CustomerEntity;
import com.hotel.model.RoomEntity;



@Controller
public class BookingEntityController {
	
	@Autowired
	BookingEntityRepository repository;
	@Autowired
	CustomerEntityRepository repo;
	@Autowired
	RoomEntityRepository vrepo;
	//@Autowired
	//private ParkingService parkingService;
	@RequestMapping("/index")
	public String user() {
		return "index.jsp";
	}

	@RequestMapping("addUser")
	public String adduser(BookingEntity entity) {
		System.out.println(entity.toString());
		repository.save(entity);
		
		return "CustomerDetails.jsp";
	}

	@RequestMapping("CustomerDetails")
	public String addCustomer(CustomerEntity pe) {
		repo.save(pe);
		System.out.println(pe);
		return "RoomDetails.jsp";
	}

	@RequestMapping("RoomDetails")
	public String addRoom(RoomEntity Ve) {
		vrepo.save(Ve);
		System.out.println(Ve);
		return "index.jsp";
	}

}
