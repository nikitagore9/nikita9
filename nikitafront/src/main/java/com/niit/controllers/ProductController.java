
	package com.niit.controllers;

	import javax.servlet.http.HttpServletRequest;
	import javax.validation.Valid;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.validation.BindingResult;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.bind.annotation.RequestParam;

	import com.niit.dao.CategoryDao;
	import com.niit.dao.ProductDao;
	import com.niit.dao.SupplierDao;
	import com.niit.model.Product;
	import com.niit.model.Category;

	@Controller
	public class ProductController {
	 @Autowired
	 ProductDao productDao;
	 @Autowired
	 SupplierDao supplierDao;
	 @Autowired
	 CategoryDao categoryDao;

	  // Landing Page--product is added in Model for Spring Form---List is added
	 // to retrive all data
	 @RequestMapping(value={"/admin/product","/product"})
	 public String home(Model m) {
	  m.addAttribute("isEditing", false);
	  m.addAttribute("product", new Product());
	  m.addAttribute("productList", productDao.getAllProduct());
	  m.addAttribute("categoryList", categoryDao.getAllCategory());
	  m.addAttribute("supplierList", supplierDao.getAllSupplier());
	  m.addAttribute("msg", "");
	  return "product";
	 }

	 @RequestMapping(value="/productbycategory/{c_id}")
	 public String homeByCategory(@PathVariable("c_id")int c_id,Model m) {
	  m.addAttribute("isEditing", false);
	  m.addAttribute("product", new Product());
	  m.addAttribute("productList", productDao.getById(c_id));
	  m.addAttribute("categoryList", categoryDao.getAllCategory());
	  m.addAttribute("supplierList", supplierDao.getAllSupplier());
	  return "product";
	 }
	  // Saving Product
	 @RequestMapping(value = "/admin/product/save", method = RequestMethod.POST)
	 public String save(@ModelAttribute("product")@Valid Product p,BindingResult result, Model m, HttpServletRequest request) {
	  
		 if(result.hasErrors()) {
			 m.addAttribute("product", p);
			 m.addAttribute("productList", productDao.getAllProduct());
			 m.addAttribute("categoryList", categoryDao.getAllCategory());
			 m.addAttribute("supplierList", supplierDao.getAllSupplier());
			 m.addAttribute("msg","error in adding product");
			 System.out.println(p.getMultipartfile());
			 System.out.println(result.getFieldError().getField());
			 return "product";
		 }
	  p.setImagePath(p.getMultipartfile().getOriginalFilename());	
	  productDao.StoreFile(p, request);
	  productDao.save(p);
	  m.addAttribute("product", new Product());
	  m.addAttribute("productList", productDao.getAllProduct());
	  m.addAttribute("msg", "product added successfully");
	  return "product";
	 }

	  // Displaying Update Form
	 @RequestMapping(value = "/admin/product/update/{p_id}", method = RequestMethod.GET)
	 public String update(@PathVariable("p_id") int p_id, Model m) {
	  Product p = productDao.getById(p_id);
	  m.addAttribute("isEditing", true);
	  m.addAttribute("product", p);
	  m.addAttribute("productList", productDao.getAllProduct());
	  m.addAttribute("msg", "");
	  return "product";
	 }

	  // Updating Product
	 @RequestMapping(value = "/admin/product/update", method = RequestMethod.POST)
	 public String update(@ModelAttribute("product")@Valid Product p, Model m,BindingResult result,HttpServletRequest request) {
		 
		 if(result.hasErrors()) {
			 m.addAttribute("product", p);
			 m.addAttribute("productList", productDao.getAllProduct());
			 m.addAttribute("categoryList", categoryDao.getAllCategory());
			 m.addAttribute("supplierList", supplierDao.getAllSupplier());
			 m.addAttribute("msg","error in updating product");
			 return "product";
		 }
		 
		 System.out.println(p.getImagePath());
		 if(!p.getMultipartfile().isEmpty()){
			 p.setImagePath(p.getMultipartfile().getOriginalFilename());
			 productDao.StoreFile(p, request);
		 }
		 System.out.println(p);
	 System.out.println( productDao.update(p));
	  m.addAttribute("product", new Product());
	  m.addAttribute("productList", productDao.getAllProduct());
	  m.addAttribute("msg", "product updated successfully");
	  return "product";
	 }
	 
	 @RequestMapping(value="/search",method=RequestMethod.POST)
	 public String searchProduct(@RequestParam("q") String pname,Model m) {
	  m.addAttribute("isEditing", false);
	  m.addAttribute("product", new Product());
	  m.addAttribute("productList", productDao.searchByProductName(pname));
	  m.addAttribute("categoryList", categoryDao.getAllCategory());
	  m.addAttribute("supplierList", supplierDao.getAllSupplier());
	  return "product";
	 }
	 
	  // Deleting Product
	 @RequestMapping(value = "/admin/product/delete/{p_id}", method = RequestMethod.GET)
	 public String delete(@PathVariable("p") Product p, Model m) {
	productDao.deleteById(p);
	  m.addAttribute("product", new Product());
	  m.addAttribute("productList", productDao.getAllProduct());
	  m.addAttribute("msg", "product deleted successfully");
	  return "product";
	 }
	 
	 @RequestMapping(value = "/showProduct/{p_id}", method = RequestMethod.GET)
	 public String getProduct(@PathVariable("p_id") int p_id, Model m) {
	  Product p=productDao.getById(p_id);
	  m.addAttribute("prd", p);
	 
	  return "show";
	 }


}
