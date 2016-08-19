package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shopppingcartdao.CartDAO;
import com.niit.shopppingcartdao.CategoryDAO;
import com.niit.shopppingcartdao.ProductDAO;

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
		model.addAttribute("cartList", this.cartDAO.listCart());
		model.addAttribute("totalAmount", cartDAO.getTotal("user")); // Just to test, passwrdo user
		model.addAttribute("displayCart", "true");
		return "/home";
	}
	
	
	/*@RequestMapping(value = "/carts", method = RequestMethod.GET)
	public String listCarts(Model model) {
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.list());
		return "cart";
	}*/
	
	
	//For add and update cart both
	@RequestMapping(value= "addc/{id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id){
		


	 Product product =	 productDAO.get(id);
	 
	 
	 
	 Cart cart = new Cart();
	 cart.setPrice(product.getPrice());
	 cart.setProductName(product.getName());
	 cart.setQuantity(1);
	 cart.setId(1);  //  id should keep session and use the same id
//	 cart.setStatus('N');  // 
		cartDAO.saveOrUpdate(cart);
		//return "redirect:/views/home.jsp";
		return "redirect:/home";
		
	}
	
	@RequestMapping("/cart/delete/{id}")
    public String removeCart(@PathVariable("id") String id,ModelMap model) throws Exception{
		
       try {
		cartDAO.delete(id);
		model.addAttribute("message","Successfully removed");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/home";
    }
 
    @RequestMapping("cart/edit/{id}")
    public String editCart(@PathVariable("id") int id, Model model){
    	System.out.println("editCart");
        model.addAttribute("cart", this.cartDAO.get(id));
        model.addAttribute("listCarts", this.cartDAO.listCart());
        return "cart";
    }
}
