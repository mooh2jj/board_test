package com.myspring.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myspring.dto.UserVO;

@Controller
public class UserController {

	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping("/testup")
	public void selectList(Model model) {
		
		List<UserVO> selectAll = sqlSession.selectList("usermapper.select");
		model.addAttribute("selectAll", selectAll);
		
	}
	
	
	
	@RequestMapping("/insert")
	public void insert(@RequestParam UserVO uvo) {
		
		
		
	}
	
}
