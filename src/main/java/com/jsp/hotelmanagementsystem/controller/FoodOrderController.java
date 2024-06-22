package com.jsp.hotelmanagementsystem.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementsystem.dao.CustomerDao;
import com.jsp.hotelmanagementsystem.dao.FoodOrderDao;
import com.jsp.hotelmanagementsystem.entities.Customer;
import com.jsp.hotelmanagementsystem.entities.FoodOrder;
import com.jsp.hotelmanagementsystem.entities.Item;

@Controller
public class FoodOrderController {
	@Autowired
	FoodOrderDao foodOrderDao;
	
	@Autowired
	CustomerDao customerDao;
	
	@RequestMapping("/addfoodorder")
	public ModelAndView addFoodOrder() {
		FoodOrder foodOrder=new FoodOrder();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("foodorderobj",foodOrder);
		mav.setViewName("foodorderform");
		return mav;
	}
	
	@RequestMapping("/savefoodorder")
	public ModelAndView saveFoodOrder(@ModelAttribute("foodorderobj") FoodOrder foodOrder, HttpSession session) {
		Integer customerId=(Integer) session.getAttribute("customerinfo");
		Customer customer=customerDao.findCustomerById(customerId);
		
		List<Item> items=(List<Item>) session.getAttribute("itemslist");
		foodOrder.setItems(items);
				
		double totalPrice=items.stream().map(i->i.getCost()).mapToDouble(Double::new).sum();
		foodOrder.setTotalPrice(totalPrice);
		
		List<FoodOrder> foodOrders=customer.getFoodOrders();
		
		if(foodOrders.size()>0) {
			foodOrders.add(foodOrder);
		}
		else {
			List<FoodOrder> foodOrdersList=new ArrayList<>();
			foodOrdersList.add(foodOrder);
			customer.setFoodOrders(foodOrdersList);
		}
		
		foodOrderDao.saveFoodOrder(foodOrder);
		customerDao.updateCustomer(customer);
		
		session.removeAttribute("itemslist");
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","ordered successfully");
		mav.addObject("foodorderinfo",foodOrder);
		mav.setViewName("displaybilltocustomer");
		return mav;
	}
}
