package org.ipph.web.controller.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
/**
 * 请求路径限定
 */
@Controller
@RequestMapping("/ipph/hello")
public class PathController {
	/**
	 * 一个处理方法配置多个路径
	 * 访问路径
	 * http://localhost:8080/webmodel/ipph/hello/path1
	 * http://localhost:8080/webmodel/ipph/hello/path2
	 */
	@RequestMapping(value={"/path1","/path2"})
	public String path(HttpServletRequest request,HttpServletResponse response){
		return "/ipph/hello/path";
	}
	/**
	 * uri模板映射路径
	 * 其中{xxx}是占位符，在方法参数中，通过@PathVariable能够提取URI中的userId值
	 * 参数接收要使用基本类型
	 * 访问路径：http://localhost:8080/webmodel/ipph/hello/path3/111
	 * 不能不传递/111，也不能多传递/11/dd
	 * PathVariable的value属性用于绑定路径中的参数与方法的参数
	 */
	@RequestMapping("/path3/{userId}")
	public String path3(HttpServletRequest request,HttpServletResponse response,@PathVariable(value="userId") Integer userId){
		System.out.println(userId);
		return "/ipph/hello/path";
	}
	/**
	 * Ant风格的URL路径--匹配多路径
	 * 所有 /path4/开头的地址都能够映射到，但是，当产生冲突的时候，参考最长匹配优先原则
	 * 访问路径：
	 * http://localhost:8080/webmodel/ipph/hello/path4
	 * http://localhost:8080/webmodel/ipph/hello/path4/ssdd
	 * http://localhost:8080/webmodel/ipph/hello/path4/ssdd/sdd
	 * 注：一般都要使用两个星号，使用一个星号必须要求有反斜杠，否则无法访问。
	 */
	@RequestMapping("/path4/**")
	public String path4(HttpServletRequest request,HttpServletResponse response){
		return "/ipph/hello/path";
	}
	
	/**
	 * Ant风格的URL路径
	 * 访问路径：
	 * http://localhost:8080/webmodel/ipph/hello/path5/name
	 * http://localhost:8080/webmodel/ipph/hello/path5/name33
	 * 一个问号 ?，匹配任意一个字符
	 * 一个星号 *，匹配任意多个字符
	 */
	@RequestMapping("/path5/name*")
	public String path5(HttpServletRequest request,HttpServletResponse response){
		return "/ipph/hello/path";
	}
	/**
	 * 正则表达式路径
	 * 方法参数中，使用@PathVariable("正则表达式名") 获取到请求地址值
	 * 访问路径：
	 * http://localhost:8080/webmodel/ipph/hello/path6/133
	 */
	@RequestMapping("/path6/{digit:\\d*}")
	public String path6(HttpServletRequest request,HttpServletResponse response,@PathVariable(value="digit")int digit){
		System.out.println(digit);
		return "/ipph/hello/path";
	}
	/**
	 * 正则表达式路径
	 */
	@RequestMapping(value="/link/{pubNumber:^[a-zA-Z]{2}\\w+\\(*\\w+\\)*$}/{pubDate:\\d{8}}")
	public String getPdfLink(@PathVariable("pubNumber") String pubNumber,@PathVariable("pubDate")String pubDate){
		return "/ipph/hello/path";
	}
	/**
	 * 请求方法限定
	 * 一般浏览器只支持GET、POST两种请求方法，Spring MVC默认开启了对GET、POST、DELETE、PUT、HEAD的支持
	 * 对于OPTIONS、TRACE请求方法的支持，需要在web.xml中配置
	 */
	@RequestMapping(value="/path7",method={RequestMethod.GET})
	public String path7(HttpServletRequest request,HttpServletResponse response){
		return "/ipph/hello/path";
	}
	/**
	 * 请求参数限定，必须提供相应的参数，否则无法访问
	 * 访问地址：
	 * http://localhost:8080/webmodel/ipph/hello/path8?hello=sdd
	 */
	@RequestMapping(value="/path8",method={RequestMethod.GET})
	public String path8(HttpServletRequest request,HttpServletResponse response,@RequestParam(value="hello")String hello){
		System.out.println(hello);
		return "/ipph/hello/path";
	}
	
	/**
	 * 请求参数限定,指定必须含有id为1的请求参数
	 * 访问地址：
	 * http://localhost:8080/webmodel/ipph/hello/path9?id=1
	 * 也可以配置多个参数值，多个参数之间的配置是且的关系--与关系
	 * params={"id!=1"}，不等于
	 */
	@RequestMapping(value="/path9",method={RequestMethod.GET},params={"id=1"})
	public String path9(HttpServletRequest request,HttpServletResponse response){
		return "/ipph/hello/path";
	}
	/**
	 * 请求参数限定,请求参数不能包含id参数
	 */
	@RequestMapping(value="/path10",method={RequestMethod.GET},params={"!id"})
	public String path10(HttpServletRequest request,HttpServletResponse response){
		return "/ipph/hello/path";
	}
	/**
	 * 请求头信息限定--请求头信息必须有Accept参数
	 * headers="!Accept",请求头不允许包含Accept参数
	 * 用法和params一样，也可以配置多个请求头参数
	 */
	@RequestMapping(value="/path11",method={RequestMethod.GET},headers={"Accept"})
	public String path11(HttpServletRequest request,HttpServletResponse response){
		System.out.println("hello");
		return "/ipph/hello/path";
	}
	
	@RequestMapping(value="/path12")
	public String path12(HttpServletRequest request,HttpServletResponse response){
		
		return "/ipph/hello/path";
	}
}
