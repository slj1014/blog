package com.slj.blog.test.utils;

import org.junit.Test;

import com.slj.blog.utils.MailUtil;

public class MailUtilTest {
	@Test
   public void senMailTest(){
	   String host="smtp.163.com";
	   String mailUser="slj_zone@163.com";
	   String mailPassword="shenliujian1014";
	   String toAddress="1019412998@qq.com";
	   String subject="这是邮件注册";
	   String content="<p>这是一封测试文件</p>";
	   try {
		MailUtil.sendMail(host, mailUser, mailPassword, toAddress, subject, content);
	} catch (Exception e) {
		e.printStackTrace();
	}
   }
}
