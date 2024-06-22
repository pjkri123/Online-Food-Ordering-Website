package com.jsp.hotelmanagementsystem.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementsystem.dao.CustomerDao;
import com.jsp.hotelmanagementsystem.entities.Customer;

@Controller
public class CustomerController {
	@Autowired
	CustomerDao dao;
	
	@RequestMapping("/addcustomer")
//	handler is used to create customer object and pass it to customerform.jsp
	public ModelAndView addCustomer() {
		Customer customer=new Customer();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("customerobj",customer);
		mav.setViewName("customerform");
		return mav;
	}
	
	@RequestMapping("/savecustomer")
//	handler used to save customer details into database
	public ModelAndView saveCustomer(@ModelAttribute("customerobj") Customer customer) {
		dao.saveCustomer(customer);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","Account Created Successfully");
		mav.setViewName("customerlogin");
		return mav;
	}
	
	@RequestMapping("/customerloginvalidation")
//	used to perform login validation for customer
	public ModelAndView loginValidation(ServletRequest request, HttpSession session) {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		Customer customer=dao.login(email, password);
		ModelAndView mav=new ModelAndView();
		
		if(customer!=null) {
			session.setAttribute("customerinfo", customer.getId());
			mav.addObject("message","LoggedIn successfully");
			mav.setViewName("customeroptions");
		}
		else {
			mav.addObject("message","Invalid Credentials....");
			mav.setViewName("customerlogin");
		}
		return mav;
	}
}
