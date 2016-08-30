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

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.util.Util;

@Controller
public class SupplierController {
	
	private SupplierDAO supplierDAO;
	
	@Autowired(required=true)
	@Qualifier(value="supplierDAO")
	public void setSupplierDAO(SupplierDAO ps){
		this.supplierDAO = ps;
	}
	
	@RequestMapping(value = "/suppliers", method = RequestMethod.GET)
	public String listSuppliers(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "supplier";
	}
	
	//For add and update supplier both
//	@RequestMapping(value= "/supplier/add", method = RequestMethod.POST)
//	public String addSupplier(@ModelAttribute("supplier") Supplier supplier){
//		Util u =new Util();
//		String newName= u.replace(supplier.getId(), ",", "");
//		supplier.setId(newName);
//		
//	
//			supplierDAO.saveOrUpdate(supplier);
//		
//		return "redirect:/suppliers";
//		
//	}
	
	@RequestMapping(value= "/supplier/add", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier, RedirectAttributes attributes){
		StringBuilder sb=new StringBuilder(supplier.getId());
		sb=sb.deleteCharAt(0);
		String s=sb.toString();
		System.out.println(s);
		
		
		String message="";
		if(s.substring(0,2).compareTo("SP")!=0){
			message="ID should start with SP";
			System.out.println("invalid ID");
			attributes.addFlashAttribute("idMessage", message);
			return "redirect:/suppliers";
		}	
		supplier.setId(s);
		supplierDAO.saveOrUpdate(supplier);
	
	return "redirect:/suppliers";
	
}
	
	@RequestMapping("supplier/remove/{id}")
    public String removeSupplier(@PathVariable("id") String id, ModelMap model) throws Exception{
		
       try {
		supplierDAO.delete(id);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/suppliers";
    }
 
    @RequestMapping("supplier/edit/{id}")
    public String editSupplier(@PathVariable("id") String id, Model model){
    	System.out.println("editSupplier");
        model.addAttribute("supplier", this.supplierDAO.get(id));
        model.addAttribute("listSuppliers", this.supplierDAO.list());
        return "supplier";
    }
	}
