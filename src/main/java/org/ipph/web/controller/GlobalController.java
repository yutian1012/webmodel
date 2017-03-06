package org.ipph.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ipph.web.exception.NotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 处理所有未匹配到请求，返回404页面
 */
@Controller
@RequestMapping
public class GlobalController {
	/**
	 * 全局处理器--不能在使用了oauth后再使用，否则oauth会无效
	 * @throws NotFoundException 
	 */
	@RequestMapping("/**")
	public void index(HttpServletRequest request,HttpServletResponse response) throws NotFoundException{
		throw new NotFoundException("路径匹配错误!");
	}
}
