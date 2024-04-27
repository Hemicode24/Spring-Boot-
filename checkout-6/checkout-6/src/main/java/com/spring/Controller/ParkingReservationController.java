package com.spring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.JPARepository.ParkingReservationRepository;
import ch.qos.logback.core.model.Model;

@Controller
@RequestMapping("/checkout")
public class ParkingReservationController {
    @Autowired
    private ParkingReservationRepository reservationRepository;

    // Define controller methods to handle requests and responses
    
    @GetMapping("/checkout")
    public String showCheckoutPage(Model model) {
        // Add necessary data to the model
        return "checkout.jsp"; // Return the name of the JSP template
    }
    
    

}

