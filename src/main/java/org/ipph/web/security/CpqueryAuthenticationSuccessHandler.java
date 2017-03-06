package org.ipph.web.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
/**
 * 登录成功，将用户信息放置到session中
 * @author dell2
 *
 */
public class CpqueryAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {
		if (authentication.getPrincipal() != null) {
			request.getSession().setAttribute("username", authentication.getName());
		}
		super.onAuthenticationSuccess(request, response, authentication);
	}
}
