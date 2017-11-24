package com.niit.dao;

	import java.util.List;

	import com.niit.model.Cart;
	import com.niit.model.Customer;

	public interface  CartDao {
		public boolean deleteById(int id);
		public List<Cart> getByCustomer(Customer c);
		public boolean save(Cart c);
		public Double getTotalAmount(Customer c);
		public Double getAllCart();
		public Cart getById(String cartid);
		boolean deleteByCustomer(Customer c);
		public void deleteByCustomer();
		
	}

