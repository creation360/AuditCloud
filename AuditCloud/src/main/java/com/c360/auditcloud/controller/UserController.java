package com.c360.auditcloud.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.c360.auditcloud.model.Login;
import com.c360.auditcloud.model.User;

/**
 * @author MD. Shadab Mashuk
 *
 */

@Controller

public class UserController {

	/*
	 * Get user from session attribute
	 */
	// @GetMapping(value = "/info")
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public ModelAndView userInfo(HttpSession session) {
		/* Check session for authentication */
		System.out.println("Checking session "+session.getAttribute("login"));
		if (null == session.getAttribute("login")) {

			ModelAndView mav = new ModelAndView("login");
			mav.addObject("login", new Login());
			return mav;
		} else {
			// System.out.println("Welcome user with Email: " + login.getEmail());

			ModelAndView mav = new ModelAndView("user");
			mav.addObject("user", new Login());
			return mav;

		}

	}
}