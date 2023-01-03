package com.ezen.book.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.book.domain.BoardVO;
import com.ezen.book.domain.PagingVO;
import com.ezen.book.handler.PagingHandler;
import com.ezen.book.repository.MemberDAO;
import com.ezen.book.service.BoardService;
import com.ezen.book.service.MemberServiceImpl;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/board/*")
@Controller
public class BoardController {

	@Inject
	private BoardService bsv;
	@Inject
	private MemberDAO mdao;
	@Inject
	private MemberServiceImpl msv;
	
	
	@GetMapping("/list")
	public String list(Model model,PagingVO pvo){
		log.info(">>>pageNo :"+pvo.getPageNo());
		List<BoardVO> list=bsv.getList(pvo);
		model.addAttribute("list", list);
		int totalCount=bsv.getTotalCount(pvo);
		PagingHandler ph = new PagingHandler(pvo,totalCount);
		model.addAttribute("pgh",ph);
		
		return "/board/list";
	}
}
