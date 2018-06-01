package com.slj.blog.entity;

import java.io.Serializable;

public class User implements Serializable {
	private static final long serialVersionUID = 2L;
	//ID
	private Integer userId;
	// 创建时间
	private Long userCreate;
	// 修改时间
	private Long userUpdate;
	// 登录时间
	private Long userLogin;
	// 登录名，唯一
	private String userNick;
	// 邮箱
	private String userMail;
	// 登录IP
	private String userIp;
	// 头像
	private String userImage;
	// 用户状态（0正常，1注销，2删除）
	private Integer userStatus;
	// 用户类别(0普通用户，1账户管理员)
	private Integer userType;
    // 用户密码
	private String userPassword;
	
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}


	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public Integer getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(Integer userStatus) {
		this.userStatus = userStatus;
	}

	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}
	

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public Long getUserCreate() {
		return userCreate;
	}

	public void setUserCreate(Long userCreate) {
		this.userCreate = userCreate;
	}

	public Long getUserUpdate() {
		return userUpdate;
	}

	public void setUserUpdate(Long userUpdate) {
		this.userUpdate = userUpdate;
	}

	public Long getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(Long userLogin) {
		this.userLogin = userLogin;
	}

	public String getUserIp() {
		return userIp;
	}

	public void setUserIp(String userIp) {
		this.userIp = userIp;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userCreate=" + userCreate + ", userUpdate=" + userUpdate + ", userLogin="
				+ userLogin + ", userNick=" + userNick + ", userMail=" + userMail + ", userIp=" + userIp
				+ ", userImage=" + userImage + ", userStatus=" + userStatus + ", userType=" + userType
				+ ", userPassword=" + userPassword + "]";
	}

}
