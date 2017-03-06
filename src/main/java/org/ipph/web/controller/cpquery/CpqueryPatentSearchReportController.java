package org.ipph.web.controller.cpquery;

import java.util.List;

import javax.annotation.Resource;

import org.spider.model.CpqueryPatentSearchBookRef;
import org.spider.model.CpqueryPatentSearchJournalRef;
import org.spider.model.CpqueryPatentSearchPatDocRef;
import org.spider.model.CpqueryPatentSearchReport;
import org.spider.service.CpqueryPatentSearchReportService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * 检索报告
 * 测试：
 */
@Controller
@RequestMapping("/cpquery/")
public class CpqueryPatentSearchReportController {
	
	@Resource
	private CpqueryPatentSearchReportService cpqueryPatentSearchReportService;
	
	/**
	 * 检索报告
	 * 测试：http://localhost:8080/webmodel/cpquery/report/2013800231194/102046796776
	 * @param appNumber
	 * @param rid
	 * @return
	 */
	@RequestMapping(value="report/{appNumber}/{rid}",produces={"application/json"})
	@ResponseBody
	public CpqueryPatentSearchReport getByAppNumber(@PathVariable(value="appNumber")String appNumber,@PathVariable(value="rid")String rid){
		return cpqueryPatentSearchReportService.getByAppNumber(appNumber,rid);
	}
	/**
	 * 书籍对比文献
	 * 测试：http://localhost:8080/webmodel/cpquery/report/book/2013800231194/102046796776
	 * @param appNumber
	 * @param rid
	 * @return
	 */
	@RequestMapping(value="report/book/{appNumber}/{rid}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentSearchBookRef> getCpqueryPatentSearchBookRefs(@PathVariable(value="appNumber")String appNumber,@PathVariable(value="rid")String rid){
		return cpqueryPatentSearchReportService.getCpqueryPatentSearchBookRefs(appNumber, rid);
	}
	/**
	 * 期刊对比文献
	 * 测试：http://localhost:8080/webmodel/cpquery/report/journal/2013800231194/102046796776
	 * @param appNumber
	 * @param rid
	 * @return
	 */
	@RequestMapping(value="report/journal/{appNumber}/{rid}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentSearchJournalRef> getCpqueryPatentSearchJournalRefs(@PathVariable(value="appNumber")String appNumber,@PathVariable(value="rid")String rid){
		return cpqueryPatentSearchReportService.getCpqueryPatentSearchJournalRefs(appNumber, rid);
	}
	/**
	 * 专利对比文献
	 * 测试：http://localhost:8080/webmodel/cpquery/report/pat/2013800231194/102046796776
	 * @param appNumber
	 * @param rid
	 * @return
	 */
	@RequestMapping(value="report/pat/{appNumber}/{rid}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentSearchPatDocRef> getCpqueryPatentSearchPatDocRefs(@PathVariable(value="appNumber")String appNumber,@PathVariable(value="rid")String rid){
		return cpqueryPatentSearchReportService.getCpqueryPatentSearchPatDocRefs(appNumber, rid);
	}
	
}
