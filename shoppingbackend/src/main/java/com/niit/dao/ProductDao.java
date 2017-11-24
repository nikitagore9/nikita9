package com.niit.dao;
import java.util.List;
import com.niit.model.Product;

public interface ProductDao {
	 public List <Product > getAllProduct();
	 public boolean save(Product p);
	 public boolean deleteById(Product p);
	 public boolean update(Product p);
	 public Product getById(int id);
	}


