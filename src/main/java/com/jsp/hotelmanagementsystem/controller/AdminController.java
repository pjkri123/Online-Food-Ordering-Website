package com.jsp.hotelmanagementsystem.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementsystem.dao.AdminDao;
import com.jsp.hotelmanagementsystem.entities.Admin;

@Controller
public class AdminController {
	@Autowired
	AdminDao dao;
	
	@RequestMapping("/addadmin")
//	handler used to create admin object and pass it to adminform.jsp
	public ModelAndView addAdmin() {
		Admin admin=new Admin();
		ModelAndView mav=new ModelAndView();
		mav.addObject("adminobj", admin);
		mav.setViewName("adminform");
		return mav;
	}
	
	@RequestMapping("/saveadmin")
//	handler used to save admin details into database
	public ModelAndView saveAdmin(@ModelAttribute("adminobj") Admin admin) {
		dao.saveAdmin(admin);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","Account Created Successfully");
		mav.setViewName("adminlogin");
		return mav;
	}
	
	@RequestMapping("/adminloginvalidation")
//	used to perform login validation for admin
	public ModelAndView loginValidation(ServletRequest request, HttpSession session) {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		Admin admin=dao.login(email, password);
		ModelAndView mav=new ModelAndView();
		
		if(admin!=null) {
			session.setAttribute("admininfo", admin);
			mav.addObject("message","LoggedIn successfully");
			mav.setViewName("adminoptions");
		}
		else {
			mav.addObject("message","Invalid Credentials....");
			mav.setViewName("adminlogin");
		}
		return mav;
	}
}
