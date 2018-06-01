package com.slj.blog.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.SocketUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.slj.blog.common.CodeStatus;
import com.slj.blog.common.Result;
import com.slj.blog.entity.Article;
import com.slj.blog.service.ArticleService;

@Controller
@RequestMapping("/article")
public class ArticleController {
	protected final Logger LOG = LoggerFactory.getLogger(ArticleController.class);
	@Autowired
	private ArticleService articleService;
	@RequestMapping(value="/createAtricle.html",method=RequestMethod.POST)
	public String createAtricle(@ModelAttribute("article") Article article) {
		LOG.info("文章插入");
		try {
			article.setArticleCreate(System.currentTimeMillis());
			article.setArticleUpdate(System.currentTimeMillis());
			articleService.createArtilce(article);
			LOG.info("文章添加成功");
			return "redirect:/admin.html";
		} catch (Exception e) {
			LOG.error("文章添加失败,{}", e.getMessage());
			return "redirect:/error.html";
		}
	}

	@RequestMapping(value = "/uploadImage.do", method = RequestMethod.POST)
	@ResponseBody
	public Result uploadImage(@RequestParam MultipartFile imageFile, HttpServletRequest request) {
		Result result = new Result();
		try {
			if (imageFile == null) {
				result.setCode(CodeStatus.NOEXISTENCE);
				result.setMsg("文件不存在");
				return result;
			}
			LOG.info("上传文件开始");
			// 1.获取文件名称
			String fileName = imageFile.getOriginalFilename();// 文件原名称
			// 2.获取文件类型
			String type = fileName.indexOf(".") != -1
					? fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()) : null;
			if (type == null) {
				result.setCode(CodeStatus.PARAMERROR);
				result.setMsg("文件错误");
				return result;
			}
			// 3.判断是否是图片
			if ("GIF".equals(type.toUpperCase()) || "PNG".equals(type.toUpperCase())
					|| "JPG".equals(type.toUpperCase())) {
				//上传路径
				String path = request.getSession().getServletContext().getRealPath("/upload");
				// 自定义的文件名称
				String trueFileName = String.valueOf(System.currentTimeMillis()) + fileName;
				LOG.info("存放图片文件的路径:{}", path);
				File targetFile = new File(path, trueFileName);
				if (!targetFile.exists()) {
					targetFile.mkdirs();
				}
				// 转存文件到指定的路径
				imageFile.transferTo(targetFile);
				LOG.info("文件上传完成");
				result.setCode(CodeStatus.SUCCESS);
				result.setData(request.getContextPath()+"/upload/"+trueFileName);
				result.setMsg("上传完成");
				return result;
			} else {
				result.setCode(CodeStatus.PARAMERROR);
				result.setMsg("文件类型错误");
				return result;
			}
		} catch (Exception e) {
			LOG.error("图片上传失败,{}", e.getMessage());
			result.setCode(CodeStatus.FAILED);
			return result;
		}
	}
}
