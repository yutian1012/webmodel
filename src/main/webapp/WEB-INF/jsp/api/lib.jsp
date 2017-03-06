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
<script src="${ctx}/module/resources/bootstrap2.3.2/js/html5shiv.js" tppabs="http://114.251.8.193/module/resources/bootstrap2.3.2/js/html5shiv.js"></script>
<![endif]-->
<meta http-equiv="X-UA-Compatible" content="edge" />
<link href="${ctx}/module/resources/bootstrap2.3.2/css/bootstrap.css" tppabs="http://114.251.8.193/module/resources/bootstrap2.3.2/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="${ctx}/module/resources/bootstrap2.3.2/css/bootstrap-responsive.css" tppabs="http://114.251.8.193/module/resources/bootstrap2.3.2/css/bootstrap-responsive.css" rel="stylesheet" media="screen">
<link href="${ctx}/module/resources/beacon/css/beacon_main.css" tppabs="http://114.251.8.193/module/resources/beacon/css/beacon_main.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="${ctx}/module/resources/bootstrap2.3.2/js/jquery.min.js" tppabs="http://114.251.8.193/module/resources/bootstrap2.3.2/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/module/resources/beacon/js/beacon_jquery_common.js" tppabs="http://114.251.8.193/module/resources/beacon/js/beacon_jquery_common.js"></script>
<script type="text/javascript" src="${ctx}/module/resources/beacon/js/beacon_jquery_main.js" tppabs="http://114.251.8.193/module/resources/beacon/js/beacon_jquery_main.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/common/css/index.css" tppabs="http://114.251.8.193/common/css/index.css">
<script src="${ctx}/common/js/slides_2.js" tppabs="http://114.251.8.193/common/js/slides_2.js" type="text/javascript" charset="utf-8"></script>
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

</style>
<script type="text/javascript">
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
            //window.location.href = "txn0101.do.htm"/*tpa=http://114.251.8.193/txn0101.do*/;
           
</script>
<script type="text/javascript">
var errorCode = '';
var errorDesc = '';
</script>
</head>
    <body >
        <header id="smlhead">
            <div id="inn">
                <a class="logo" href="index.jsp.htm" tppabs="http://114.251.8.193/index.jsp">DI开放平台</a>
                <nav class="navright loginfalse">
                    <a href="index.jsp.htm" tppabs="http://114.251.8.193/index.jsp" class="nav-item">首页</a>
                    <a href="lib.jsp.htm" tppabs="http://114.251.8.193/lib.jsp" class="nav-item onn">资料库</a>
                    <a href="web/api/patent/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/patent/applist.jsp" class="nav-item">API列表</a>
                    <a href="feedback.jsp.htm" tppabs="http://114.251.8.193/feedback.jsp" class="nav-item">建议与反馈</a>
                    <a href="contact.jsp.htm" tppabs="http://114.251.8.193/contact.jsp" class="nav-item">联系我们</a>

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
            <div class="ziliaoka">
                <div class="left-ziliao">
                    <h2>应用接入方式：</h2>
                        <p><a><img src="${ctx}/common/images/xxd.png" tppabs="http://114.251.8.193/common/images/xxd.png"><span>Web应用</span></a></p>
                </div>
                <div class="middle-ziliao">
                    <h2>应用接入方式：</h2>
                    <ul>
                        <li> <p> <a href="web/api/accessIndex.jsp.htm" tppabs="http://114.251.8.193/web/api/accessIndex.jsp"> 应用接入指引</a> </p> </li>
                        <li><p> <a href="web/api/accessGuide.jsp.htm#申请成为开发者" tppabs="http://114.251.8.193/web/api/accessGuide.jsp#申请成为开发者">申请成为开发者</a> </p> </li>
                        <li><p>	<a href="web/api/accessGuide.jsp.htm#创建应用" tppabs="http://114.251.8.193/web/api/accessGuide.jsp#创建应用">创建应用</a>	</p></li>
                        <li><p>	<a href="web/api/patent/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/patent/applist.jsp">API列表</a></p>
                        </li><li><p>	<a href="web/api/oauth/intro.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/intro.jsp">OAuth2.0简介</a></p>
                    </li>
                    </ul>
                </div>
                <div class="right-ziliao">
                    <h2>常见问题：</h2>
                    <ul>
                        <li> <p> <a href="web/api/datalibrary/cniper.jsp.htm" tppabs="http://114.251.8.193/web/api/datalibrary/cniper.jsp"> DI开放平台为何采用OAuth2.0协议？</a> </p> </li>
                        <li><p><a href="web/api/datalibrary/cniper.jsp.htm" tppabs="http://114.251.8.193/web/api/datalibrary/cniper.jsp">DI开放平台登录与其他应用是否冲突？</a> </p> </li>
                        <li><p>	<a href="web/api/appendix.jsp.htm#.status" tppabs="http://114.251.8.193/web/api/appendix.jsp#.status">DI开放平台返回码说明</a></p> </li>
                        <li><p>	<a href="web/api/accessGuide.jsp.htm#申请成为开发者" tppabs="http://114.251.8.193/web/api/accessGuide.jsp#申请成为开发者">如何申请成为开发者？</a></p></li>
                        <li><p>	<a href="web/api/accessGuide.jsp.htm" tppabs="http://114.251.8.193/web/api/accessGuide.jsp">如何接入应用？</a></p>
                        </li><li><p>	<a href="web/api/datalibrary/concept.jsp.htm" tppabs="http://114.251.8.193/web/api/datalibrary/concept.jsp">概念和术语</a></p> </li>
                    </ul>
                </div>
            </div>
            <div class="ziliaoka">
                <div class="page-header">
                    <h3>平台更新</h3>

                    <table width="97%"  cellspacing="0"  class="api-table">
                        <tr>
                            <th>标题</th>
                            <th>更新时间</th>
                        </tr>
                        <tr>
                            <td><a href="contact.jsp.htm" tppabs="http://114.251.8.193/contact.jsp">DI开放平台上线，联系试用</a></td>
                            <td>2016-8-26</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="ziliaoka">
                <div class="page-header">
                    <h3>API更新</h3>
                    <table width="97%"  cellspacing="0"  class="api-table">
                        <tr>
                            <th>标题</th>
                            <th>更新时间</th>
                        </tr>
                        <tr>
                            <td><a href="web/api/patent/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/patent/applist.jsp">专利检索</a></td>
                            <td>2016-8-26</td>
                        </tr>
                        <tr>
                            <td><a href="web/api/trademark/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/trademark/applist.jsp">商标检索</a></td>
                            <td>2016-8-26</td>
                        </tr>
                        <tr>
                            <td><a href="web/api/periodical/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/periodical/applist.jsp">期刊检索</a></td>
                            <td>2016-8-26</td>
                        </tr>
                        <tr>
                            <td><a href="web/api/standard/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/standard/applist.jsp">标准检索</a></td>
                            <td>2016-8-26</td>
                        </tr>
                        <tr>
                            <td><a href="web/api/cases/decision/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/cases/decision/applist.jsp">复审决定检索</a></td>
                            <td>2016-8-26</td>
                            
                        </tr>
                        <tr>
                            <td><a href="web/api/cases/referee/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/cases/referee/applist.jsp">裁判文书检索</a></td>
                            <td>2016-8-26</td>
                            
                        </tr>
                        <tr>
                            <td><a href="web/api/cases/law/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/cases/law/applist.jsp">法律法规检索</a></td>
                            <td>2016-8-26</td>
                            
                        </tr>
                        <tr>
                            <td><a href="web/api/analysis/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/analysis/applist.jsp">分析</a></td>
                            <td>2016-8-26</td>
                        </tr>
                        <tr>
                            <td><a href="web/api/bigdata/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/bigdata/applist.jsp">大数据</a></td>
                            <td>2016-8-26</td>
                        </tr>
                    </table>
                </div>
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
</body>
<script type="text/javascript" src="${ctx}/module/resources/bootstrap2.3.2/js/bootstrap.min.js" tppabs="http://114.251.8.193/module/resources/bootstrap2.3.2/js/bootstrap.min.js"></script>
</html>

