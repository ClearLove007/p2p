package p2p.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import p2p.service.CustomerService;

@Controller
@RequestMapping("/personal")
public class PersonalController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/forwardPassword")
	public String forwardPassword() {
		return "forward:/personal/updatePassword.jsp";
	}
	
	@RequestMapping("/forwardTradePassword")
	public String forwardUpdatePassword() {
		return "forward:/personal/updateTradePassword.jsp";
	}
	
	
	@RequestMapping("/forwardBankcard")
	public String forwardBankcard(Model model,HttpSession httpSession) {
		
		String cid = (String) httpSession.getAttribute("cid");
		
		String bankcard = customerService.selectBankCard(cid);
		
		model.addAttribute("bankcard", bankcard);
		
		return "forward:/personal/bankcard.jsp";
	}
	
	@RequestMapping("/forwardRiskTest")
	public String forwardRiskTest() {
		
		return "forward:/personal/riskTest.jsp";
	}
	
	@RequestMapping("/forwardRestMoney")
	public String forwardRestMoney(Model model,HttpSession httpSession) {
		String cid = (String) httpSession.getAttribute("cid");
		
		Double money = customerService.selectMoney(cid);
		
		model.addAttribute("money", money);
		
		return "forward:/personal/restMoney.jsp";
	}
	
	@RequestMapping("/updatePassword")
	public String updatePassword(String password,String newPassword,HttpSession httpSession) {
		
		String cid = (String) httpSession.getAttribute("cid");
		
		String oldPass = customerService.selectPassword(cid);
		
		if(oldPass.equals(password)) {
			customerService.updatePassword(newPassword, cid);
			return "forward:/personal/updatePassword.jsp";
		}
		return "forward:/personal/updatePassword.jsp";
	}
	
	@RequestMapping("/updateTradePassword")
	public String updateTradePassword(String tradePassword,String newTradePassword,HttpSession httpSession) {
		
		String cid = (String) httpSession.getAttribute("cid");
		
		String oldPass = customerService.selectUpdatePassword(cid);
		
		if(oldPass.equals(tradePassword)) {
			customerService.updatePassword(newTradePassword, cid);
			return "forward:/personal/updateTradePassword.jsp";
		}
		
		return "forward:/personal/updateTradePassword.jsp";
	}
}
