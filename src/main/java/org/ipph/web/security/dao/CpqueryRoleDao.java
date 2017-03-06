package org.ipph.web.security.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ipph.core.db.mybatis.MybatisBaseDao;
import org.ipph.web.security.model.CpqueryRole;
import org.springframework.stereotype.Component;
/**
 * 角色dao
 */
@Component
public class CpqueryRoleDao extends MybatisBaseDao<CpqueryRole>{

	@Override
	public Class<?> getEntityClass() {
		return CpqueryRole.class;
	}
	/**
	 * 根据用户名获取角色集合
	 * @param username
	 * @return
	 */
	public List<CpqueryRole> getRoleByUsername(String username){
		Map<String, Object> param=new HashMap<String, Object>();
		param.put("username", username);
		return getList("getRoleByUsername",param);
	}
	/**
	 * 根据资源路径获取对应的角色集合
	 * @param url
	 * @return
	 */
	public List<CpqueryRole> getRoleListByUrl(String url){
		Map<String,Object> param=new HashMap<String,Object>();
		param.put("url", url);
		return getList("getRoleListByUrl",param);
	}

}
