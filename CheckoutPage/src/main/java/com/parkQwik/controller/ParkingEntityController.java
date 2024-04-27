package com.parkQwik.controller;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.MediaType;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.MediaType;
//import org.springframework.web.HttpMediaTypeNotSupportedException;
//import org.springframework.http.HttpStatusCode;
//import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.RestController;
//import org.springframework.web.bind.annotation.RestController;

//import com.parkQwik.DTO.ParkingEntityDTO;
//import com.TimeDifferenceSql.model.TimeDifference;
import com.parkQwik.Dao.ParkingEntityRepository;
import com.parkQwik.Dao.PersonalEntityRepository;
import com.parkQwik.Dao.VehicleEntityRepository;
import com.parkQwik.model.ParkingEntity;
import com.parkQwik.model.PersonalEntity;
import com.parkQwik.model.VehicleEntity;
//import com.parkQwik.service.ParkingService;


@Controller
public class ParkingEntityController {
	@Autowired
	ParkingEntityRepository repository;
	@Autowired
	PersonalEntityRepository repo;
	@Autowired
	VehicleEntityRepository vrepo;
	//@Autowired
	//private ParkingService parkingService;
	@RequestMapping("/index")
	public String user() {
		return "index.jsp";
	}
//	@PostMapping(value="addUser",consumes = MediaType.APPLICATION_JSON_VALUE,
//            produces = {MediaType.APPLICATION_JSON_VALUE})
//	public String ParkingPostDetails(@RequestBody ParkingEntity entity) {
//		parkingService.saveDetails(entity);
//		return "PersonalDetails";
//	}
	@RequestMapping("addUser")
	public String adduser(ParkingEntity entity) {
		System.out.println(entity.toString());
		repository.save(entity);
		
		return "PersonalDetails.jsp";
	}

//    @PostMapping("/saveResult")
//    public String saveResult(@RequestBody int parkingDuration) {
//    	ParkingEntity en = new ParkingEntity();
//        en.setParkingDuration(parkingDuration);
//        //timeDifference.setStartTime(startTime);
//
//        // Save the result to the database
//        repository.save(en);
//        return "index.jsp";
//    }
//    @PostMapping("/saveResult")
//    public String saveResult(@RequestBody ParkingEntityDTO dto) {
//        
//            // Parse the startTimeStr and endTimeStr into Java Time objects
////            SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm");
////            Time startTime = new Time(dateFormat.parse(dto.getStartTimeStr()).getTime());
////            Time endTime = new Time(dateFormat.parse(dto.getEndTimeStr()).getTime());
//
//            // Create a TimeDifferenceEntity and set its fields
//            ParkingEntity entity = new ParkingEntity();
//           // entity.setParkingLocation(dto.getParkingLocation());
//           // entity.setParkingSlot(dto.getParkingSlot());
//            entity.setStartTime(dto.getStartTime());
//            entity.setEndTime(dto.getEndTime());
//           entity.setParkingDuration(dto.getParkingDuration());
//          // entity.setParkingFee(dto.getParkingFee());
//           //entity.setTransactionFee(dto.getTransactionFee());
//           //entity.setTotalFee(dto.getTotalFee());
//
//            // Save the entity to the database
//            repository.save(entity);
//
//           
//            return "PersonalDetails.jsp";
//    }
	@RequestMapping("PersonalDetails")
	public String addPersonal(PersonalEntity pe) {
		repo.save(pe);
		System.out.println(pe);
		return "VehicleDetails.jsp";
	}

	@RequestMapping("VehicleDetails")
	public String addVehicle(VehicleEntity Ve) {
		vrepo.save(Ve);
		System.out.println(Ve);
		return "index.jsp";
	}

}
