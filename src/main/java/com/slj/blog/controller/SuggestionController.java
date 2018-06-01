package com.slj.blog.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.slj.blog.entity.Suggestion;
import com.slj.blog.service.SuggestionService;

@Controller
@RequestMapping("/suggestion")
public class SuggestionController {
	protected final Logger LOG = LoggerFactory.getLogger(SuggestionController.class);

	@Autowired
	private SuggestionService suggestionService;
    
	@RequestMapping(value="/sendMessage.html",method=RequestMethod.POST)
	public String sendMessage(Suggestion suggestion) {
		LOG.info("开始提交建议");
		try {
			LOG.info("建议成功");
			suggestion.setCreateTime(System.currentTimeMillis());
			suggestion.setIsRead(false);
			suggestionService.sendSuggestion(suggestion);
			return "redirect:/contact.html";
		} catch (Exception e) {
			LOG.error("建议发送失败,{}", e.getMessage());
			return "redirect:/error.html";
		}
	}
}
