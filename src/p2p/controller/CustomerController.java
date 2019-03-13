package p2p.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import p2p.model.Customer;
import p2p.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/register")
	public String register(Customer customer) {
		try {
			customerService.insertCustomerInformation(customer);
			return "forward:/success.jsp";
		} catch (Exception e) {
			return "Login";
		} 
	}
	
	@RequestMapping("/login")
	public String login(Customer customer,HttpSession httpSession) {
		
		Customer list = customerService.validation(customer);
		
		if(list!=null) {
			httpSession.setAttribute("cid", list.getCid());
			System.out.println(httpSession.getAttribute("cid"));
			return "forward:/home.jsp";
		}
		
		return "Login";
	}
	
	@RequestMapping("/backHome")
	public String backHome() {
		return "forward:/home.jsp";
	}
	
	@RequestMapping("/personal")
	public String personal() {
		return "forward:/personal/personal.jsp";
	}
}
