package kr.co.finalp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.finalp.dao.GalleryDao;
import kr.co.finalp.dto.PageUtill;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PhotoGalleryController {

	@Autowired
	GalleryDao dao;
	
	public void setDao(GalleryDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/GameScene")
	public ModelAndView gameScene(@RequestParam(name = "currentPage", defaultValue = "1")int currentPage
									, Model model) {
		
		// 총 게시물 수
		int totalNumber = dao.getTotal();
		
		// 페이지당 게시물수
		int countPerPage = 9;
		
		// 총 페이지 수
		Map<String, Object> map = PageUtill.getPageData(totalNumber, countPerPage, currentPage);
		
		model.addAttribute("map", map);
		
		int startNo = (int)map.get("startNo");
		int endNo = (int)map.get("endNo");
		
		return new ModelAndView("photoGalleryGameScene", "list", dao.selectAll(startNo, endNo));
	}
	
}
