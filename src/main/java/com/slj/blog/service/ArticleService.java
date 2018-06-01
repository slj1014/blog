package com.slj.blog.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.slj.blog.entity.Article;

public interface ArticleService {
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
    void createArtilce(Article article);

    /**
     * 查选首页文章
     *
     * @return
     */
    List<Article> findIndexArticle();

    /**
     * 分页查询文章
     *
     * @param page
     * @param pageSize
     * @param article
     * @return
     */
    PageInfo<Article> findPageArticle(Integer page, Integer pageSize, Article article);

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
