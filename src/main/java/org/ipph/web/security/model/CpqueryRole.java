package org.ipph.web.security.model;

import org.ipph.core.db.model.BaseEntity;

/**
 * 用户角色信息
 */
public class CpqueryRole extends BaseEntity{
	private static final long serialVersionUID = 1L;
	private String roleName;//角色名

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
}
