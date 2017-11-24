package com.niit.ProductTest;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Product;

public class ProductTestCase {
	@Autowired
	static AnnotationConfigApplicationContext  config;
	@Autowired
	static Product product;
	@Autowired
static	ProductDao productDao;
	
	@BeforeClass
	public static void setConfig(){
		config = new AnnotationConfigApplicationContext();
		config.scan("com.niit");
		config.refresh();
		product =  (Product)config.getBean("product");
		productDao=  (ProductDao)config.getBean("productDao");
		
	}
	//@Test
	public void checkProduct(){
		List<Product> prdlist = productDao.getAllProduct();
		
		Assert.assertEquals(3, prdlist.size());
	}

	@Test
	public void createProducttestcase() {
		
		product.setp_id(103);
		product.setp_name("cake");
		product.setDescription("vanilla");
		
		
		boolean flag =productDao.save(product);
		
		
		Assert.assertEquals("createProducttestcase",true, flag);
		
	}
	
	//@Test
	public void deleteById()
	{
		//category.setp_id(103);
		boolean flag = productDao.deleteById(product);
		Assert.assertEquals("deleteById", true,flag);
	}
	
	@Test
	public void update()
	{
		product.setp_id(103);
		product.setp_name("cupcake");
		product.setDescription("red velvet");
		
	}

//	@Test 
	public void getById()
	{
		product = productDao.getById(103);
		Assert.assertEquals("getById",null,product);
		
	}
}