package com.slj.blog.test.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.github.pagehelper.PageInfo;
import com.slj.blog.entity.Article;
import com.slj.blog.service.ArticleService;
import com.slj.blog.test.base.BaseTest;

public class ArticleServiceTest extends BaseTest {
	@Autowired
	private ArticleService articleService;

	@Test
	public void findById() {
		Article article = articleService.findById(1);
		System.out.println(article);
	}

	@Test
	public void findIndexArticle() {
		List<Article> articles = articleService.findIndexArticle();
		for (Article article : articles) {
			System.out.println(article);
		}
	}

	@Test
	public void findPageArticle() {
		Article article = new Article();
		PageInfo<Article> pageInfo = articleService.findPageArticle(1, 10, article);
		System.out.println(pageInfo.getPages());
		List<Article> list=pageInfo.getList();
		for (Article a : list) {
			System.out.println(a);
		}
        
	}
	
	@Test
	public void updateArticleRead(){
		articleService.updateArticleRead(12);
	}
}
