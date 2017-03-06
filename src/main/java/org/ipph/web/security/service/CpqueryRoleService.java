package org.ipph.web.security.service;

import java.util.List;

import javax.annotation.Resource;

import org.ipph.core.db.dao.BaseEntityDao;
import org.ipph.core.service.BaseService;
import org.ipph.web.security.dao.CpqueryRoleDao;
import org.ipph.web.security.model.CpqueryRole;
import org.springframework.stereotype.Service;

@Service
public class CpqueryRoleService extends BaseService<CpqueryRole>{

	@Resource
	private CpqueryRoleDao cpqueryRoleDao;
	
	@Override
	protected BaseEntityDao<CpqueryRole> getBaseDao() {
		return cpqueryRoleDao;
	}

	public List<CpqueryRole> getRoleByUsername(String username){
		return cpqueryRoleDao.getRoleByUsername(username);
	}
	
	public List<CpqueryRole> getRoleListByUrl(String url){
		return cpqueryRoleDao.getRoleListByUrl(url);
	}
}
