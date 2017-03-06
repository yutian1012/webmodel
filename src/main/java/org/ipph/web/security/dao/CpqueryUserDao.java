package org.ipph.web.security.dao;

import java.util.HashMap;
import java.util.Map;

import org.ipph.core.db.mybatis.MybatisBaseDao;
import org.ipph.web.security.model.CpqueryUser;
import org.springframework.stereotype.Repository;
/**
 * 查询用户
 */
@Repository
public class CpqueryUserDao extends MybatisBaseDao<CpqueryUser>{

	@Override
	public Class<?> getEntityClass() {
		return CpqueryUser.class;
	}
	/**
	 * 获取用户
	 * @param username
	 * @return
	 */
	public CpqueryUser loadUserByUsername(String username){
		Map<String,Object> param=new HashMap<String,Object>();
		param.put("username", username);
		return getUnique("loadUserByUsername", param);
	}

}
