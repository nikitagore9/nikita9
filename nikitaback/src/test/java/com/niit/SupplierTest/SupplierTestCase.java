package com.niit.SupplierTest;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDao;
import com.niit.model.Supplier;

public class SupplierTestCase {
	@Autowired
	static AnnotationConfigApplicationContext  config;
	@Autowired
	static Supplier supplier;
	@Autowired
static	SupplierDao supplierDao;
	
	@BeforeClass
	public static void setConfig(){
		config = new AnnotationConfigApplicationContext();
		config.scan("com.niit");
		config.refresh();
		supplier =  (Supplier)config.getBean("supplier");
		supplierDao=  (SupplierDao)config.getBean("supplierDao");
		
	}
	//@Test
	public void checkCategory(){
		List<Supplier> prdlist = supplierDao.getAllSupplier();
		
		Assert.assertEquals(3, prdlist.size());
	}

	@Test
	public void createSuppliertestcase() {
		
		supplier.sets_id(101);
		supplier.sets_name("xz");
		supplier.setaddress("vashi");
		
		
		boolean flag =supplierDao.save(supplier);
		
		
		Assert.assertEquals("createSuppliertestcase",true, flag);
		
	}
	
	
	@Test
	public void update()
	{
		supplier.sets_id(102);
		supplier.sets_name("cake");
		supplier.setaddress(" velvet street");
		
	}

//	@Test 
	public void getById()
	{
		supplier = supplierDao.getById(102);
		Assert.assertEquals("getById",null,supplier);
		
	}
}