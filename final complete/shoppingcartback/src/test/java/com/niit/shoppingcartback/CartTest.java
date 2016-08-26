package com.niit.shoppingcartback;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.User;
import com.niit.shopppingcartdao.CartDAO;
import com.niit.shopppingcartdao.UserDAO;



public class CartTest {
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		
AnnotationConfigApplicationContext con = new AnnotationConfigApplicationContext();
		
		con.scan("com.niit");
		con.refresh();
		
		CartDAO cartDAO =  (CartDAO) con.getBean("cartDAO");
		UserDAO userDAO = (UserDAO) con.getBean("userDao");
		User user = (User) con.getBean("user");	
		 user=userDAO.get("abin");
		Cart cart= (Cart) con.getBean("cart");

		cart.setPrice(100);
		cart.setQuantity(2);
		cart.setTotal(200);
		cart.setProductName("PRDCT");
		cart.setStatus("N");
		cart.setUser(user);
		
		cartDAO.saveOrUpdate(cart);
		
	
		System.out.println(user.getId());
		
		System.out.println("updated");
	}

}