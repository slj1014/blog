package com.slj.blog.test.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.slj.blog.entity.Suggestion;
import com.slj.blog.service.SuggestionService;
import com.slj.blog.test.base.BaseTest;

public class SuggestionServiceTest extends BaseTest {
	@Autowired
	private SuggestionService suggestionService;
	
	@Test
	public void sendSuggestion(){
		Suggestion suggestion=new Suggestion();
		suggestion.setFromName("沈留健");
		suggestion.setCreateTime(System.currentTimeMillis());
		suggestion.setSubject("这是邮件");
		suggestion.setContent("这是内容");
		suggestion.setToAddress("1019412998@qq.com");
		suggestion.setIsRead(false);
		suggestionService.sendSuggestion(suggestion);
	}

}
