<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit" />
<!--[if lt IE 9]>
<script src="module/resources/bootstrap2.3.2/js/html5shiv.js"></script>
<![endif]-->
<meta http-equiv="X-UA-Compatible" content="edge" />
<link href="${ctx}/module/resources/bootstrap2.3.2/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="${ctx}/module/resources/bootstrap2.3.2/css/bootstrap-responsive.css" rel="stylesheet" media="screen">
<link href="${ctx}/module/resources/beacon/css/beacon_main.css" rel="stylesheet" media="screen">
<link href="${ctx}/common/css/common.css" rel="stylesheet" media="screen">
<link rel="shortcut icon" href="${ctx}/favicon.ico"/>
<script type="text/javascript" src="${ctx}/module/resources/bootstrap2.3.2/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/module/resources/beacon/js/beacon_jquery_common.js"></script>
<script type="text/javascript" src="${ctx}/module/resources/beacon/js/beacon_jquery_main.js"></script>
<script src="${ctx}/common/js/slides_2.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${ctx}/module/resources/bootstrap2.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	var errorCode = '';
	var errorDesc = '';
</script>

<!-- 系统登出 -->
<script type="text/javascript">
    function logout() {
        var _otherFunction1 = function () {
            var xurl = '${ctx}/logout';
            //post方式提交后跳转页面
            $("#logoutform").submit();
            //window.location.href = xurl;
        };
        var _otherButtons = ["确定"];
        var _otherButtonStyles = ['btn-danger'];
        var _otherFunction = [_otherFunction1];
        $.fz_common.confirm("退出系统", "<p id='logoutTxtTip'>确认退出系统？</p>", null, _otherButtons, _otherButtonStyles, _otherFunction);
        $($("#logoutTxtTip").parent().next().children("button")[0]).text("取消");
    }

    function returnHome() {
        window.location.href = "index.jsp";
    }
</script>
<script type="text/javascript">
    if (top.location.href != window.location.href) {
        top.location.href = "/";
    }
    $(document).ready(function () {
        if (errorDesc != '') {
                $.fz_common.alert("错误： ", errorDesc);
        }
        if ('${username}' != 'null' && '${username}' != '') {
            $("#haslogin").removeAttr("style");
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
            $(this).next('li').slideToggle().siblings('li').slideUp();
            $(this).toggleClass('active').siblings('.header').removeClass('active');
        });
    });
</script>