package org.ipph.web.controller.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ipph.web.model.test.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
/**
 * controller类返回类型
 */
@Controller
@RequestMapping("/ipph/hello")
public class ReturnController {
	/**
	 * 返回字符串类型--该字符串标识了jsp文件目录
	 */
	@RequestMapping("/return1")
	private String return1(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("hello1", "ipph1");
		return "/ipph/hello/return";
	}
	
	/**
	 * 返回ModelAndView对象
	 */
	@RequestMapping("/return2")
	private ModelAndView return2(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv=new ModelAndView("/ipph/hello/return");//方式一，在构造函数中指定
		mv.setViewName("/ipph/hello/return");//方式二，指定viewname
		mv.addObject("hello2","ipph2");//放置返回数据，可在页面中获取
		return mv;
	}
	/**
	 * 返回map
	 * 未设置返回页面，则默认返回请求路径对于的jsp，如果没有jsp则404
	 */
	@ResponseBody
	@RequestMapping("/return3")
    public Map<String, String> return3() {
        Map<String, String> map = new HashMap<String, String>(); 
        map.put("hello3", "ipph3"); 
        return map; 
    }
	
	/**
	 * 模拟返回json数据--不添加jackson依赖，看是否能正确返回
	 * 未设置返回页面，则默认返回请求路径对于的jsp，如果没有jsp则404
	 */
	@ResponseBody
	@RequestMapping("/return4")
    public String return4() {
        return "{\"hello4\":\"ipph4\"}"; 
    }
	/**
	 * 返回对象
	 */
	@RequestMapping("/return5")
	@ResponseBody
    public Employee return5() {
		Employee employee=new Employee();
		employee.setName("hello");
		employee.setAge(22);
		employee.setBirth(new Date());
        return employee;
    }
	
	/**
	 * 返回集合对象
	 */
	@RequestMapping("/return6")
	@ResponseBody
    public List<Employee> return6() {
		List<Employee> list=new ArrayList<Employee>();
		Employee employee=new Employee();
		employee.setName("hello");
		employee.setAge(22);
		employee.setBirth(new Date());
		list.add(employee);
		employee=new Employee();
		employee.setName("hello2");
		employee.setAge(23);
		employee.setBirth(new Date());
		list.add(employee);
        return list;
    }
	
	/**
	 * 返回void
	 */
	@RequestMapping("/return7")
	@ResponseBody
    public void return7() {
		
	}
}
