package com.slj.blog.entity;
import java.io.Serializable;
public class Suggestion implements Serializable {
	private static final long serialVersionUID = 3L;
	//id
	private Integer suggestionId;
	//发送人名称
	private String fromName;
	//邮箱地址
	private String toAddress;
	//主题
	private String subject;
	//内容
	private String content;
	//发送时间
	private Long createTime;
	//是否已经读
	private Boolean isRead;
	
	public Long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Long createTime) {
		this.createTime = createTime;
	}

	public Boolean getIsRead() {
		return isRead;
	}

	public void setIsRead(Boolean isRead) {
		this.isRead = isRead;
	}

	public Integer getSuggestionId() {
		return suggestionId;
	}

	public void setSuggestionId(Integer suggestionId) {
		this.suggestionId = suggestionId;
	}

	public String getFromName() {
		return fromName;
	}

	public void setFromName(String fromName) {
		this.fromName = fromName;
	}

	public String getToAddress() {
		return toAddress;
	}

	public void setToAddress(String toAddress) {
		this.toAddress = toAddress;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
