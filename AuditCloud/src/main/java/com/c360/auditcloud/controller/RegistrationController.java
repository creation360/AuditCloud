package com.c360.auditcloud.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.c360.auditcloud.model.User;
import com.c360.auditcloud.service.UserService;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.*;
/***
 * Registration Controller Class to receive input and provide output back to the Users
 * @author Priyaa Thavasimani
 * @date 11 Apr 2019
 */
@Controller
public class RegistrationController  { 
	@Autowired
	public UserService userService;
	String encryptedpassword;
    
    //Generate Encrypted Password
    private static String get_SHA_512_SecurePassword(String passwordToHash, byte[] salt)
    {
        String generatedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            md.update(salt);
            byte[] bytes = md.digest(passwordToHash.getBytes());
            StringBuilder sb = new StringBuilder();
            for(int i=0; i< bytes.length ;i++)
            {
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            generatedPassword = sb.toString();
        }
        catch (NoSuchAlgorithmException e)
        {
            e.printStackTrace();
        }
        return generatedPassword;
    }
     
    //Add salt
    private static byte[] getSalt() throws NoSuchAlgorithmException
    {
        SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
        byte[] salt = new byte[16];
        sr.nextBytes(salt);
        return salt;
    }
    

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new User());
		return mav;
	}

	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute("user") User user) throws NoSuchAlgorithmException {
		
		/*Password Encryption*/
		byte[] salt = getSalt(); //get salt for added security
		encryptedpassword = get_SHA_512_SecurePassword(user.getPassword(), salt); //add salt to encryption
		//convert salt from byte array to string to store in database
		String convertedSalt = Base64.getEncoder().encodeToString(salt);
		user.setReset_hash(convertedSalt);
		user.setPassword_hash(encryptedpassword);
		/*Ends*/
		Date created_on = new Date();
		user.setCreated_on(created_on.toString());
		System.out.println(user.getPassword_hash());
		System.out.println(user.getReset_hash());
		userService.register(user);
		return new ModelAndView("welcome", "firstname", user.getFirstname());
	}
}