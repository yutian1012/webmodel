package org.ipph.web.controller.cpquery;

import java.util.List;

import javax.annotation.Resource;

import org.spider.model.CpqueryPatentExamFile;
import org.spider.model.CpqueryPatentExamFileDownload;
import org.spider.service.CpqueryPatentExamFileService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * 审查文件
 */
@Controller
@RequestMapping("/cpquery/")
public class CpqueryPatentExamFileController {
	
	@Resource
	private CpqueryPatentExamFileService cpqueryPatentExamFileService;
	
	/**
	 * 审查文件
	 * 测试：http://localhost:8080/webmodel/cpquery/examfile/2010102905518
	 * @param appNumber
	 * @return
	 */
	@RequestMapping(value="examfile/{appNumber}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentExamFile> getCpqueryPatentExamFiles(@PathVariable("appNumber")String appNumber){
		return cpqueryPatentExamFileService.getByAppNumber(appNumber);
	}
	/**
	 * 获取文档内容
	 * 测试：http://localhost:8080/webmodel/cpquery/examfile/2010102905518/1013305731
	 * @param appNumber
	 * @param rid
	 * @return
	 */
	@RequestMapping(value="examfile/{appNumber}/{rid}",produces={"application/json"})
	@ResponseBody
	public List<CpqueryPatentExamFileDownload> getCpqueryPatentExamFileDownloads(@PathVariable("appNumber")String appNumber,@PathVariable("rid")String rid){
		return cpqueryPatentExamFileService.getCpqueryPatentExamFileDownloadByAppNumberAndRid(appNumber, rid);
	}
}
