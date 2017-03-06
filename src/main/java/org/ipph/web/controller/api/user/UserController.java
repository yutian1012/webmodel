package org.ipph.web.controller.api.user;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.ipph.web.security.model.CpqueryUser;
import org.ipph.web.security.service.CpqueryUserService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user/")
public class UserController {
	
	@Resource
	private CpqueryUserService cpqueryUserService;
	
	/**
	 * 检查用户是否已存在
	 * @param username
	 * @return
	 */
	@RequestMapping(value="check")
	@ResponseBody
	public boolean checkUser(@RequestParam(value="username",required=true)String username){
		CpqueryUser user=cpqueryUserService.loadUserByUsername(username);
		if(null==user){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 注册用户
	 * @param user
	 * @param result
	 */
	@RequestMapping(value="save",method=RequestMethod.POST)
	public void saveUser(@Valid CpqueryUser user,BindingResult result){
		if(result.hasErrors()){//校验错误
			for(ObjectError error:result.getAllErrors()){
				System.out.println(error.getDefaultMessage());
			}
		}else{//保持数据
			
		}
	}
}
