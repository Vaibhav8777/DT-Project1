package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.UserDetails;



@Controller
public class UserController {

   @Autowired
	UserDAO userDAO;
   
//   @RequestMapping("/loginUser")
//	public String getlogin()
//	{
//		return "loginUser";
//	}
	@RequestMapping("/")
	public String getLanding() 
	{
	    //logger.info("Welcome home! The client locale is {}.");  
		System.out.println("Index page called....");
	    return "index";
	}
	
	@RequestMapping("/home")
	public String getHome()
	{
		return "home";
	}
	@RequestMapping("/contact")
	public String getContact()
	{
		return "contact";
	}
	@RequestMapping("/aboutus")
	public String getAboutus()
	{
		return "aboutus";
	}
	@RequestMapping("/payment")
	public String getpay()
	{
		return "payment";	
	}
	
	@RequestMapping("/confirm")
	public String getconfirm()
	{
		return "confirm";	
	}
	@RequestMapping("/signup")
	public String getsignup()
	{
		return "signup";	
	}
    
//    @RequestMapping("/isValidUser")
//	public ModelAndView isValidUser(@RequestParam(value = "name") String name,
//			@RequestParam(value = "password") String password) {
//		System.out.println("in controller");
//
//		String message;
//		ModelAndView mv ;
//		if (userDAO.isValidUser(name, password,true)) 
//		{
//			message = "Valid credentials";
//			 mv = new ModelAndView("adminHome");
//		} else {
//			message = "Invalid credentials";
//			 mv = new ModelAndView("login");
//		}
//
//		mv.addObject("message", message);
//		mv.addObject("name", name);
//		return mv;
//	}
	
	
//	@RequestMapping("/register")
//	public ModelAndView registerUser(@ModelAttribute UserDetails userDetails) {
//		userDAO.saveOrUpdate(userDetails);
//	  return new ModelAndView("/adminHome");
//	 }

//    @RequestMapping("/memberShip.obj")
//	public ModelAndView registerUser(@ModelAttribute UserDetails userDetails) {
//		userDAO.saveOrUpdate(userDetails);
//	  return new ModelAndView("/welcome");
//	 }
    	
    /*
     * login method is used to handle user login related functionality
     */
    @RequestMapping(value = "/loginUser")
    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
            required = false) String logout, Model model) {
        if (error!=null) {
        	System.out.println("Error.....");
            model.addAttribute("error", "...Invalid username and password");
        }
        	
        if(logout!=null) {
        	System.out.println("Logout called.....");
            model.addAttribute("msg", "...You have been logged out");
        }

        return "loginUser";
    }
    
    /*
     * userManagement method is used to open user management page.
     */
    @RequestMapping(value = "/user")
    public String userManagement() 
    {
    	System.out.println("USER CALLED.......");
    	return "loginUser";
    }
    
    @RequestMapping(value = "/admin")
    public String adminManagement() 
    {
    	System.out.println("ADMIN CALLED.......");
    	return "adminHome";
    }
    
    @RequestMapping(value="/afterLogin", method = RequestMethod.GET)
    public String afterLogint() 
    {
    	System.out.println("After User Login.......");
    	return "afterLoginUser";
    }
    
    @RequestMapping("/403")
    public String errorPage() 
    {
    	System.out.println("Error......");
    	return "403";
    }
}
