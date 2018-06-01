package com.slj.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.slj.blog.entity.Article;
import com.slj.blog.entity.Suggestion;
import com.slj.blog.service.ArticleService;

@Controller
public class PageConteoller {
	@Autowired
	private ArticleService articleService;

	@RequestMapping("/home.html")
	public String home(Model model) {
		// 获取图片
		List<Article> articles = articleService.findIndexArticle();
		model.addAttribute("articles", articles);
		return "home";
	}

	@RequestMapping("/admin.html")
	public String admin(Model model) {
		Article article = new Article();
		model.addAttribute("article", article);
		return "admin";
	}

	@RequestMapping("/error.html")
	public String error(Model model) {
		return "error";
	}

	@RequestMapping("/build.html")
	public String build() {
		return "build";
	}

	@RequestMapping("/login.html")
	public String login(Model model) {
		model.addAttribute("error", "");
		return "login";
	}

	@RequestMapping("/blog.html")
	public String blog(Model model, @ModelAttribute("article") Article article,
			@RequestParam(required = false, defaultValue = "1") Integer currentPage,
			@RequestParam(required = false, defaultValue = "3") Integer pageSize) {
		// 获取文章信息
		PageInfo<Article> pageInfo = articleService.findPageArticle(currentPage, pageSize, article);
		model.addAttribute("pageInfo", pageInfo);
		// 获取最近文章
		List<Article> articles = articleService.findIndexArticle();
		model.addAttribute("articles", articles);
		String articleTitle=article.getArticleTitle();
		if(!StringUtils.isEmpty(articleTitle)){
			model.addAttribute("articleTitle",articleTitle);
		}else{
			model.addAttribute("articleTitle","");
		}
		return "blog";
	}

	@RequestMapping("/single.html")
	public String single(Model model, @RequestParam(required = true) Integer articleId) {
		Article artilce = articleService.findById(articleId);
		// 1.更新文章阅读数
		articleService.updateArticleRead(articleId);
		model.addAttribute("article", artilce);
		// 2.获取最近3篇文章
		List<Article> articles = articleService.findIndexArticle();
		model.addAttribute("articles", articles);
		// 3.获取上一篇和下一篇文章
		long createTime = artilce.getArticleCreate();
		Article nextArticle = articleService.findNextArticle(createTime);
		Article previousArticle = articleService.findPreviousArticle(createTime);
		model.addAttribute("nextArticle", nextArticle);
		model.addAttribute("previousArticle", previousArticle);
		return "single";
	}

	@RequestMapping("/album.html")
	public String ablum() {
		return "album";
	}

	@RequestMapping("/contact.html")
	public String contact(Model model) {
		Suggestion suggestion = new Suggestion();
		model.addAttribute("suggestion", suggestion);
		return "contact";
	}

	@RequestMapping("/about.html")
	public String about() {
		return "about";
	}
}
