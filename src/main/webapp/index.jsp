<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
	<head>
	<title>cpquery接口</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="renderer" content="webkit" />
	<%@ include file="common/include/common.jsp"%>
	<link rel="stylesheet" type="text/css" href="${ctx}/common/css/index.css">
	 <script type="text/javascript">
       $(document).ready(function () {
           if ('' == 'devActSucc') {
               $.fz_common.alert("信息", "邮箱激活成功");
           }
       });
	 </script>
	</head>
    <body>
        <div id="page1" class="page">
            <header id="header">
                <div id="inner">
                    <a class="logo" href="index.jsp">DI开放平台</a>
                    <nav class="navright loginfalse">
                        <a href="${ctx}/" class="nav-item onn">首页</a>
                        <a href="${ctx}/api/lib" class="nav-item">资料库</a>
                        <a href="${ctx}/api/patent/applist" class="nav-item">API列表</a>
                        <a href="${ctx}/api/feedback" class="nav-item">建议与反馈</a>
                        <a href="${ctx}/api/contact" class="nav-item">联系我们</a>
                        <div id="haslogin" class="nav-item" style="display: none">
                        	欢迎您:${username}
                            <a class="button regb button-large" href="${ctx}/api/user/userInfo" >用户中心</a>
                            <a class="button regb button-large" href="#" onclick="logout();">安全退出</a>
                        </div>
                        <a href="login.jsp" class="button login unlogin"  style="display:none">登录</a>
                        <a href="register.jsp" class="button regb unlogin" style="display: none">注册</a>
                    </nav>
                </div>
            </header>
            <div id="slides">
                <div class="slides-container">
                    <img src="${ctx}/common/images/1.jpg">
                    <img src="${ctx}/common/images/2.jpg" >
                    <img src="${ctx}/common/images/3.jpg" >
                </div>
                <nav class="slides-navigation">
                    <a href="#" class="next"></a>
                    <a href="#" class="prev"></a>
                </nav>
            </div>
        </div>
        <div id="page2" class="page">
            <div id="app-show">
                <dl>
                    <a href="#"><i class="app-pic pic_1"></i></a>
                    <div class="app-info">
                        <dt class="app-title">申请成为开发者</dt>
                        <dd class="app-desc">
                            <a href="${ctx}/api/user/develop">申请成为开发者</a></dd>
                    </div>
                </dl>
                <dl>
                    <a href="#"><i class="app-pic pic_2"></i></a>
                    <div class="app-info">
                        <dt class="app-title">创建应用</dt>
                        <dd class="app-desc">
                            <a href="${ctx}/api/user/apply">创建应用</a></dd>
                    </div>
                </dl>
                <dl>
                    <i class="app-pic pic_3"></i>
                    <div class="app-info">
                        <dt class="app-title">OAuth协议和开发文档</dt>
                        <dd class="app-desc">
                            <a href="${ctx}/api/oauth/intro">OAuth协议</a><br>
                            <a href="${ctx}/api/oauth/doc">OAuth开发文档</a></dd>
                    </div>
                </dl>
                <dl>
                    <a href="#"><i class="app-pic pic_4"></i></a>
                    <div class="app-info">
                        <dt class="app-title">请求资源</dt>
                        <dd class="app-desc">
                            <a href="${ctx}/api/patent/applist">资源API</a>
                        </dd>
                    </div>
                </dl>
            </div>
        </div>
        <div id="page3" class="page">
            <div class="news_box">
                <div class="news_list">
                    <h1>最新动态</h1>
                    <ul>
                        <li><a href="${ctx}/api/contact">DI开放平台上线，欢迎联系试用</a></li>
                    </ul>
                </div>
                <div class="news_list">
                    <h1>常见问题</h1>
                    <ul>
                        <li><a href="${ctx}/api/datalibrary/cniper.jsp.htm"> DI开放平台为何采用OAuth2.0协议？</a></li>
                        <li><a href="${ctx}/api/datalibrary/concept.jsp.htm">DI开放平台概念和术语</a></li>
                        <li><a href="${ctx}/api/datalibrary/cniper.jsp.htm">DI开放平台常见问题</a></li>
                        <li><a href="${ctx}/api/datalibrary/codeFAQ.jsp.htm">DI开放平台开发联调FAQ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
       <%@ include file="common/include/footer.jsp" %>
       <form id="logoutform" action="<c:url value='logout'/>" method="POST" style="display:none">
	      <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>" value="<c:out value="${_csrf.token}"/>"/>
	    </form>
	</body>
<script type="text/javascript">
    var sliders = $('#slides').superslides({
        hashchange: false,
        inherit_height_from: '#page1',
        play: 4000,
        animation_speed: 0,
    });
    setTimeout(function () {
        $(sliders[0]).data('superslides').options.animation_speed = 400;
    }, 100);
</script>
</html>
