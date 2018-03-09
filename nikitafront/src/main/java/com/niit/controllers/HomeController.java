package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.SupplierDao;


@Controller

	
	public class HomeController {
	@Autowired
	 ProductDao productDao;
	@Autowired
	SupplierDao supplierDao;
	 
	 @Autowired
	 CategoryDao categoryDao;
	 @Autowired
	 HttpSession httpsession;
	 	
	
	
	@RequestMapping("/")
	
	public String home()
	{
		//httpsession.setAttribute("productList", productDao.getAllProduct());
		//httpsession.setAttribute("categoryList", categoryDao.getAllCategory());
		//httpsession.setAttribute("supplierList", supplierDao.getAllSupplier());
		  
		return  "index";
	}
	
	  @RequestMapping("/about")
	   public String about()
	   {return "about";}
	  
	  @RequestMapping("/bread")
	  public String bread()
	  {return "bread";}
	 
	  @RequestMapping("/cakes")
	  public String cakes()
	  {return "cakes";}
	  
	  @RequestMapping("/contact")
	  public String contact()
	  {return "contact";}
	  
	  @RequestMapping("/cupcake")
	  public String cupcake()
	  {return "cupcake";}
	  
	  @RequestMapping("/doughnuts")
	  public String doughnuts()
	  {return "doughnuts";}
	  
	  @RequestMapping("/cookies")
	  public String cookies()
	  {return "cookies";}
	  
	  @RequestMapping("/footer")
	  public String footer()
	  {return "footer";}
	 
	  @RequestMapping("/gallery")
	  public String gallery()
	  {return "gallery";}
	 
	  
	  @RequestMapping("/loginform")
	  public String loginform()
	  {return "loginform";}
	  
	  @RequestMapping("/navbar")
	  public String navbar()
	  {return "navbar";}
	 
	  @RequestMapping("/order")
	  public String order()
	  {return "order";}
	  
	  @RequestMapping("/signup")
	  public String signup()
	  {return "signup";}
	 
	 
	  
	  
		
		@RequestMapping("/Product")
		public String Search()
		{
			httpsession.setAttribute("productList", productDao.getAllProduct());
			httpsession.setAttribute("categoryList", categoryDao.getAllCategory());
			httpsession.setAttribute("supplierList", supplierDao.getAllSupplier()); 
			return  "Product";
		}

	  
	 
	 
	 
	 
	}

