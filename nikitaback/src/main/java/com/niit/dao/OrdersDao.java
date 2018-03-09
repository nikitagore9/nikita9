
	package com.niit.dao;

	import java.util.List;

	import com.niit.model.Orders;
	import com.niit.model.Product;

	public interface  OrdersDao {
		public List<Orders> getAllOrder();
	 
	 public boolean deleteById(int id);
	 public boolean update( Orders o);
	 public  Orders getById(int id);

	public boolean save(Orders o);

	}


