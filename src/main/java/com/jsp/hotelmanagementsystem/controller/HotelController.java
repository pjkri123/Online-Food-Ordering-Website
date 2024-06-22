package com.jsp.hotelmanagementsystem.controller;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementsystem.dao.HotelDao;
import com.jsp.hotelmanagementsystem.entities.Hotel;

@Controller
public class HotelController {
	@Autowired
	HotelDao dao;
	
	
	@RequestMapping("/addhotel")
//	handler used to create hotel object and pass it to hotelform.jsp
	public ModelAndView addHotel() {
		Hotel hotel = new Hotel();
		ModelAndView mav=new ModelAndView();
		mav.addObject("hotelobj",hotel);
		mav.setViewName("hotelform");
		return mav;
	}
	
	@RequestMapping("/savehotel")
//	handler used to save details into database
	public ModelAndView saveHotel(@ModelAttribute("hotelobj") Hotel hotel) {
		hotel.setStatus("Not Approved");
		dao.saveHotel(hotel);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","your account is in review, please wait for sometime");
		mav.setViewName("hotellogin");
		return mav;
	}
	
	@RequestMapping("/hotelloginvalidation")
//	used to perform login validation for admin
	public ModelAndView hotelLoginValidation(ServletRequest request, HttpSession session) {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		Hotel hotel=dao.login(email, password);
		ModelAndView mav=new ModelAndView();
		
		if(hotel!=null) {
			if(hotel.getStatus().equals("Not Approved")) {
				mav.addObject("message","your account is in review, please wait for sometime");
				mav.setViewName("displaymessage");
			}
			else if(hotel.getStatus().equals("Blocked")) {
				mav.addObject("message","your account is blocked");
				mav.setViewName("displaymessage");
			}
			else {
//				storing hotel entity object into session
//				storing the loggedIn hotel into session
				session.setAttribute("hotelinfo", hotel.getId());
				mav.addObject("message","loggedIn successfully");
				mav.setViewName("hoteloptions");
			}
		} 
		else {
			mav.addObject("message","invalid credentials....");
			mav.setViewName("hotellogin");
		}
		return mav;
	}
	
	@RequestMapping("/fetchunapprovedhotels") 
//	handler is used to return unapproved hotels
	public ModelAndView fetchUnapprovedHotels() {
		List<Hotel> hotels=dao.findUnapprovedHotels();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("unapprovedhotels",hotels);
		mav.setViewName("displayunapprovedhotels");
		return mav;
	}
	
	@RequestMapping("/approvehotel")
//	handler is used to modify the hotel status as approved
	public ModelAndView approvehotel(@RequestParam("id") int id) {
		Hotel hotel=dao.findHotelById(id);
		hotel.setStatus("Approved");
		dao.updateHotel(hotel);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect://fetchunapprovedhotels");
		return mav;
	}
	
	@RequestMapping("/adminlogout")
//	handler is used to delete the admin data in HttpSession
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message", "Logged out successfully");
		mav.setViewName("adminhome");
		return mav;
	}
}
