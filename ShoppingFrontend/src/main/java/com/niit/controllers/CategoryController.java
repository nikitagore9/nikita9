package com.niit.controllers;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;

@Controller
public class CategoryController {
@Autowired
CategoryDao CategoryDao;

//saving product
@RequestMapping(value="admin/Category/save", method=RequestMethod.POST)
public String save(@ModelAttribute("Category") @Valid Category c,BindingResult result,Model m)
{
	if(result.hasErrors())
	{
		m.addAttribute("Category",c);
		m.addAttribute("CategoryList",CategoryDao.getAllCategory());
		m.addAttribute("msg","error in adding category");
		System.out.println(result.getFieldError().getField());
		return "Category";
		
	}
	CategoryDao.save(c);
	m.addAttribute("Category",new Category());
	m.addAttribute("CategoryList",CategoryDao.getAllCategory());
	m.addAttribute("msg","category added successfully");
	return "Category";
	}



}
