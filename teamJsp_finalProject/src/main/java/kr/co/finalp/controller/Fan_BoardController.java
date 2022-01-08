package kr.co.finalp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.finalp.dao.Fan_BoardDao;
import kr.co.finalp.dto.Fan_BoardDTO;
import kr.co.finalp.dto.Fan_BoardPageUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class Fan_BoardController {
	
	@Autowired
	Fan_BoardDao dao;

	public void setDao(Fan_BoardDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/fan_board")
	public ModelAndView fan_board(Model model,
			@RequestParam(name="currentPage", defaultValue ="1" ) int currentPage
	) {
		
		int totalNumber = dao.getTotal();
		
		int countPerPage = 10;
		
		Map<String, Object> map = Fan_BoardPageUtil.getPageData(totalNumber, countPerPage, currentPage);
		
		model.addAttribute("map", map);
		
		int startNo = (int) map.get("startNo");
		int endNo = (int) map.get("endNo");
		
		return new ModelAndView("fan_board", "fan_board", dao.selectAll(startNo, endNo));
	}
	
	@GetMapping("/fan_boardDetail")
	public ModelAndView fan_bodardDetailForm(@RequestParam("fanno")int fanno, Model model) {
		Fan_BoardDTO dto = dao.selectOne(fanno);
		int totalNumber = dao.getTotal();
		
		Map<String, Object> map = Fan_BoardPageUtil.getTotal(totalNumber, fanno);
		
		model.addAttribute("map", map);
		
		return new ModelAndView("fan_boardDetail", "dto", dto);
	}
}
