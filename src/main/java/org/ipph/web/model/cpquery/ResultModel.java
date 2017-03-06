package org.ipph.web.model.cpquery;

import java.util.List;

import org.ipph.core.db.model.PageResult;

public class ResultModel<E>{
	private Integer status;
	private List<E> result;//结果集
	private int rowCount;//总记录数
	private int startPage;//记录开始的位置
	private int pageSize;//每页显示多少条记录
	private String message;//错误消息
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public List<E> getResult() {
		return result;
	}
	public void setResult(List<E> result) {
		this.result = result;
	}
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public void setPageResult(PageResult<E> page){
		if(null!=page){
			this.setPageSize(page.getPageSize());
			this.setRowCount(page.getRowCount());
			this.setStartPage(page.getStartPage());
			this.setResult(page.getResult());
		}
	}
}
