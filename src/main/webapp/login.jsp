<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html >
<head>
<title>cpquery接口</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<%@ include file="common/include/common.jsp"%>
<script src="${ctx}/common/tool/jquery.md5.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/common/css/index.css">
<style type="text/css">
    #footer {
        position: absolute;
    }
</style>
</head>
    <body >
        <%@ include file="common/include/header.jsp"%>
        <div class="main_content">
            <div class="loginbox">
                <div class="page-header loginh">
                    <h2>用户登录</h2>
                </div>
                <div style="text-align: center;">
	                <c:if test="${param.authentication_error==1 }">
				      <font color="red">
				        Your login attempt was not successful, try again.<br/>
				        Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
				      </font>
				    </c:if>
			    </div>
                <form class="form-signin" name="loginForm" id="loginForm" method="post" action="<c:url value='login'/>" style="margin: 0; padding: 0;">
                    <div class="reggroup">
                        <div class="spanx"><span>*</span>用户名：</div>
                        <input type="text" class="feedinput reginput" name="username" id="username" placeholder="请输入用户名" value='<c:if test="${not empty param.login_error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>'>
                    </div>
                    <div class="reggroup">
                        <div class="spanx"><span>*</span>密码：</div>
                        <input type="password" class="feedinput reginput" name="password1" id="password1" placeholder="请输入密码">
                        <input type="hidden" name="password" id="password"/>
                    </div>
                    <div class="reggroup">
                    	<div class="spanx"></div>
                    	<input type="checkbox" name="remember-me">
                        <span style="color:black;">Don't ask for my password for two weeks</span>
                    </div>
                    <input data-toggle="tooltip" placeholder="_locale" required type="hidden" name="_locale" value="zh_CN" id="_locale">
                    <div class="reggroup">
                        <div class="loginbotton">
                            <input data-loading-text="登录中" name="submitButton" id="submitButton" type="submit" class="bottong" style="width: 120px" value="登录">
                        </div>
                    </div>
                    <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>" value="<c:out value="${_csrf.token}"/>"/>
                </form>
                <script>
                    $(function () {
                        $("form").submit(function () {
                            var v = $.md5($("#password1").val());
                            $("#password").val(v);
                            $("#password1").attr("disabled", "true");
                            return true;
                        });
                    });
                </script>
            </div>
        </div>
        
    <script type="text/javascript" src="module/resources/bootstrap2.3.2/js/bootstrap.min.js"></script>
</body>
</html>
