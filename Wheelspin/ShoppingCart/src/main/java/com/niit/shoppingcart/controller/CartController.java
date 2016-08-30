package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class CartController {
	
	@Autowired(required=true)
	private CartDAO cartDAO;
	
	@Autowired(required=true)
	private ProductDAO productDAO;
	
	@Autowired(required=true)
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String myCart(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAO.list());
	
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.list());
		model.addAttribute("totalAmount", cartDAO.getTotalAmount("user")); // Just to test, password user
		model.addAttribute("displayCart", "true");
		return "cart";
	}
	
	//For add and update cart both
	@RequestMapping(value= "/cart/add/{id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id){
			
	System.out.println("In AddtoCart" );	
	Product product =	 productDAO.get(id);
	Cart cart = new Cart();
	cart.setPrice(product.getPrice());
	cart.setProductName(product.getName());
	cart.setQuantity(1);
	cart.setUserID("user"); // id should keep session and use the same id
	cart.setStatus('N');
	cartDAO.saveOrUpdate(cart);
	//return "redirect:/views/home.jsp";
	return "redirect:/onLoad";
	}
	
		
	/*@RequestMapping("cart/remove/{id}")
    public String removeCart(@PathVariable("id") int id,ModelMap model) throws Exception{
		
       
		cartDAO.delete(id);
		model.addAttribute("message","Successfully removed");
	
		Throwable e;
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "/home";
	}
 */
	
	@RequestMapping("/cart/remove/{id}")
	public String deleteCart(@PathVariable("id") int id,Model model)
{
	
		cartDAO.delete(id);
		
		
		 return "redirect:/myCart";
}

	
	
    @RequestMapping("cart/edit/{id}")
    public String editCart(@PathVariable("id") String id, Model model){
    	System.out.println("editCart");
        model.addAttribute("cart", this.cartDAO.get(id));
        model.addAttribute("listCarts", this.cartDAO.list());
        return "redirect:/onLoad2";
    }
  
	
//	@RequestMapping(value = "/onLoad2", method = RequestMethod.GET)
//	public String onLoad(Model model) {
//	
//		model.addAttribute("cart", new Category());
//		model.addAttribute("cartList", this.cartDAO.list());
//		
//	
//		
//		//System.out.println(U);
//		return "/list";
//	}
//	@RequestMapping("/continue")
//	public String Continue()
//	{
//		return "redirect:/cart";
//	}
	
	
//	@RequestMapping(value = "/onLoad3", method = RequestMethod.GET)
//	public String onLoad3(Model model) {
//	//System.out.println(U);
//		model.addAttribute("category", new Category());
//		model.addAttribute("categoryList", this.categoryDAO.list());
//		//model.addAttribute("U",U);
//	
//		
//		//System.out.println(U);
//		return "/adminHome";
//	}
	
		
		
    	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout(Model model) {
	    
		int i,s=0,j=0;
		int n=cartDAO.list().size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+cartDAO.list().get(i).getPrice();
			
		}
		System.out.println(s);
		model.addAttribute("sum", s);
		model.addAttribute("cart", new Category());
		model.addAttribute("cartList", this.cartDAO.list());
		model.addAttribute("total", this.cartDAO.getTotalAmount("id"));
		
	
		
		//System.out.println(U);
		return "/checkout";
	}
	
	@RequestMapping(value = "/logout2", method = RequestMethod.GET)
	public String logout2(Model model) {
	
		
		
		
	
		
		//System.out.println(U);
		return "/logout";
	}

	@RequestMapping("/logout")
	public String logout(Model model)
	{
		int i,s=0,j=0;
		int n=cartDAO.list().size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+cartDAO.list().get(i).getPrice();
			
		}
		System.out.println(s);
		model.addAttribute("sum", s);
		while(n!=0)
		{
			cartDAO.delete(cartDAO.list().get(j).getId());
			n=cartDAO.list().size();
			
		}
		return "logout";
	}
	
	@RequestMapping("/thanks")
	public String getthanks()
	{
		return "thanks";	
	}
}
