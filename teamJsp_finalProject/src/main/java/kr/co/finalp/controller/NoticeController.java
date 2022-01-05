package kr.co.finalp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.finalp.dao.NoticeDao;
import kr.co.finalp.dto.NoticePageUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
//@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	NoticeDao dao;
	
	
	public void setDao(NoticeDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/notice")
	public ModelAndView notice(Model model,
			@RequestParam(name="currentPage", defaultValue = "1") int currentPage
	) {
		
		int totalNumber = dao.getTotal();
		
		int countPerPage = 10;
		
		Map<String, Object> map = NoticePageUtil.getPageData(totalNumber, countPerPage, currentPage);
		
		model.addAttribute("map", map);
		
		int startNo = (int) map.get("startNo");
		int endNo = (int) map.get("endNo");
		
		return new ModelAndView("notice","notice", dao.selectAll(startNo, endNo) );
	}
		
	
	
	
//	@GetMapping("/notice")
//	public String notice() {
//		return "notice";
//	}
	

//	@GetMapping("/")
//	public ModelAndView test(Model model) {
//		NoticeDTO dto = dao.selectOne(1);
//		return new ModelAndView("notice", "dto", dto);
//	}
}
