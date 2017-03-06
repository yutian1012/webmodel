package org.ipph.web.security;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.ipph.web.security.model.CpqueryRole;
import org.ipph.web.security.model.CpqueryUser;
import org.ipph.web.security.service.CpqueryRoleService;
import org.ipph.web.security.service.CpqueryUserService;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;


public class CpqueryUserDetailsService implements UserDetailsService{
	
	@Resource
	private CpqueryUserService cpqueryUserService;
	@Resource
	private CpqueryRoleService cpqueryRoleService;
	
	@Override
	public UserDetails loadUserByUsername(String username)throws UsernameNotFoundException {
		CpqueryUser user=cpqueryUserService.loadUserByUsername(username);
		user.setGrantedAuthorityList(getAuthorities(username));
		return user;
	}
	/**
	 * 获取用户的授权集合
	 * @param username
	 * @return
	 */
	public List<GrantedAuthority> getAuthorities(String username){
		List<GrantedAuthority> authList = new ArrayList<GrantedAuthority>();
		List<CpqueryRole> roleList=cpqueryRoleService.getRoleByUsername(username);
		if(null!=roleList){
			for(CpqueryRole role:roleList){
				authList.add(new SimpleGrantedAuthority(role.getRoleName()));
			}
		}
		return authList;
	}

}
