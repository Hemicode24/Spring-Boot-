package com.hotel.controller;



import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import com.hotel.dao.UserDao;
import com.hotel.model.User;

@RestController
public class UserController {
     
	@Autowired
	UserDao userdao;
	
	   @PostMapping("addUser")
	   public String submitForm( @RequestParam String name,@RequestParam String email,@RequestParam long mobile  )  {
	     
	     return "redirect:/success";
	   }

	
	@RequestMapping("/index")
	public String user() {
		return "index.jsp";
	}
	
	@RequestMapping("addUser")
	public String adduser(User user) {
		userdao.save(user);
		return "index.jsp";
	}
	


	
	
	

}

