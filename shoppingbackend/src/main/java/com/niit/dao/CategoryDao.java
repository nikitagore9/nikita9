package com.niit.dao;
import java.util.List;
import com.niit.model.Category;

public interface CategoryDao {
	 public List < Category > getAllCategory();
	 public boolean save(Category p);
	 public boolean deleteById(Category category);
	 public boolean update(Category p);
	 public Category getById(int id);
	}



