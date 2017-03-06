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
        <script src="00_common/js/jquery/jquery.validate.min.js" tppabs="http://114.251.8.193/00_common/js/jquery/jquery.validate.min.js"></script>
        <script src="common/js/slides_2.js" tppabs="http://114.251.8.193/common/js/slides_2.js" type="text/javascript" charset="utf-8"></script>
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
            
            
            
            //window.location.href = "txn0101.do.htm"/*tpa=http://114.251.8.193/txn0101.do*/;

            $().ready(function () {
// 在键盘按下并释放及提交后验证提交表单
                $("#feedbackForm").validate({
                    rules: {
                        feedback_content: {
                            required: true,
                            minlength: 1
                        },
                        feedback_phone: {
                            required: true,
                            minlength: 11
                        },
                        feedback_mail: {
                            required: true,
                            email: true
                        }
                    },
                    messages: {
                        feedback_content: {
                            required: "请输入反馈内容",
                            minlength: "反馈内容不可以为空"
                        },
                        feedback_phone: {
                            required: "请输入合法的电话",
                            minlength: "请输入合法的电话"
                        },
                        feedback_mail: "请输入一个正确的邮箱"
                    }
                });
            });

        </script>


        <style type="text/css">
            #footer {
                position: absolute;
            }
        </style>
    </head>
    <body >

        <header id="smlhead">
            <div id="inn">
                <a class="logo" href="index.jsp.htm" tppabs="http://114.251.8.193/index.jsp">DI开放平台</a>
                <nav class="navright loginfalse">
                    <a href="index.jsp.htm" tppabs="http://114.251.8.193/index.jsp" class="nav-item">首页</a>
                    <a href="lib.jsp.htm" tppabs="http://114.251.8.193/lib.jsp" class="nav-item">资料库</a>
                    <a href="web/api/patent/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/patent/applist.jsp" class="nav-item">API列表</a>
                    <a href="feedback.jsp.htm" tppabs="http://114.251.8.193/feedback.jsp" class="nav-item onn">建议与反馈</a>
                    <a href="contact.jsp.htm" tppabs="http://114.251.8.193/contact.jsp" class="nav-item">联系我们</a>

                    <div id="haslogin" class="nav-item" style="display: none">
                        欢迎您:null
                        <a class="button regb button-large"
                           href="user/userInfo.jsp.htm" tppabs="http://114.251.8.193/user/userInfo.jsp">用户中心</a>
                        <a class="button regb button-large" href="#" onclick="logout();">安全退出</a>
                    </div>
                    <a href="login.jsp.htm" tppabs="http://114.251.8.193/login.jsp" class="button login unlogin"
                       style="display: none">登录</a>
                    <a href="register.jsp.htm" tppabs="http://114.251.8.193/register.jsp" class="button regb unlogin"
                       style="display: none">注册</a>

                </nav>
            </div>
        </header>
        <form id="feedbackForm" action="http://114.251.8.193/txnfeedback.do">
            <div class="main_content">
                <div class="feedback">
                    <p>如果您在使用DI开放平台时遇到问题，或者对我们有任何意见建议，欢迎在此留言，我们将关注您的问题并尽快与您联系。</p>
                    <div class="feedgroup">
                        您的建议：
                    </div>
                    <div class="feedgroup">
					<textarea name="feedback_content" cols="" rows="" placeholder="亲爱的用户：
　　请在这里输入您的意见、建议，我们将用心倾听，不断优化，为您提供更优质的服务（500字以内）。" class="feedarea"></textarea>
                    </div>
                    <div class="feedgroup">
                        请输入您的Email地址：
                    </div>
                    <div class="feedgroup">
                        <input name="feedback_mail" type="text" class="feedinput">
                    </div>
                    <div class="feedgroup">
                        您的手机号：
                    </div>
                    <div class="feedgroup">
                        <input name="feedback_phone" type="text" class="feedinput">
                    </div>
                    <div class="feedgroup">
                        <div class="feedbotton">
                            <input type="submit" class="bottong" value="发送">
                            
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <div id="footer" class="shotpage">
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

