package com.niit.shoppingcart.controller;


import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.User;
import com.niit.shopppingcartdao.CategoryDAO;
import com.niit.shopppingcartdao.UserDAO;




@Controller
public class MyController {
	

	Logger log = LoggerFactory.getLogger(MyController.class);
	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	Category category;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/")
	public ModelAndView myfun1(HttpSession session)
	{
	 log.debug("Starting of the method onLoad");
	  ModelAndView mv=new ModelAndView("/home");
	  session.setAttribute("category",category);
	  session.setAttribute("categoryList", categoryDAO.list());
	  log.debug("Ending of the method onLoad");
	  
	  return mv;
		
	}
	
	
	@RequestMapping("/loginhere")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("isUserClickedLoginHere", "true");
		return mv;
	}
	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("/register");
		mv.addObject("user", user);
		mv.addObject("isUserClickedRegisterHere", "true");
		return mv;
	}	
	
	
	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This page is for ROLE_ADMIN only!");
		model.setViewName("admin");

		return model;

	}
	


	
	@RequestMapping(value = "here/register", method = RequestMethod.GET)
	public ModelAndView registerUser(HttpSession session) {
		User user = (User) session.getAttribute("user");
	    userDAO.saveOrUpdate(user);
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("successMessage", "You are successfully register");

		return mv;
	}

	
	@RequestMapping(value = "/securityLogin", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		log.debug("Start: method securityLogin");

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("securityLogin");
		log.debug("End: method securityLogin");

		return model;

	}
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied(Principal user) {

		ModelAndView model = new ModelAndView();

		if (user != null) {
			model.addObject("msg", "Hi " + user.getName()
			+ ", you do not have permission to access this page!");
		} else {
			model.addObject("msg",
			"You do not have permission to access this page!");
		}

		model.setViewName("403");
		return model;

	}
	
	@RequestMapping(value = {"/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {
		log.debug("Start: method defaultPage");
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This is default page!");
		model.setViewName("hello");
		log.debug("End: method defaultPage");
		return model;
		
	}
	

}

