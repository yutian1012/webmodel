package org.ipph.web.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.ipph.web.security.model.CpqueryUser;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
/**
 * 这里只是模拟测试使用
 */
public class TestUserDetailsService implements UserDetailsService{
	/**
	 * 模拟用户数据
	* 根据用户名获取用户 - 用户的角色、权限等信息
	* 为了简便，不从数据库中查询了，这里直接使用模拟数据
	*/
	@Override
	public UserDetails loadUserByUsername(String arg0)
			throws UsernameNotFoundException {
		CpqueryUser user=new CpqueryUser();
		user.setPassword("test");
		user.setUsername("test");
		user.setEnabled(true);
		user.setGrantedAuthorityList(getAuthorities());
		return null;
	}
	/**
	 * 模拟权限角色数据
	 * @return
	 */
	private Collection<GrantedAuthority> getAuthorities(){
		List<GrantedAuthority> authList = new ArrayList<GrantedAuthority>();
		authList.add(new SimpleGrantedAuthority("ROLE_USER"));
		authList.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
		return authList;
	}

}
