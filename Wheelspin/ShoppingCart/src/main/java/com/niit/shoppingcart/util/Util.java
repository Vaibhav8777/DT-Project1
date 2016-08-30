package com.niit.shoppingcart.util;

public class Util {
	
	
	public String replace(String st,String ch1,String ch2)
	{
		return st.replace(ch1,ch2);
	}

	public static void main(String[] args)
	{
		Util u =new Util();
		
		String newString = u.replace(",CT", ",", "");
		String newString1=u.replace(",PR",",","");
		String newString2=u.replace(",SP",",","");
		System.out.println(newString1);
		System.out.println(newString);
		System.out.println(newString2);
	}
	
	
}
