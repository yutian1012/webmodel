package org.ipph.web.controller.test;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * spring mvc中的编码处理问题
 */
@Controller
@RequestMapping("/ipph/hello")
public class EncodeController {
	/**
	 * 提供访问encode.jsp的地址
	 */
	@RequestMapping("/encode")
	public String index(HttpServletRequest request,HttpServletResponse response){
		//response.setContentType("text/plain;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setAttribute("hello", "你好");
		return "/ipph/hello/encode";
	}
	
	/**
	 * 返回中文
	 */
	@RequestMapping(value="/encode1")
	@ResponseBody
	public String encode1(HttpServletRequest request,HttpServletResponse response){
		return "中国";
	}
	
	/**
	 * 返回中文
	 */
	@RequestMapping("/encode2")
	public void encode2(HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/plain;charset=utf-8");
		try {
			response.getWriter().write("中国");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 请求中文
	 * localhost:8080/webmodel/ipph/hello/encode3?hello=你好
	 */
	@RequestMapping("/encode3")
	public void encode3(HttpServletRequest request,HttpServletResponse response){
		System.out.println(request.getContentType());
		System.out.println(request.getCharacterEncoding());
		System.out.println(response.getContentType());
		System.out.println(response.getCharacterEncoding());
		String hello=request.getParameter("hello");
		
		System.out.println(hello);
	}
	
	/**
	 * 请求中文
	 * localhost:8080/webmodel/ipph/hello/encode4?hello=你好
	 */
	@RequestMapping("/encode4")
	public void encode4(HttpServletRequest request){
		request.getCharacterEncoding();//null
		String hello=request.getParameter("hello");
		String h=new String(hello.getBytes(Charset.forName("iso8859-1")),Charset.forName("utf-8"));
		System.out.println(hello);
		System.out.println(h);
	}
	
	
	/**
	 * 请求中文(失败)
	 * localhost:8080/webmodel/ipph/hello/encode5?hello=你好
	 */
	@RequestMapping("/encode5")
	public void encode5(HttpServletRequest request){
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String hello=request.getParameter("hello");
		System.out.println(hello);
	}
}
