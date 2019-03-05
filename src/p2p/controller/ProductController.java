package p2p.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import p2p.model.Product;
import p2p.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/findAllProduct")
	public String findAllProduct(Model model) throws Exception {
		List<Product> product = productService.findAllProduct();
		System.out.println("success"+product.size());
		
		model.addAttribute("products", product);
		
		return "forward:/product.jsp";
	}

}
