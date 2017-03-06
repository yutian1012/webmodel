package org.ipph.web.controller.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
/**
 * 基本使用
 */
@Controller
@RequestMapping("/ipph/hello")
public class HelloworldController {
	@RequestMapping("/test1")
	public ModelAndView helloworld(HttpServletRequest request,HttpServletResponse response){
		return new ModelAndView("/ipph/hello/Helloworld");
	}
	
	//返回字符串测试
	@RequestMapping("/test2")
	public String helloworld2(HttpServletRequest request,HttpServletResponse response){
		return "/ipph/hello/Helloworld";
	}
	
	//重定向测试
	@RequestMapping("/test3")
	public String helloworld3(HttpServletRequest request,HttpServletResponse response){
		return "redirect:/ipph/hello/test1";
	}
	
	@RequestMapping("/test4")
	public ModelAndView helloworld4(HttpServletRequest request,HttpServletResponse response){
		return new ModelAndView("redirect:/ipph/hello/test1");
	}
}
