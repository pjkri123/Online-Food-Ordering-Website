package com.jsp.hotelmanagementsystem.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.hotelmanagementsystem.dao.HotelDao;
import com.jsp.hotelmanagementsystem.dao.ProductDao;
import com.jsp.hotelmanagementsystem.entities.Hotel;
import com.jsp.hotelmanagementsystem.entities.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;
	
	@Autowired
	HotelDao hotelDao;
	
	@RequestMapping("/addproduct")
	public ModelAndView addProduct() {
		Product p=new Product();
		ModelAndView mav=new ModelAndView();
		mav.addObject("productobj",p);
		mav.setViewName("productform");
		return mav;
	}
	
	@RequestMapping("/saveproduct")
	public ModelAndView saveProduct(@ModelAttribute("productobj") Product p, HttpSession session) {
		Integer hotelId=(Integer)session.getAttribute("hotelinfo");
		Hotel hotel=hotelDao.findHotelById(hotelId);
		List<Product> products=hotel.getProducts();
		
		if(products.size()>0) {
			products.add(p);
			hotel.setProducts(products);
		}
		else {
			List<Product> productsList=new ArrayList<>();
			productsList.add(p);
			hotel.setProducts(productsList);
		}
		
		productDao.saveProduct(p);
		hotelDao.updateHotel(hotel);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","added successfully");
		mav.setViewName("hoteloptions");
		return mav;
	}
	
	@RequestMapping("/viewproducts")
//	handler is used to display all the products
	public ModelAndView viewAllProducts() {
		List<Product> products=productDao.findAllProducts();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("productobj",products);
		mav.setViewName("viewallproducts");
		return mav;
	}
	
	@RequestMapping("/updateproduct")
//	handler is used to fetch the existing product by id
	public ModelAndView updateProduct(@RequestParam("id") int id) {
		Product product=productDao.findProductById(id);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("existingproductinfo",product);
		mav.setViewName("updateproductform");
		return mav;
	}
	
	@RequestMapping("/updateproductinfo")
//	handler is used to update the product
	public ModelAndView updateProductInformation(@ModelAttribute("existingproductinfo") Product product) {
		productDao.updateProduct(product);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message", "product updated successfully");
		mav.setViewName("redirect://viewproducts");
		return mav;
	}
	
	@RequestMapping("/deleteproduct")
//	handler is used to delete the product
	public ModelAndView deleteProduct(@RequestParam("id") int id, HttpSession session) {
		Integer hotelId=(Integer) session.getAttribute("hotelinfo");
		Hotel hotel=hotelDao.findHotelById(hotelId);
		List<Product> products=productDao.findAllProducts();
		
		List<Product> productList=products.stream().filter(product->product.getId()!=id).collect(Collectors.toList());
		hotel.setProducts(productList);
		
		hotelDao.updateHotel(hotel);
		productDao.deleteProductById(id);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message", "deleted successfully");
		mav.setViewName("redirect://viewproducts");
		return mav;
	}
	
	@RequestMapping("/hotellogout")
	public ModelAndView hotelLogout(HttpSession session) {
		session.invalidate();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","logged out successfully");
		mav.setViewName("hotelhomepage");
		return mav;
	}
	
	@RequestMapping("/fetchitemsbyhotel")
	public ModelAndView fetchItemsByHotel(ServletRequest request) {
		String hotelName=request.getParameter("hotelName");
		List<Product> products=productDao.fetchItemsByHotel(hotelName);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("productslist",products);
		mav.setViewName("displayproductstocustomer");
		return mav;
	}
	
	@RequestMapping("/fetchallproducts")
	public ModelAndView fetchAllProducts() {
		List<Product> products=productDao.findAllProducts();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("productslist",products);
		mav.setViewName("displayproductstocustomer");
		return mav;
	}
	
	@RequestMapping("/fetchproductsbetweenpricerange")
	public ModelAndView fetchProductsBewteenPriceRange(ServletRequest request) {
		String minPrice=request.getParameter("minprice");
		String maxPrice=request.getParameter("maxprice");
		
		List<Product>products=productDao.fetchproductsBetweenPriceRange(Double.parseDouble(minPrice), Double.parseDouble(maxPrice));
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("productslist",products);
		mav.setViewName("displayproductstocustomer");
		return mav;
	}
}
