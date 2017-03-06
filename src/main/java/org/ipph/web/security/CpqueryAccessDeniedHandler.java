package org.ipph.web.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ipph.util.json.JacksonUtil;
import org.ipph.web.enumration.StatusEnum;
import org.ipph.web.model.cpquery.ResultModel;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

public class CpqueryAccessDeniedHandler implements AccessDeniedHandler{

	@Override
	public void handle(HttpServletRequest request,HttpServletResponse response,AccessDeniedException accessDeniedException) throws IOException,ServletException {
		//返回提示信息
		ResultModel<?> result=new ResultModel<>();
		result.setStatus(StatusEnum.ERROR.ordinal());
		result.setMessage(accessDeniedException.getMessage());
		response.setContentType("application/json;charset=UTF-8");
		response.getWriter().println(JacksonUtil.parseObjectToString(result));
	}

}
