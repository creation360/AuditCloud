package com.c360.auditcloud.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import com.c360.auditcloud.model.Login;

/**
 * @author z02511mm
 *
 */

@Controller

public class UserController {
	
	/*
	    * Get user from session attribute
	    */
	//@GetMapping(value = "/info")
	@RequestMapping(value = "/user" , method= RequestMethod.GET)
	   public String userInfo(@SessionAttribute("login") Login login) {

	      System.out.println("Welcome user with Email: " + login.getEmail());

	      return "user";
	   }

}