package com.slj.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.slj.blog.entity.Article;
import com.slj.blog.mapper.ArticleMapper;
import com.slj.blog.service.ArticleService;
import com.slj.blog.utils.DateUtil;

@Service
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleMapper articleDao;
    @Value("${IMAGE_URL}")
    private String IMAGE_URL;

    @Override
    public Article findById(int articleId) {
        Article article = articleDao.findById(articleId);
        if (article != null) {
            article.setArticleImage(IMAGE_URL + article.getArticleImage());
            article.setArticleCreateStr(DateUtil.LongToString(article.getArticleCreate(), DateUtil.NORMALPATTERN));
        }
        return article;
    }

    @Override
    @Transactional
    public void createArtilce(Article article) {
        articleDao.createArticle(article);
    }

    // 首页文章显示
    @Override
    public List<Article> findIndexArticle() {
        List<Article> articles = articleDao.findIndexArticle();
        if (articles != null) {
            for (Article article : articles) {
                article.setArticleImage(IMAGE_URL + article.getArticleImage());
                article.setArticleCreateStr(DateUtil.LongToString(article.getArticleCreate(), DateUtil.NORMALPATTERN));
            }
        }
        return articles;
    }

    @Override
    public PageInfo<Article> findPageArticle(Integer page, Integer pageSize, Article article) {
        PageHelper.startPage(page, pageSize);
        List<Article> articles = articleDao.findPageArticle(article);
        if (articles != null) {
            for (Article paramarticle : articles) {
                paramarticle.setArticleImage(IMAGE_URL + paramarticle.getArticleImage());
                paramarticle.setArticleCreateStr(
                        DateUtil.LongToString(paramarticle.getArticleCreate(), DateUtil.NORMALPATTERN));
            }
        }
        PageInfo<Article> pageInfo = new PageInfo<Article>(articles);
        return pageInfo;
    }

    @Override
    @Transactional
    public void updateArticleRead(int articleId) {
        articleDao.updateArticleRead(articleId);
    }

    @Override
    public Article findNextArticle(long createTime) {
        return articleDao.findNextArticle(createTime);
    }

    @Override
    public Article findPreviousArticle(long createTime) {
        return articleDao.findPreviousArticle(createTime);
    }
}
