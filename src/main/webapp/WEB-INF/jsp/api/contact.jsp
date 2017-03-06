<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html >
<head>
<title>gwssi</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<!--[if lt IE 9]>
<script src="module/resources/bootstrap2.3.2/js/html5shiv.js" tppabs="http://114.251.8.193/module/resources/bootstrap2.3.2/js/html5shiv.js"></script>
<![endif]-->
<meta http-equiv="X-UA-Compatible" content="edge" />
<link href="${ctx}/module/resources/bootstrap2.3.2/css/bootstrap.css" tppabs="http://114.251.8.193/module/resources/bootstrap2.3.2/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="${ctx}/module/resources/bootstrap2.3.2/css/bootstrap-responsive.css" tppabs="http://114.251.8.193/module/resources/bootstrap2.3.2/css/bootstrap-responsive.css" rel="stylesheet" media="screen">
<link href="${ctx}/module/resources/beacon/css/beacon_main.css" tppabs="http://114.251.8.193/module/resources/beacon/css/beacon_main.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="${ctx}/module/resources/bootstrap2.3.2/js/jquery.min.js" tppabs="http://114.251.8.193/module/resources/bootstrap2.3.2/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/module/resources/beacon/js/beacon_jquery_common.js" tppabs="http://114.251.8.193/module/resources/beacon/js/beacon_jquery_common.js"></script>
<script type="text/javascript" src="${ctx}/module/resources/beacon/js/beacon_jquery_main.js" tppabs="http://114.251.8.193/module/resources/beacon/js/beacon_jquery_main.js"></script>
<script type="text/javascript">
var errorCode = '';
var errorDesc = '';
</script>
        <link rel="stylesheet" type="text/css" href="${ctx}/common/css/index.css" tppabs="http://114.251.8.193/common/css/index.css">
            
        <script src="${ctx}/common/js/slides_2.js" tppabs="http://114.251.8.193/common/js/slides_2.js" type="text/javascript" charset="utf-8"></script>

        <style type="text/css">
            #footer {
                position: absolute;
            }
        </style>
<link rel="shortcut icon" href="${ctx}/favicon.ico" tppabs="http://114.251.8.193/favicon.ico" />

<script type="text/javascript">

    function logout() {
        var _otherFunction1 = function () {

            var xurl = 'freeze.main-txn-code=logout.htm'/*tpa=http://114.251.8.193/freeze.main?txn-code=logout*/;
            window.location.href = xurl;
        };

        var _otherButtons = ["确定"];
        var _otherButtonStyles = ['btn-danger'];
        var _otherFunction = [_otherFunction1];

        $.fz_common.confirm("退出系统", "<p id='logoutTxtTip'>确认退出系统？</p>", null, _otherButtons,
                _otherButtonStyles, _otherFunction);

        $($("#logoutTxtTip").parent().next().children("button")[0]).text("取消");
    }

    function returnHome() {

        window.location.href = "index.jsp.htm"/*tpa=http://114.251.8.193/index.jsp*/;
    }
</script>

<link rel="stylesheet" type="text/css" href="${ctx}/common/css/index.css" tppabs="http://114.251.8.193/common/css/index.css">

<script src="${ctx}/common/js/slides_2.js" tppabs="http://114.251.8.193/common/js/slides_2.js" type="text/javascript" charset="utf-8"></script>


<script type="text/javascript">
    if (top.location.href != window.location.href) {
        top.location.href = "index.htm"/*tpa=http://114.251.8.193/*/;
    }

    $(document).ready(function () {

        if (errorDesc != '') {
//            if(errorCode || errorCode != '') {
//                $.fz_common.alert("错误", '错误代码:' + errorCode + ' 错误描述:' + errorDesc);
//            }else{
                $.fz_common.alert("错误： ", errorDesc);
//            }
//        alert(errorDesc);
        }

        if ('null' != 'null') {
            $("#haslogin").removeAttr("style");
//                $("#haslogin").css('display','block');
        } else {
            $(".unlogin").removeAttr("style");
        }

        $('.subs .header:first').addClass('active');
        $('.subs li:not(:first)').hide();
        $('.subs .header').hover(function () {
            $(this).addClass('hover');
        }, function () {
            $(this).removeClass('hover');
        });
        $('.subs .header').click(function () {
            $(this).next('li').slideToggle()
                    .siblings('li').slideUp();
            $(this).toggleClass('active')
                    .siblings('.header').removeClass('active');

        });


    });
</script>

<style type="text/css">

    @media (max-width: 1366px) {

        .nav-item {
            margin-right: 50px;
        }

        .login .unlogin {
            margin-left: 50px;
        }
    }

    @media (min-width: 1366px) {

        .nav-item {
            margin-right: 70px;
        }

        .unlogin {
            /*margin-left: 50px;*/
        }
    }

    .right_content ul {
        margin:10px;
    }
    .right_content strong {
        font-size: 16px;
    }
    .right_content img {
        padding:10px;
    }

    /*@media (max-height: 767px) {*/

    /*#footer {*/
    /*position: absolute;*/
    /*}*/
    /*}*/

</style>
        <script type="text/javascript">
//            if (errorDesc != '') {
//                alert(errorDesc);
//            }
            if (top.location.href != window.location.href) {
                top.location.href = "index.htm"/*tpa=http://114.251.8.193/*/;
            }

            $(document).ready(function () {
                if ('null' != 'null') {
                    $("#haslogin").removeAttr("style");
//                $("#haslogin").css('display','block');
                } else {
                    $(".unlogin").removeAttr("style");
                }

            });
        </script>
    </head>
    <body >

        <header id="smlhead">
            <div id="inn">
                <a class="logo" href="index.jsp.htm" tppabs="http://114.251.8.193/index.jsp">DI开放平台</a>
                <nav class="navright loginfalse">
                    <a href="index.jsp.htm" tppabs="http://114.251.8.193/index.jsp" class="nav-item">首页</a>
                    <a href="lib.jsp.htm" tppabs="http://114.251.8.193/lib.jsp" class="nav-item">资料库</a>
                    <a href="web/api/patent/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/patent/applist.jsp" class="nav-item">API列表</a>
                    <a href="feedback.jsp.htm" tppabs="http://114.251.8.193/feedback.jsp" class="nav-item">建议与反馈</a>
                    <a href="contact.jsp.htm" tppabs="http://114.251.8.193/contact.jsp" class="nav-item onn">联系我们</a>

                    <div id="haslogin" class="nav-item" style="display: none">
                        欢迎您:null
                        <a class="button regb button-large" href="user/userInfo.jsp.htm" tppabs="http://114.251.8.193/user/userInfo.jsp">用户中心</a>
                        <a class="button regb button-large" href="#" onclick="logout();">安全退出</a>
                    </div>
                    <a href="login.jsp.htm" tppabs="http://114.251.8.193/login.jsp" class="button login unlogin"
                       style="display: none">登录</a>
                    <a href="register.jsp.htm" tppabs="http://114.251.8.193/register.jsp" class="button regb unlogin"
                       style="display: none">注册</a>
                </nav>
            </div>
        </header>
        <div class="main_content">
            <div class="left-menu">
                <ul>
                    <li class="top-menu firstChild">
                        <div>
                            <a href="web/api/accessIndex.jsp.htm" tppabs="http://114.251.8.193/web/api/accessIndex.jsp">应用接入索引</a>
                        </div>
                    </li>
                    <li>
                        <div class="sidebar-menu"><a href="#guideMeun" class="nav-header menu-first collapsed"
                                                     data-toggle="collapse"> 新手指引 <span
                                class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span> </a>
                            <ul id="guideMeun" class="nav nav-list in collapse menu-second menu-two">
                                <li><a href="web/api/accessGuide.jsp.htm" tppabs="http://114.251.8.193/web/api/accessGuide.jsp">应用接入流程</a></li>
                                <li  class="firstChild"><a class="current" href="contact.jsp.htm" tppabs="http://114.251.8.193/contact.jsp">联系我们,技术支持</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="sidebar-menu"><a href="#oauthMeun" class="nav-header menu-first collapsed"
                                                     data-toggle="collapse"> OAuth协议介绍 <span
                                class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span> </a>
                            <ul id="oauthMeun" class="nav nav-list collapse menu-second menu-two">
                                <li><a href="web/api/oauth/intro.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/intro.jsp">OAuth2.0简介</a></li>
                                <li><a href="web/api/oauth/doc.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/doc.jsp">OAuth2.0开发文档</a></li>
                                <li><a href="web/api/oauth/authorization.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/authorization.jsp">Authorization
                                    Code</a></li>
                                <li><a href="web/api/oauth/implicit.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/implicit.jsp">Implicit
                                    Grant</a></li>
                                <li><a href="web/api/oauth/refreshToken.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/refreshToken.jsp">Refresh
                                    Token</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="sidebar-menu">
                            <a href="#userMeun" class="nav-header menu-first collapsed" data-toggle="collapse"> API列表
                                <span class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span>
                            </a>
                            <ul id="userMeun" class="nav nav-list collapse menu-second menu-two">
                                <li><a href="web/api/patent/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/patent/applist.jsp">专利检索</a></li>
                                <li><a href="web/api/trademark/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/trademark/applist.jsp"
                                    
                                >商标检索</a></li>
                                <li><a href="web/api/periodical/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/periodical/applist.jsp">期刊检索</a></li>
                                <li><a href="web/api/standard/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/standard/applist.jsp">标准检索</a></li>
                                <li><a                                         href="web/api/cases/decision/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/cases/decision/applist.jsp">复审决定检索</a></li>                                 <li><a href="web/api/cases/referee/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/cases/referee/applist.jsp">裁判文书检索</a>                                 </li>                                 <li><a href="web/api/cases/law/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/cases/law/applist.jsp">法律法规检索</a>                                 </li>
                                <li><a href="web/api/analysis/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/analysis/applist.jsp">分析</a></li>
                                <li><a href="web/api/bigdata/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/bigdata/applist.jsp">大数据</a></li>
                                <li><a href="web/api/others/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/others/applist.jsp">其他</a></li>
                                </ul>                         </div>                     </li>                     <li>                         <div class="sidebar-menu">                             <a href="#appendixMeun" class="nav-header menu-first collapsed" data-toggle="collapse">附录                                 <span class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span>                             </a>                             <ul id="appendixMeun" class="nav nav-list collapse menu-second menu-two">                                 <li><a href="web/api/appendix/appendix.jsp.htm" tppabs="http://114.251.8.193/web/api/appendix/appendix.jsp">开放平台代码集</a>                                 </li>                                 <li><a href="web/api/appendix/common.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/common.html?user=null">通用代码集</a>                                 </li>                                 <li><a href="web/api/appendix/patent.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/patent.html?user=null">专利代码集</a>                                 </li>                                 <li><a href="web/api/appendix/trademark.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/trademark.html?user=null">商标代码集</a>                                 </li>                                 <li><a href="web/api/appendix/standard.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/standard.html?user=null">标准代码集</a>                                 </li>                                 <li><a href="web/api/appendix/periodical.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/periodical.html?user=null">期刊代码集</a>                                 </li>                                 <li><a href="web/api/appendix/referee.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/referee.html?user=null">裁判文书代码集</a>                                 </li>                                 <li><a href="web/api/appendix/law.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/law.html?user=null">法律法规代码集</a>                                 </li>                                 <li><a href="web/api/appendix/decision.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/decision.html?user=null">审查决定代码集</a>                                 </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                      <div class="sidebar-menu"> 
	                    <a href="#questionMeun" class="nav-header menu-first collapsed" data-toggle="collapse"> 常见问题
	                    	<span class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span> 
	                      </a>                             
		                      <ul id="questionMeun" class="nav nav-list collapse menu-second menu-two">                                 
			                      <li><a href="web/api/datalibrary/cniper.jsp.htm" tppabs="http://114.251.8.193/web/api/datalibrary/cniper.jsp">开放平台FAQ</a></li>
			                      <li><a href="web/api/datalibrary/codeFAQ.jsp.htm" tppabs="http://114.251.8.193/web/api/datalibrary/codeFAQ.jsp">开发联调FAQ</a></li>                                 
			                      <li><a href="web/api/datalibrary/concept.jsp.htm" tppabs="http://114.251.8.193/web/api/datalibrary/concept.jsp">概念和术语</a></li>
	                     	 </ul>                         
                      </div> 
                    </li>
                    <li>
                        <div class="sidebar-menu">
                            <a href="#updateMeun" class="nav-header menu-first collapsed" data-toggle="collapse"> 更新通知
                                <span class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span>
                            </a>
                            <ul id="updateMeun" class="nav nav-list collapse menu-second menu-two">
                                <li><a href="index.jsp.htm" tppabs="http://114.251.8.193/index.jsp">平台更新</a></li>
                                <li><a href="index.jsp.htm" tppabs="http://114.251.8.193/index.jsp">API更新</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="right_content">
                <div class="page-header">
                    <h3>联系我们，技术支持</h3>
                </div>
                <table class="table table-bordered table-hove table-striped">
                    <tbody>
                    
                        
                    
                    <tr>
                        <td>地址：北京市海淀区西外太平庄55号知识产权出版社有限责任公司</td>
                    </tr>
                    <tr>
                        <td>邮编：100088</td>
                    </tr>
                    <tr>
                        <td>电话：4001880860</td>
                    </tr>
                    
                        
                    
                    </tbody>
                </table>
            </div>
        </div>

        <div id="footer">
            <div id="footer-v0">
                <div class="footer-container">
                    <div class="ali-pages">
                        <p class="copyright">版权所有：知识产权出版社有限公司&nbsp;&nbsp;&nbsp;&nbsp;未经许可不得复制</p>
                        <p class="copyright">备案/许可证号：京ICP备09007110号</p>
                        <p class="copyright">邮箱：4001880860@cnipr.com</p>
                        <p class="copyright">本系统建议使用火狐、谷歌、IE11及以上版本浏览器 分辨率设置高于1366*768</p>
                    </div>
                </div>
            </div>
        </div>


    <script type="text/javascript" src="${ctx}/module/resources/bootstrap2.3.2/js/bootstrap.min.js" tppabs="http://114.251.8.193/module/resources/bootstrap2.3.2/js/bootstrap.min.js"></script>
</body>
</html>

