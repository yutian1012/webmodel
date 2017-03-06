package org.ipph.web.controller.cpquery;

import java.util.List;

import javax.annotation.Resource;

import org.spider.model.CpqueryPatentDispatch;
import org.spider.model.CpqueryPatentDispatchBack;
import org.spider.model.CpqueryPatentDispatchDiploma;
import org.spider.model.CpqueryPatentDispatchNotice;
import org.spider.service.CpqueryPatentDispatchService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * 发文
 */
@Controller
@RequestMapping("/cpquery/")
public class CpqueryPatentDispatchController {
	
	@Resource
	private CpqueryPatentDispatchService cpqueryPatentDispatchService;
	/**
	 * 获取发文信息
	 * 测试：http://localhost:8080/webmodel/cpquery/dispatch/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="/dispatch/{appNumber}",produces={"application/json"})
	@ResponseBody
	public CpqueryPatentDispatch getAllByAppNumber(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentDispatchService.getByAppNumber(appNumber);
	}
	/**
	 * 获取专利证书
	 * 测试：http://localhost:8080/webmodel/cpquery/dispatch/diploma/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="/dispatch/diploma/{appNumber}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentDispatchDiploma> getCpqueryPatentDispatchDiplomas(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentDispatchService.getCpqueryPatentDispatchDiplomas(appNumber);
	}
	/**
	 * 获取通知
	 * 测试：http://localhost:8080/webmodel/cpquery/dispatch/notice/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="/dispatch/notice/{appNumber}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentDispatchNotice> getCpqueryPatentDispatchNotices(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentDispatchService.getCpqueryPatentDispatchNotices(appNumber);
	}
	/**
	 * 获取退信
	 * 测试：http://localhost:8080/webmodel/cpquery/dispatch/back/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="/dispatch/back/{appNumber}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentDispatchBack> getCpqueryPatentDispatchBacks(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentDispatchService.getCpqueryPatentDispatchBacks(appNumber);
	}
}
