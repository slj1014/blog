package com.slj.blog.mapper;

import java.util.List;
import com.slj.blog.entity.Article;

public interface ArticleMapper {
	/**
	 * 根据Id查询文章
	 * 
	 * @param articleId
	 * @return
	 */
	Article findById(int articleId);

	/**
	 * 创建文章
	 * 
	 * @param article
	 */
	void createArticle(Article article);

	/**
	 * 查询最近三篇文章
	 * 
	 * @return
	 */
	List<Article> findIndexArticle();

	/**
	 * 分页查询文章
	 * 
	 * @param article
	 * @return
	 */
	List<Article> findPageArticle(Article article);

	/**
	 * 更新文章
	 * 
	 * @param articleId
	 */
	void updateArticleRead(int articleId);

	/**
	 * 查询文章后一篇内容
	 * 
	 * @param createTime
	 * @return
	 */
	Article findNextArticle(long createTime);

	/**
	 * 查询前一篇文章
	 * 
	 * @param createTime
	 * @return
	 */
	Article findPreviousArticle(long createTime);
}