package com.niit.dao;
import java.util.List;
import com.niit.model.Supplier;

public interface SupplierDao {
	 public List <Supplier > getAllSupplier();
	 public boolean save(Supplier p);
	 public boolean deleteById(int id);
	 public boolean update(Supplier p);
	 public Supplier getById(int id);
	}