package org.ipph.web.controller.cpquery;

import java.util.List;

import javax.annotation.Resource;

import org.spider.model.CpqueryPatentPub;
import org.spider.model.CpqueryPatentPubAffair;
import org.spider.model.CpqueryPatentPubAuth;
import org.spider.service.CpqueryPatentPubService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * 公布公告
 */
@Controller
@RequestMapping("/cpquery/")
public class CpqueryPatentPubController {
	
	@Resource
	private CpqueryPatentPubService cpqueryPatentPubService;
	
	/**
	 * 获取公告
	 * 测试：http://localhost:8080/webmodel/cpquery/pub/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="pub/{appNumber}",produces={"application/json"})
	@ResponseBody
	public CpqueryPatentPub getByAppNumber(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentPubService.getByAppNumber(appNumber);
	}
	
	/**
	 * 公开公告
	 * 测试：http://localhost:8080/webmodel/cpquery/pub/auth/2016106768697
	 */
	@RequestMapping(value="pub/auth/{appNumber}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentPubAuth> getCpqueryPatentPubAuths(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentPubService.getCpqueryPatentPubAuths(appNumber);
	}
	/**
	 * 事务公告
	 * 测试：http://localhost:8080/webmodel/cpquery/pub/affair/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="pub/affair/{appNumber}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentPubAffair> getCpqueryPatentPubAffairs(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentPubService.getCpqueryPatentPubAffairs(appNumber);
	}
	
}
