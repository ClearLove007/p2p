package p2p.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import p2p.model.Product;
import p2p.service.CustomerService;
import p2p.service.ProductService;
import p2p.service.RecordService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private RecordService recordService;
	
	@RequestMapping("/findThreeMonth")
	public String findThreeMonth(Model model) throws Exception {
		List<Product> product = productService.findProduct3();
		System.out.println("success"+product.size());
		
		model.addAttribute("product3", product);
		return "forward:/product/3Month.jsp";
	}
	
	@RequestMapping("/findSixMonth")
	public String findSixMonth(Model model) throws Exception {
		List<Product> product = productService.findProduct6();
		System.out.println("success"+product.size());
		
		model.addAttribute("product6", product);
		return "forward:/product/6Month.jsp";
	}
	
	@RequestMapping("/findTwelveMonth")
	public String findTwelveMonth(Model model) throws Exception {
		List<Product> product = productService.findProduct12();
		System.out.println("success"+product.size());
		
		model.addAttribute("product12", product);
		return "forward:/product/12Month.jsp";
	}
	
	@RequestMapping("/findAllProduct")
	public String findAllProduct(Model model) throws Exception {
		List<Product> product = productService.findAllProduct();
		System.out.println("success"+product.size());
		
		model.addAttribute("products", product);
		
		return "forward:/product/product.jsp";
	}
	
	@RequestMapping("/buyProduct")
	public String buyProduct(String pid,String rate,String endtime,Model model,HttpSession httpSession) throws ParseException {
		String cid = (String) httpSession.getAttribute("cid");
		String buytime = GetNowDate();
		model.addAttribute("pid", pid);
		model.addAttribute("cid", cid);
		model.addAttribute("rate", rate);
		model.addAttribute("buytime", buytime);
		model.addAttribute("days", count(buytime,endtime));
		return "forward:/product/listCar.jsp";
	}
	
	@RequestMapping("/insertRecord")
	public String insertRecord(String pid,String cid,String buytime,String price,String rate,String days,String tradePassword) throws ParseException {
		
		if(Double.valueOf(price)>customerService.selectMoney(cid)) {
			return "forward:/error.jsp";
		}
		if(!(customerService.selectUpdatePassword(cid).equals(tradePassword))) {
			return "forward:/error.jsp";
		}
		
		Double earnings = Double.valueOf(price) * Integer.parseInt(rate) * Integer.parseInt(days)/3000;
		
		customerService.updateMoney(Double.valueOf(price), cid);
		recordService.insertRecord(cid, buytime, earnings, pid);
		
		return "forward:/record/findAllRecord";
	}

	/*
	 * 获取当前日期
	 */
	public static String GetNowDate(){   
	    Date dt = new Date();   
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");   
	    String temp_str = sdf.format(dt);   
	    return temp_str;   
	} 
	
	/*
	 * 计算两日期的天数
	 */
	public static String count(String buytime,String endtime) throws ParseException {
		

		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");

		Date d1=sdf.parse(buytime);

		Date d2=sdf.parse(endtime);

		long daysBetween=(d2.getTime()-d1.getTime()+1000000)/(60*60*24*1000);
		
		return String.valueOf(daysBetween);
	}
}
