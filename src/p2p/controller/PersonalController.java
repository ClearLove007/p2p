package p2p.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/personal")
public class PersonalController {
	
	@RequestMapping("/forwardPassword")
	public String forwardPassword() {
		return "forward:/updatePassword.jsp";
	}
	
	@RequestMapping("/forwardBankcard")
	public String forwardBankcard() {
		return "forward:/bankcard.jsp";
	}
}
