package org.ipph.web.security.service;

import javax.annotation.Resource;

import org.ipph.core.db.dao.BaseEntityDao;
import org.ipph.core.service.BaseService;
import org.ipph.web.security.dao.CpqueryUserDao;
import org.ipph.web.security.model.CpqueryUser;
import org.springframework.stereotype.Service;

@Service
public class CpqueryUserService extends BaseService<CpqueryUser> {
	
	@Resource
	private CpqueryUserDao cpqueryUserDao;

	@Override
	protected BaseEntityDao<CpqueryUser> getBaseDao() {
		return cpqueryUserDao;
	}
	
	public CpqueryUser loadUserByUsername(String username){
		return cpqueryUserDao.loadUserByUsername(username);
	}
	
}
