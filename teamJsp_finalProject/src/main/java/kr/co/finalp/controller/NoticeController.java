package kr.co.finalp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.finalp.dao.NoticeDao;
import kr.co.finalp.dto.NoticeDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	NoticeDao dao;
	
	
	public void setDao(NoticeDao dao) {
		this.dao = dao;
	}
	
	
//	@GetMapping("/notice")
//	public String notice() {
//		return "notice";
//	}
	

	@GetMapping("/")
	public ModelAndView test(Model model) {
		NoticeDTO dto = dao.selectOne(1);
		return new ModelAndView("notice", "dto", dto);
	}
}
