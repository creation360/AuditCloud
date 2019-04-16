package com.c360.auditcloud.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.c360.auditcloud.model.Login;
import com.c360.auditcloud.model.User;
import com.c360.auditcloud.service.UserService;

/***
 * Login Controller Class to receive input and provide output back to the Users
 * 
 * @author Priyaa Thavasimani
 * @date 11 Apr 2019
 */
@Controller
//@SessionAttributes("login")
public class LoginController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		/*
		 * ModelAndView mav = new ModelAndView("login"); mav.addObject("login", new
		 * Login()); return mav;
		 */

		/* Check session for authentication */
		if (null == session.getAttribute("login")) {
			System.out.println("Session does not Exist");
			ModelAndView mav = new ModelAndView("login");
			mav.addObject("login", new Login());
			return mav;

		} else {

			ModelAndView mav = new ModelAndView("welcome");
			return mav;
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView showLogout(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("login", new Login());
		return mav;

	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login, HttpSession session) {
		session.setAttribute("login", login);
		System.out.println(session.getAttribute("login"));
		ModelAndView mav = null;
		User user = userService.validateUser(login);
		if (null != user) {
			mav = new ModelAndView("welcome");
			mav.addObject("firstname", user.getFirstname());
			mav.addObject("email", user.getEmail());
		} else {
			mav = new ModelAndView("login");
			mav.addObject("message", "Username or Password is wrong!!");
		}
		return mav;
	}
}