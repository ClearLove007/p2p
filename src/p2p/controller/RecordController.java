package p2p.controller;

import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import p2p.model.Record;
import p2p.service.RecordService;

@Controller
@RequestMapping("/record")
public class RecordController {

	@Autowired
	private RecordService recordService;
	
	@RequestMapping("/findAllRecord")
	public String findAllRecord(HttpSession httpSession,Model model) {
		List<Record> list = recordService.findAllRecord((String) httpSession.getAttribute("cid"));
		
		System.out.println("**************************");
		System.out.println("订单记录的长度"+list.size());
		System.out.println("**************************");
		
		model.addAttribute("records", list);
		
		return "forward:/personal/record.jsp";
	}
}
