package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.util.Util;

@Controller
public class CategoryController {
	
	private CategoryDAO categoryDAO;
	
	@Autowired(required=true)
	@Qualifier(value="categoryDAO")
	public void setCategoryDAO(CategoryDAO ps){
		this.categoryDAO = ps;
	}
	
	@RequestMapping(value = "/onLoad", method = RequestMethod.GET)
	public String onLoad(Model model) {
	System.out.println("onLoad");
		model.addAttribute("category", new Category());//category object creation
		model.addAttribute("categoryList", this.categoryDAO.list());
		//model.addAttribute("cartSize", this.cartDAO.list.size());
		return "home";
	}
	
	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String listCategorys(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "category";
	}
	
	//For add and update category both
//	@RequestMapping(value= "/category/add", method = RequestMethod.POST)
//	public String addCategory(@ModelAttribute("category") Category category){
//		Util u =new Util();
//		String newName= u.replace(category.getId(), ",", "");
//		category.setId(newName);
//	
//			categoryDAO.saveOrUpdate(category);
//		
//		return "redirect:/categories";
//		
//	}
	
	
	@RequestMapping(value= "/category/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category, RedirectAttributes attributes){
		StringBuilder sb=new StringBuilder(category.getId());
		sb=sb.deleteCharAt(0);
		String s=sb.toString();
		System.out.println(s);
		
		
		String message="";
		if(s.substring(0,2).compareTo("CT")!=0){
			message="ID should start with CT";
			System.out.println("invalid ID");
			attributes.addFlashAttribute("idMessage", message);
			return "redirect:/categories";
		}
	         category.setId(s);
			categoryDAO.saveOrUpdate(category);
		
		return "redirect:/categories";
		
	}
	
	@RequestMapping("category/remove/{id}")
    public String removeCategory(@PathVariable("id") String id,ModelMap model) throws Exception{
		
       try {
		categoryDAO.delete(id);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/categories";
    }
 
    @RequestMapping("category/edit/{id}")
    public String editCategory(@PathVariable("id") String id, Model model){
    	System.out.println("editCategory");
        model.addAttribute("category", this.categoryDAO.get(id));
        model.addAttribute("listCategorys", this.categoryDAO.list());
        return "category";
    }
	}
