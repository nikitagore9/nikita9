package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
	
	public class HomeController {
	@RequestMapping("/")
	
	  public String home()
	  {
		  return "index" ;
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
	 
	 
	  
	  
	  
	  
	 
	 
	 
	 
	}

