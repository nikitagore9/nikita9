package com.niit.CategoryTests;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDao;
import com.niit.dao.CategoryDaoImpl;
import com.niit.model.Category;

public class CategoryTestCase {
	@Autowired
	static AnnotationConfigApplicationContext  config;
	@Autowired
	static Category category;
	@Autowired
static	CategoryDao categoryDao;
	
	@BeforeClass
	public static void setConfig(){
		config = new AnnotationConfigApplicationContext();
		config.scan("com.niit");
		config.refresh();
		category =  (Category)config.getBean("category");
		categoryDao=  (CategoryDao)config.getBean("categoryDao");
		
	}
	//@Test
	public void checkCategory(){
		List<Category> prdlist = categoryDao.getAllCategory();
		
		Assert.assertEquals(3, prdlist.size());
	}

	@Test
	public void createCategorytestcase() {
		
		category.setc_id(103);
		category.setc_name("cake");
		category.setDescription("vanilla");
		
		
		boolean flag =categoryDao.save(category);
		
		
		Assert.assertEquals("createCategorytestcase",true, flag);
		
	}
	
	//@Test
	public void deleteById(int id)
	{
		//category.setc_id(103);
		boolean flag = categoryDao.deleteById(id);
		Assert.assertEquals("deleteById", true,flag);
	}
	
	@Test
	public void update()
	{
		category.setc_id(103);
		category.setc_name("cupcake");
		category.setDescription("red velvet");
		
	}

//	@Test 
	public void getById()
	{
		category = categoryDao.getById(103);
		Assert.assertEquals("getById",null,category);
		
	}
}
