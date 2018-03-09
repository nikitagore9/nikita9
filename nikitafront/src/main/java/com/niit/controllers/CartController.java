
	package com.niit.controllers;

	import java.util.List;


	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.security.core.Authentication;
	import org.springframework.security.core.context.SecurityContextHolder;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;

	import com.niit.dao.CartDao;
	import com.niit.dao.CustomerDao;
	import com.niit.dao.ProductDao;
	import com.niit.model.Customer;
	import com.niit.model.Product;
	import com.niit.model.Cart;
	import com.niit.model.Category;

	@Controller
	public class CartController {
		@Autowired
		private CartDao cartDao;
		@Autowired
		private CustomerDao customerDao;
		@Autowired
		private ProductDao productDao;
		private Customer c;
		
		@RequestMapping("/user/cart")
		 public String Cart(Model m) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String email = auth.getName();
			Customer c = customerDao.getByEmail(email);
			List<Cart> cartList = cartDao.getByCustomer(c);
			
			Double totalamt = cartDao.getTotalAmount(c);
			
		  m.addAttribute("cartList", cartList);
		  m.addAttribute("total", totalamt);
		  if(cartList.isEmpty())
		  m.addAttribute("msg", "No Product in Cart");
		  return "Cart";
		 }

		  // Saving Product
		 @RequestMapping(value = "/user/addToCart/{pid}")
		 public String save(@PathVariable("pid")  int p_id , Model m) {
			 Product p = productDao.getById(p_id);
			 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
				String email = auth.getName();
				Customer c = customerDao.getByEmail(email);
				System.out.println(c.getCusName()+":"+p.getP_id());
				Cart cart = new Cart();
				cart.setCustomer(c);
				cart.setProduct(p);
				cart.setQty(1);
				boolean saved=cartDao.save(cart);
				System.out.println(saved);
				
				List<Cart> cartList = cartDao.getByCustomer(c);
				
				Double totalamt = cartDao.getTotalAmount(c);
				
			  m.addAttribute("cartList", cartList);
			  m.addAttribute("total", totalamt);
		
		  return "Cart";
		 }

		// Deleting Product
		 @RequestMapping(value = "/user/cart/delete/{cartid}", method = RequestMethod.GET)
		 public String delete(@PathVariable("cartid") int cartid, Model m) {
		  cartDao.deleteById(cartid);
		  
		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String email = auth.getName();
			Customer c = customerDao.getByEmail(email);
		  m.addAttribute("cart", new Cart());
		  List<Cart> cartList = cartDao.getByCustomer(c);
			Double totalamt = cartDao.getTotalAmount(c);
		  m.addAttribute("cartList", cartList);
		  m.addAttribute("total", totalamt);

		  m.addAttribute("msg", "cart deleted successfully");
		  return "Cart";
		 }
		 

	}

