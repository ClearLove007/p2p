package p2p.controller;

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
		Product product = productService.findAllProduct();
		System.out.println("success");
		model.addAttribute("products", product);
		return "forward:/NewFile.jsp";
	}
	
	@RequestMapping("/findProductById")
	public String findProductById(String id,Model model) throws Exception{
		Product product = productService.findProductById(Integer.valueOf(id));
		System.out.println(id);
		model.addAttribute("productById", product);
		return "forward:/NewFile.jsp";
	}
	
//	public String findProductByName() throws Exception{
//		s
//	}
}
