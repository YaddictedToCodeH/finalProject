package kr.co.finalp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
			@RequestParam(name="currentPage", defaultValue ="1" ) int currentPage,
			@RequestParam(defaultValue="fan_title") String search_option,  // 기본 검색 옵션값을 제목으로 설정
			@RequestParam(defaultValue="") String keyword // 키워드의 기본값은 ""
	) {
		
		int totalNumber = dao.getTotal();
		
		int countPerPage = 10;
		
		Map<String, Object> map = Fan_BoardPageUtil.getPageData(totalNumber, countPerPage, currentPage, search_option, keyword);
		
		model.addAttribute("map", map);
		
		int startNo = (int) map.get("startNo");
		int endNo = (int) map.get("endNo");
		
		map.put("search_option", search_option); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		
		return new ModelAndView("fan_board", "fan_board", dao.selectAll(startNo, endNo, search_option, keyword));
	}
	
	// 팬게시판에서 클릭시 게시물 상세사항 
	@GetMapping("/fan_boardDetail")
	public ModelAndView fan_bodardDetailForm(@RequestParam("fanno")int fanno) {
		
		Fan_BoardDTO dto = dao.selectOne(fanno);
		
		// 조회수 증가
		dao.raiseHits(fanno);
	
		return new ModelAndView("fan_boardDetail", "dto", dto);
	}
	
	// 작성 클릭시 해당 폼으로 
	@GetMapping("/fan_boardWrite")
	public String fan_boardWrite() {
		return "fan_boardWriteForm";
	}
	
	// 작성 등록
	@PostMapping("/fan_boardWrite")
	public String insert(@ModelAttribute("dto")Fan_BoardDTO dto) {
		dao.InsertOne(dto);
		return "redirect:/fan_board";
	}
	
	// 수정하기 클릭시 해당 폼으로 
	@GetMapping("/fan_boardModify")
	public ModelAndView fan_boardModify(@RequestParam("fanno") int fanno) {
		Fan_BoardDTO dto = dao.selectOne(fanno);
		return new ModelAndView("fan_boardModifyForm", "dto", dto);
	}
	
	// 수정하기 등록
	@PostMapping("/fan_boardModify")
	public String update(@ModelAttribute("dto")Fan_BoardDTO dto) {
		dao.updateOne(dto);
		return "redirect:/fan_board";
	}
	
	// 게시물 삭제
	@RequestMapping("/fan_boardDelete")
	public String delete(@RequestParam("fanno")int fanno) {
		dao.deleteOne(fanno);
		return "redirect:/fan_board";
	}
	
	
}
