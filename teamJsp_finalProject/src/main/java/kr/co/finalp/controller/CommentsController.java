package kr.co.finalp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.finalp.dao.CommentsDao;
import kr.co.finalp.dto.CommentsDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CommentsController {

	@Autowired
	CommentsDao dao;

	public void setDao(CommentsDao dao) {
		this.dao = dao;
	}
	
	
		
	
}
