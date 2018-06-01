package com.slj.blog.entity;

import java.io.Serializable;

public class Article implements Serializable {
	private static final long serialVersionUID = 1L;
	//id
	private Integer articleId;
	//创建时间
	private Long articleCreate;
	//修改时间
	private Long articleUpdate;
	//标题
	private String articleTitle;
	//内容
	private String articleContent;
	//简单描述（截取文章前150个文字）
	private String articleDes;
	//类别
	private Integer articleCategory;
	//类型（0：原创，1：引用）
	private Integer articleType;
	//引用连接
	private String articleUrl;
	//文章图片连接
	private String articleImage;
	//阅读数
	private Integer articleRead;
	//用户ID
	private Integer userId;
	
	
	//新增字段
	private String articleCreateStr;
	
	public String getArticleCreateStr() {
		return articleCreateStr;
	}
	public void setArticleCreateStr(String articleCreateStr) {
		this.articleCreateStr = articleCreateStr;
	}
	public Integer getArticleId() {
		return articleId;
	}
	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}
	public Long getArticleCreate() {
		return articleCreate;
	}
	public void setArticleCreate(Long articleCreate) {
		this.articleCreate = articleCreate;
	}
	public Long getArticleUpdate() {
		return articleUpdate;
	}
	public void setArticleUpdate(Long articleUpdate) {
		this.articleUpdate = articleUpdate;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public String getArticleContent() {
		return articleContent;
	}
	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public String getArticleImage() {
		return articleImage;
	}
	public void setArticleImage(String articleImage) {
		this.articleImage = articleImage;
	}
	public Integer getArticleCategory() {
		return articleCategory;
	}
	public void setArticleCategory(Integer articleCategory) {
		this.articleCategory = articleCategory;
	}
	public Integer getArticleType() {
		return articleType;
	}
	public void setArticleType(Integer articleType) {
		this.articleType = articleType;
	}
	public String getArticleUrl() {
		return articleUrl;
	}
	public void setArticleUrl(String articleUrl) {
		this.articleUrl = articleUrl;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getArticleDes() {
		return articleDes;
	}
	public void setArticleDes(String articleDes) {
		this.articleDes = articleDes;
	}
	public Integer getArticleRead() {
		return articleRead;
	}
	public void setArticleRead(Integer articleRead) {
		this.articleRead = articleRead;
	}
	@Override
	public String toString() {
		return "Article [articleId=" + articleId + ", articleCreate=" + articleCreate + ", articleUpdate="
				+ articleUpdate + ", articleTitle=" + articleTitle + ", articleContent=" + articleContent
				+ ", articleDes=" + articleDes + ", articleCategory=" + articleCategory + ", articleType=" + articleType
				+ ", articleUrl=" + articleUrl + ", articleImage=" + articleImage + ", userId=" + userId + "]";
	}
}
