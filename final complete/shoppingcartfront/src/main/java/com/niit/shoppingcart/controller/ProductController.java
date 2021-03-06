package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.User;
import com.niit.shopppingcartdao.CartDAO;
import com.niit.shopppingcartdao.CategoryDAO;
import com.niit.shopppingcartdao.ProductDAO;
import com.niit.shopppingcartdao.SupplierDAO;
import com.niit.shopppingcartdao.UserDAO;
import com.niit.shoppingcart.util.FileUtil;
import com.niit.shoppingcart.util.Util;

@Controller
public class ProductController {
	
	Logger log = LoggerFactory.getLogger(ProductController.class);
	@Autowired
	Product product;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired(required=true)
	private UserDAO userDAO;
	
	private String path = "D:\\fileupload\\image\\";
	
	@RequestMapping(value = "/Products", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("isAdminClickedProduct", "true");
		model.addAttribute("product", product);
		model.addAttribute("category",new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", productDAO.list());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		return "home";
	}

	@RequestMapping(value = "/to_add_product", method = RequestMethod.POST)
	public String addProducts(@ModelAttribute("product") Product product) {
		
		System.out.println(product.getId() +"\n" +product.getName() +"\n" + product.getPrice() +"\n" + product.getDescription() +"\n" +  categoryDAO.getByName(product.getCategory().getName()) +"\n" +  supplierDAO.getByName(product.getSupplier().getName()));
		
		Category category = categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.saveOrUpdate(category); // why to save??

		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.saveOrUpdate(supplier); // Why to save??

		product.setCategory(category);
		product.setSupplier(supplier);

		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());   
		
		String newID = Util.removeComma(product.getId());
		product.setId(newID);
		
		productDAO.saveOrUpdate(product);
 
		MultipartFile file=product.getImage();
		FileUtil.upload(path, file,"s"+product.getId()+".jpg");
		
		return "redirect:/manageProducts";
	}
	
	@RequestMapping(value = "product/remove/{id}")
	public String deleteProducts(@PathVariable("id") String id,ModelMap model) {
		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		return "redirect:/Products";
	}
	
	
	@RequestMapping(value = "product/edit/{id}")
	public String editProducts(@PathVariable("id") String id,ModelMap model) {
		product=productDAO.get(id);
		model.addAttribute("product", product);
		model.addAttribute("productList", productDAO.list());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList",supplierDAO.list());

		return "redirect:/Products";
	}


	@RequestMapping(value = "product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model) {
		model.addAttribute("selectedProduct", this.productDAO.get(id));
		model.addAttribute("categoryList", this.categoryDAO.list());
		//model.addAttribute("isUserClickedproduct", "true");
        
		
		
		return "home";

	}
	
	
	@RequestMapping(value= "product/get/addc/{id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id, HttpSession session){
		
	System.out.println("*****************************************working***************************************************************************************");
	 Product product =	 productDAO.get(id);
	 
	 User user = (User)session.getAttribute("user");
	 Cart cart = new Cart();
	 cart.setPrice(product.getPrice());
	 cart.setProductName(product.getName());
	 cart.setQuantity(1);
	  cart.setUser(user);
	 cart.setStatus("N");
	 /*cart.setTotal(product.getPrice());*/// 
		cartDAO.saveOrUpdate(cart);
//		//return "redirect:/views/home.jsp";
		return "/home";
		
	}

	@RequestMapping(value = "product/get/addc/myCart", method = RequestMethod.GET)
	public String myCart(Model model,HttpSession session) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAO.list());
		 User user = (User)session.getAttribute("user");
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.listCart());
		model.addAttribute("totalAmount", cartDAO.getTotal(user.getId())); // Just to test, passwrdo user
		model.addAttribute("displayCart", "true");
		return "/home";
	}
	

	@RequestMapping(value = "product/get/addc/pay/{id}")
	public String mypayment(Model model) {
		
		return "lastpage";
	}
	
	
	@RequestMapping(value = "pay/{id}")
	public String mypay(Model model) {
		
		return "lastpage";
	}
	
	
	@RequestMapping(value="/product/get/addc/deletec/{id}")
    public String removeCart(@PathVariable("id") int id,ModelMap model) throws Exception{
		System.out.println("inside removing***********************************************************************************"+id);
       
		cartDAO.delete(id);
		model.addAttribute("message","Successfully removed");
	
		
		
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/";
    }
	
	
	@RequestMapping(value="deletec/{id}")
    public String removeCarts(@PathVariable("id") int id,ModelMap model) throws Exception{
		System.out.println("inside removing***********************************************************************************"+id);
       
		cartDAO.delete(id);
		model.addAttribute("message","Successfully removed");
	
		
		
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/";
    }
	
	@RequestMapping(value = "displayProducts/{name}")
	public String onClickCategories(@PathVariable("name")String id ,ModelMap model) {
		log.debug("Start: method onClickCategories");
        Category category = categoryDAO.getByName(id);
		model.addAttribute("userClickedCategoryName", true);
        System.out.println(id);
		model.addAttribute("category", category);
		System.out.println(category.getName());
		log.debug("End: method onClickCategories");

		return "/home";
	}

	
	@RequestMapping(value= "/addc/{id}", method = RequestMethod.GET)
	public String addTooCart(@PathVariable("id") String id, HttpSession session){
		
	System.out.println("*****************************************working***************************************************************************************");
	 Product product =	 productDAO.get(id);
	 
	 User user = (User)session.getAttribute("user");
	 Cart cart = new Cart();
	 cart.setPrice(product.getPrice());
	 cart.setProductName(product.getName());
	 cart.setQuantity(1);
	  cart.setUser(user);
	 cart.setStatus("N");
	 cart.setTotal(product.getPrice());// 
		cartDAO.saveOrUpdate(cart);
//		//return "redirect:/views/home.jsp";
		return "/home";
		
	}
	
	@RequestMapping(value = "/addc/myCart", method = RequestMethod.GET)
	public String myCarts(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAO.list());
	
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.listCart());
		model.addAttribute("totalAmount", cartDAO.getTotal("user")); // Just to test, passwrdo user
		model.addAttribute("displayCart", "true");
		return "/home";
	}
	
	@RequestMapping(value="/addc/deletec/{id}")
    public String removeCarty(@PathVariable("id") int id,ModelMap model) throws Exception{
		System.out.println("inside removing***********************************************************************************"+id);
       
		cartDAO.delete(id);
		model.addAttribute("message","Successfully removed");
	
		
		
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/";
    }
	
	@RequestMapping(value = "/addc/pay/{id}")
	public String mypaymenty(Model model) {
		
		return "lastpage";
	}
	
	
	
//	List<Product> plist=null;
//	
//	@RequestMapping("/displayProducts/displayProducts/pds")
//	public @ResponseBody String getValues()
//	{	
//		System.out.println("****************angulaaaaaaaaaaaaaaaaaaaaaaaaaarr*************");
//		plist=productDAO.list();
//		for (Product product : plist) {
//		System.out.println(product.getName());	
//		}
//		
//		Gson gson=new Gson();
//		System.out.println("*************************************************");
//		String result= gson.toJson(plist);
//		return result;
//		//return "login";
//		 
//		}
	
	
	@RequestMapping(value = "/angular")
	public String angu(Model model) {
		
		return "angular";
	}
	
List<Product> plist=null;
	
	@RequestMapping("/p")
	public @ResponseBody String getValues()
	{	
		System.out.println("****************angulaaaaaaaaaaaaaaaaaaaaaaaaaarr*************");
		plist=productDAO.list();
		for (Product product : plist) {
		System.out.println(product.getName());	
		}
		
		Gson gson=new Gson();
		System.out.println("*************************************************");
		String result= gson.toJson(plist);
		return result;
		//return "login";
		 
		}
	
}
