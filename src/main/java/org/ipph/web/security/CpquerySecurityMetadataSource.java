package org.ipph.web.security;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.ipph.util.spring.SpringContextHolder;
import org.ipph.web.security.model.CpqueryRole;
import org.ipph.web.security.service.CpqueryRoleService;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
/**
 * 封装资源需要的授权角色集合
 */
public class CpquerySecurityMetadataSource implements FilterInvocationSecurityMetadataSource {
	@Resource
	private CpqueryRoleService cpqueryRoleService;
	
	public final static ConfigAttribute  ROLE_CONFIG_PUBLIC=new SecurityConfig("ROLE_PUBLIC");
	public final static ConfigAttribute  ROLE_CONFIG_ANONYMOUS=new SecurityConfig("ROLE_ANONYMOUS");
	public final static ConfigAttribute  ROLE_CONFIG_USER=new SecurityConfig("ROLE_USER");//默认访问角色
	
	/**具有匿名访问权限的url*/
	private  HashSet<String> anonymousUrls=new HashSet<String>();
   
	/**
	 * 设置具有匿名访问权限的url
	 * @param anonymousUrls
	 */
	public  void setAnonymousUrls(HashSet<String> anonymousUrls) {
		this.anonymousUrls = anonymousUrls;
	}
	
	@Override
	public Collection<ConfigAttribute> getAllConfigAttributes() {
		return null;
	}
	/**
     * 根据当前的URL返回该url需要的角色集合。
     * @param url
     */
	@Override
	public Collection<ConfigAttribute> getAttributes(Object obj) throws IllegalArgumentException {
		Collection<ConfigAttribute> configAttribute =new HashSet<ConfigAttribute>();
		
		FilterInvocation filterInvocation=((FilterInvocation)obj);
    	HttpServletRequest request=filterInvocation.getRequest();
    	
    	String url = request.getRequestURI();//用户请求的url地址
    	url=removeCtx(url,request.getContextPath());//去掉系统的前缀
    	//匿名访问的URL
    	if(anonymousUrls.contains(url)){//不支持正则
    		configAttribute.add(ROLE_CONFIG_ANONYMOUS);
    		return configAttribute;
    	}

    	if(cpqueryRoleService==null){
    		cpqueryRoleService=SpringContextHolder.getBean(CpqueryRoleService.class);
    	}
    	List<CpqueryRole> roleList=cpqueryRoleService.getRoleListByUrl(url);
		if(null!=roleList&&roleList.size()>0){
			for(CpqueryRole role:roleList){
	    		configAttribute.add(new SecurityConfig(role.getRoleName()));
	    	}
		}else{//设置访问的默认角色
			configAttribute.add(ROLE_CONFIG_USER);
    		return configAttribute;
		}
    	
    	return configAttribute;
	}

	@Override
	public boolean supports(Class<?> arg0) {
		return true;
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
