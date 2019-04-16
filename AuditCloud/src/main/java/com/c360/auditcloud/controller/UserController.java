package com.c360.auditcloud.controller;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.c360.auditcloud.model.Login;

/**
 * @author MD. Shadab Mashuk
 *
 */

@Controller

public class UserController {
	
	/*
	    * Get user from session attribute
	    */
	//@GetMapping(value = "/info")
	@RequestMapping(value = "/user" , method= RequestMethod.GET)
	   public String userInfo(@SessionAttribute("login") Login login, HttpSession session) {
		/* Check session for authentication */
		if(null == session.getAttribute("login")) {
			
			return "login";
		}else {
			//System.out.println("Welcome user with Email: " + login.getEmail());

		      return "user";
			
			
		}
	      
	   }

}