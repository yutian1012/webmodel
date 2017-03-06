package org.ipph.web.controller.cpquery;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.ipph.web.enumration.StatusEnum;
import org.ipph.web.model.cpquery.ResultModel;
import org.spider.model.CpqueryPatentApply;
import org.spider.model.CpqueryPatentApplyAgent;
import org.spider.model.CpqueryPatentApplyAlteration;
import org.spider.model.CpqueryPatentApplyContactor;
import org.spider.model.CpqueryPatentApplyPriority;
import org.spider.model.CpqueryPatentApplyer;
import org.spider.service.CpqueryPatentApplyService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * 申请
 */
@Controller
@RequestMapping("/cpquery/")
@Validated
public class CpqueryPatentApplyController {
	
	@Resource
	private CpqueryPatentApplyService cpqueryPatentApplyService;
	
	/**
	 * 获取申请信息及关联信息
	 * 测试：http://localhost:8080/webmodel/cpquery/shenqing/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="shenqing/{appNumber:\\d{13}}",produces={"application/json"})
	@ResponseBody
	public CpqueryPatentApply getCpqueryPatentApply(HttpServletRequest request,@PathVariable(value="appNumber")String appNumber){
		String username=(String) request.getSession().getAttribute("SPRING_SECURITY_LAST_USERNAME");
		return cpqueryPatentApplyService.getAllByAppNumber(appNumber);
	}
	/**
	 * 获取基础的申请信息
	 * 测试：http://localhost:8080/webmodel/cpquery/shenqing/info/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="shenqing/info/{appNumber:\\d{13}}",produces={"application/json"})
	@ResponseBody
	public CpqueryPatentApply getCpqueryPatentApplyInfo(@PathVariable(value="appNumber")String appNumber){
		return cpqueryPatentApplyService.getByAppNumber(appNumber);
	}
	/**
	 * 代理信息
	 * 测试：http://localhost:8080/webmodel/cpquery/shenqing/agent/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="shenqing/agent/{appNumber:\\d{13}}",produces={"application/json"})
	@ResponseBody
	public CpqueryPatentApplyAgent getCpqueryPatentApplyAgent(@PathVariable(value="appNumber")String appNumber){
		return cpqueryPatentApplyService.getAgentByAppNumber(appNumber);
	}
	/**
	 * 联系人信息
	 * 测试：http://localhost:8080/webmodel/cpquery/shenqing/contactor/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="shenqing/contactor/{appNumber:\\d{13}}",produces={"application/json"})
	@ResponseBody
	public CpqueryPatentApplyContactor getCpqueryPatentApplyContactor(@PathVariable(value="appNumber")String appNumber){
		return cpqueryPatentApplyService.getContactorByAppNumber(appNumber);
	}
	/**
	 * 变更信息
	 * 测试：http://localhost:8080/webmodel/cpquery/shenqing/alteration/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="shenqing/alteration/{appNumber:\\d{13}}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentApplyAlteration> getCpqueryPatentApplyAlterations(@PathVariable(value="appNumber")String appNumber){
		return cpqueryPatentApplyService.getAlterationByAppNumber(appNumber);
	}
	/**
	 * 申请人信息
	 * 测试：http://localhost:8080/webmodel/cpquery/shenqing/applyer/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="shenqing/applyer/{appNumber:\\d{13}}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentApplyer> getCpqueryPatentApplyers(@PathVariable(value="appNumber")String appNumber){
		return cpqueryPatentApplyService.getApplyerByAppNumber(appNumber);
	}
	/**
	 * 优先权信息
	 * 测试：http://localhost:8080/webmodel/cpquery/shenqing/priority/2016106768697
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="shenqing/priority/{appNumber:\\d{13}}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentApplyPriority> getCpqueryPatentApplyPriorities(@PathVariable(value="appNumber")String appNumber){
		return cpqueryPatentApplyService.getPriorityByAppNumber(appNumber);
	}
	
	/**
	 * 根据专利申请人查询--返回该申请人对应的申请信息，可以再根据申请人对应的申请号进一步检索出信息
	 * 测试：http://localhost:8080/webmodel/cpquery/shenqing/applicant
	 * 皇家飞利浦电子股份有限公司
	 * ,method=RequestMethod.POST
	 */
	@RequestMapping(value="shenqing/applicant",produces={"application/json"})
	@ResponseBody
	public ResultModel<CpqueryPatentApply> getPageByApplicantName(HttpServletRequest request,@RequestParam(value="pageSize",defaultValue="20")int pageSize,
			@RequestParam(value="startPage",defaultValue="1")int startPage,@RequestParam(value="applicantName",required=true) String applicantName)throws Exception{
		ResultModel<CpqueryPatentApply> result=new ResultModel<CpqueryPatentApply>();
		result.setStatus(StatusEnum.SUCCESS.ordinal());
		result.setPageResult(cpqueryPatentApplyService.getPageByApplicantName(pageSize, startPage, applicantName));
		return result;
	}
}
