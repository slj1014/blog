package com.slj.blog.controller;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.slj.blog.common.CodeStatus;
import com.slj.blog.common.Result;
import com.slj.blog.entity.User;
import com.slj.blog.service.UserService;
import com.slj.blog.utils.MD5Util;
import com.slj.blog.utils.ThreadUtils;
import com.slj.blog.utils.WebUtils;
@Controller
@RequestMapping("/user")
public class UserController {
	protected final Logger LOG = LoggerFactory.getLogger(UserController.class);
	@Autowired
	private UserService userService;
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	@ResponseBody
	public Result register(@RequestParam(required = true, value = "username") String username,
			@RequestParam(required = true, value = "password") String password) {
		try {
			if(userService.findUserByUsername(username)!=null){
                Result result=new Result();
				result.setMsg("用户已存在");
				result.setCode(CodeStatus.EXISTED);
				return result;
			}
			User user=new User();
			user.setUserMail(username);
			password=MD5Util.MD5(password);
			user.setUserPassword(password);
            userService.register(user);
			return Result.createSuccess();
		} catch (Exception e) {
			LOG.error("注册失败,{}", e.getMessage());
			return Result.createFailed(e.getMessage());
		}
	}
	
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public Result login(@RequestParam(required = true, value = "username") String username,
			@RequestParam(required = true, value = "password") String password,final HttpServletRequest request){
		try{
			Result result=new Result();
			final User user=userService.findUserByUsername(username);
			if(user==null){
				result.setCode(CodeStatus.NOEXISTENCE);
				result.setMsg("用户不存在");
				return result;
			}
			password=MD5Util.MD5(password);
			if(!password.equals(user.getUserPassword())){
				result.setCode(CodeStatus.PARAMERROR);
				result.setMsg("用户名或密码错误");
				return result;
			}
			result.setCode(CodeStatus.SUCCESS);
            //存入session
			request.getSession().setAttribute("user", user);
			
			//异步更新IP和登录时间
			ThreadUtils.getExecutorService().execute(new Runnable() {
				@Override
				public void run() {
					user.setUserIp(WebUtils.getIpAddr(request));
					user.setUserLogin(System.currentTimeMillis());
					userService.updateOneUser(user);
				}
			});
			return result;
		}catch(Exception e){
			LOG.error("登录失败,{}", e.getMessage());
			return Result.createFailed(e.getMessage());
		}
	}
}
