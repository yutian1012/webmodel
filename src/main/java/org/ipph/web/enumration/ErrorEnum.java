package org.ipph.web.enumration;
/**
 * 错误代码异常
 */
public enum ErrorEnum{
	SQL("SQL","数据库执行错误");
	private String code;
	private String message;
	private ErrorEnum(String code,String message){
		this.code=code;
		this.message=message;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
