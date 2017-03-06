package org.ipph.web.controller.cpquery;

import java.util.List;

import javax.annotation.Resource;

import org.spider.model.CpqueryPatentFee;
import org.spider.model.CpqueryPatentFeeBack;
import org.spider.model.CpqueryPatentFeeLast;
import org.spider.model.CpqueryPatentFeePaid;
import org.spider.model.CpqueryPatentFeeUnpaid;
import org.spider.service.CpqueryPatentFeeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * 费用
 */
@Controller
@RequestMapping("/cpquery/")
public class CpqueryPatentFeeController {
	
	@Resource
	private CpqueryPatentFeeService cpqueryPatentFeeService;
	/**
	 * 费用信息
	 * 测试：http://localhost:8080/webmodel/cpquery/fee/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="fee/{appNumber}",produces={"application/json"})
	@ResponseBody
	public CpqueryPatentFee getCpqueryPatentFee(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentFeeService.getByAppNumber(appNumber);
	}
	/**
	 * 滞纳金
	 * 测试：http://localhost:8080/webmodel/cpquery/fee/last/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="fee/last/{appNumber}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentFeeLast> getCpqueryPatentFeeLasts(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentFeeService.getCpqueryPatentFeeLasts(appNumber);
	}
	/**
	 * 退费
	 * 测试：http://localhost:8080/webmodel/cpquery/fee/back/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="fee/back/{appNumber}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentFeeBack> getCpqueryPatentFeeBacks(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentFeeService.getCpqueryPatentFeeBacks(appNumber);
	}
	/**
	 * 已缴费
	 * 测试：http://localhost:8080/webmodel/cpquery/fee/paid/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="fee/paid/{appNumber}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentFeePaid> getCpqueryPatentFeePaids(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentFeeService.getCpqueryPatentFeePaids(appNumber);
	}
	/**
	 * 未缴费
	 * 测试：http://localhost:8080/webmodel/cpquery/fee/unpaid/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="fee/unpaid/{appNumber}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentFeeUnpaid> getCpqueryPatentFeeUnpaids(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentFeeService.getCpqueryPatentFeeUnpaids(appNumber);
	}
}
