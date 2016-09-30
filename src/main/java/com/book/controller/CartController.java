package com.book.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.book.model.CartItems;
import com.book.model.Product;
import com.book.services.CartService;
import com.book.services.ProductService;

@Controller
public class CartController {

	@Autowired
	private CartService cartService;
	@Autowired
	private ProductService productService;

	public String username;

	@ModelAttribute
	public void getuserdata(HttpServletRequest req) {
		Authentication au = SecurityContextHolder.getContext().getAuthentication();
		String name = au.getName();

		HttpSession ses = req.getSession();
		ses.setAttribute("u", name);
		username = (String) ses.getAttribute("u");
		System.out.println((String) ses.getAttribute("u"));

	}

	public String good() {
		System.out.println("reterieve" + username);
		return username;
	}

	@RequestMapping("addtocart/{productid}")
	public String addtocart(@PathVariable("productid") int id, HttpSession session) {
		System.out.println("bala1");

		CartItems cart = new CartItems();
		// creating the object to get product id;
		Product pr = productService.getProduct(id);
		// creating the object to cartitem class to get all the products
		List<CartItems> cart1 = cartService.getAllProduct();
		// this for loop is used to check and update the cart quantity
		for (int i = 0; i < cart1.size(); i++) {
			System.out.println("bala2");
			int b = cart1.get(i).getProduct().getProductid();

			if (b == id) {
				// for update the quantity
				int temp1 = 0;
				int quantity = cart1.get(i).getQuantity() + 1;
				cart1.get(i).setQuantity(quantity);
				int price = pr.getProductprice() * quantity;

				cart1.get(i).setTotalPrice(price);
				/*
				 * for (int j = 0; j < cart1.size(); j++) { int grandtotal =
				 * temp1 + price; cart1.get(j).setGrandtotal(grandtotal); }
				 */
				System.out.println("bala3");
				cartService.update(cart1.get(i));
				return "redirect:/viewall";
			}
		}
		/*
		 * int temp1=0; for (int i=0;i<cart1.size();i++) { int
		 * grandtotal=temp1+price; }
		 */

		// this is for default values
		cart.setQuantity(1);
		cart.setTotalPrice(pr.getProductprice());
		cart.setProduct(pr);
		System.out.println("add");
		cartService.add(cart);
		session.setAttribute("crt", cartService.getAllProduct().size());

		return "redirect:/viewall";
	}

	@RequestMapping("delete/cart/{id}")
	public String delcart(@PathVariable("id") int id, ModelMap model, HttpSession session) {
		System.out.println("bala4");
		cartService.delete(id);
		session.setAttribute("crt", cartService.getAllProduct().size());
		return "redirect:/cart";
	}

	@RequestMapping({"/cart","user/cart"})
	public String getcart(Model map) {
		CartItems cart = new CartItems();
		List<CartItems> cart1 = cartService.getAllProduct();
		map.addAttribute("cart", cart);
		// this is for view in the jsp page which is get from cart service
		map.addAttribute("cartshow", cartService.getAllProduct());
		return "cart";
	}

	@RequestMapping("/pv")
	public String getproductview(Model map) {
		Product pv = new Product();

		map.addAttribute("pv",pv);
		// this is for view in the jsp page which is get from cart service
		map.addAttribute("productList", productService.getAllProduct());
		return "productview";

}
}