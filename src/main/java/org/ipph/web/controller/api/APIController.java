package org.ipph.web.controller.api;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api")
public class APIController {
	
	@RequestMapping("/**")
	public String common(HttpServletRequest request,HttpServletResponse response){
		String url = request.getRequestURI();//用户请求的url地址
    	return removeCtx(url,request.getContextPath());//去掉系统的前缀
	}
	/**
	 * 获取当前URL
	 * @param url
	 * @param contextPath
	 * @return
	 */
	private static String removeCtx(String url,String contextPath){
		url=url.trim();
		if(null==contextPath||"".equals(contextPath)) return url;
		if(null==url||"".equals(url)) return "";
		if(url.startsWith(contextPath)){
			url=url.replaceFirst(contextPath, "");
		}
		return url;
	}
}
