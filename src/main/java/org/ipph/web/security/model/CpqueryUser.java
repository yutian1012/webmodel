package org.ipph.web.security.model;

import java.util.Collection;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.ipph.core.db.model.BaseEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CpqueryUser extends BaseEntity implements UserDetails {
	private static final long serialVersionUID = 1L;
	@NotNull(message="{user.username.notnull}")
	@Pattern(regexp="^[a-zA-Z0-9]*$",message="{user.username}")
	@Length(min=5,max=32,message="{user.username.len}")
	private String username;
	@NotNull(message="{user.password.notnull}")
	@Length(min=5,max=64,message="{user.password.len}")
	private String password;
	@NotNull(message="{user.realname.notnull}")
	@Length(min=2,max=32,message="{user.realname.len}")
	private String realname;
	@NotNull(message="{user.email.notnull}")
	@Email(message="{user.email}")
	@Length(min=5,max=32,message="{user.email.len}")
	private String email;
	private boolean enabled;
	private Collection<GrantedAuthority> grantedAuthorityList;
	//可以扩展其他字段
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return grantedAuthorityList;
	}
	
	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		return enabled;
	}

	@Override
	public boolean isAccountNonLocked() {
		return enabled;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return enabled;
	}

	@Override
	public boolean isEnabled() {
		return enabled;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public void setGrantedAuthorityList(Collection<GrantedAuthority> grantedAuthorityList) {
		this.grantedAuthorityList = grantedAuthorityList;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
