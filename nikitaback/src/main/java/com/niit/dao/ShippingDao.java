
	package com.niit.dao;

	import java.util.List;

	import com.niit.model.Cart;
	import com.niit.model.Customer;
	import com.niit.model.Shipping;

	public interface  ShippingDao {
	 public List <Shipping> getAllShipping();
	 public default  boolean save(Shipping s) {
		// TODO Auto-generated method stub
		return false;
	}
	 public boolean deleteById(int id);
	 
	 public  Shipping getById(int id);


	Shipping getByCustomer(Customer c);

		
	

}
