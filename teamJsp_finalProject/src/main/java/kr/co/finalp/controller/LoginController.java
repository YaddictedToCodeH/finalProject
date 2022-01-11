package kr.co.finalp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public void login(String error, String logout, Model model) {
		if(error != null) {
			model.addAttribute("error", "없는 ID이거나 ID 혹은 PW가 일치하지 않습니다.");
		}else if(logout != null) {
			model.addAttribute("logout", "logout");
		}
	}
	
	@RequestMapping("/login/loginOk")
	public String loginOk() {
		return "loginOk";
	}
	
	@RequestMapping("/common/cLogout")
	public String logout() {
		return "common/cLogout";
	}
	
}
