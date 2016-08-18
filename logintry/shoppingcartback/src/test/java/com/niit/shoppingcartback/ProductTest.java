package com.niit.shoppingcartback;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.model.Product;
import com.niit.shopppingcartdao.CategoryDAO;
import com.niit.shopppingcartdao.ProductDAO;
import com.niit.shopppingcartdao.SupplierDAO;

public class ProductTest {
	public static void main(String[] args) {

		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		Product product = (Product) context.getBean("product");
		
		// Create Operation
		
		product.setId("prfjf");
		product.setName("samsung");
		product.setDescription("mobile electronics");
		product.setPrice(15000);
	    product.setCategory(categoryDAO.get("cg1"));
	    product.setSupplier(supplierDAO.get("sup1"));
		productDAO.saveOrUpdate(product);
		
	    // categoryDAO.delete("CG01"); --> Delete Operation
		
	    //Retrieve Operation
	    if(productDAO.get("CG01")== null)
		{
			System.out.println("product  does not exist");
		}
		else
		{
			System.out.println("product exists..");
			System.out.println();
		} 

	}


}
