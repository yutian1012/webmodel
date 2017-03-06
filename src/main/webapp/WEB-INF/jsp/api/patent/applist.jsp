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
<script type="text/javascript">
var errorCode = '';
var errorDesc = '';
</script>
        <script src="${ctx}/common/js/slides_2.js" tppabs="http://114.251.8.193/common/js/slides_2.js" type="text/javascript" charset="utf-8"></script>
        <link href="${ctx}/common/css/typography.css" tppabs="http://114.251.8.193/common/css/typography.css" media='screen' rel='stylesheet' type='text/css'/>
        <link href="${ctx}/common/css/screen.css" tppabs="http://114.251.8.193/common/css/screen.css" media='screen' rel='stylesheet' type='text/css'/>
        <link href="${ctx}/common/css/reset.css" tppabs="http://114.251.8.193/common/css/reset.css" media='print' rel='stylesheet' type='text/css'/>
        <link href="${ctx}/common/css/print.css" tppabs="http://114.251.8.193/common/css/print.css" media='print' rel='stylesheet' type='text/css'/>

        <script src="${ctx}/common/lib/object-assign-pollyfill.js" tppabs="http://114.251.8.193/common/lib/object-assign-pollyfill.js" type='text/javascript'></script>
        
        <script src="${ctx}/common/lib/jquery.slideto.min.js" tppabs="http://114.251.8.193/common/lib/jquery.slideto.min.js" type='text/javascript'></script>
        <script src="${ctx}/common/lib/jquery.wiggle.min.js" tppabs="http://114.251.8.193/common/lib/jquery.wiggle.min.js" type='text/javascript'></script>
        <script src="${ctx}/common/lib/jquery.ba-bbq.min.js" tppabs="http://114.251.8.193/common/lib/jquery.ba-bbq.min.js" type='text/javascript'></script>
        <script src="${ctx}/common/lib/handlebars-2.0.0.js" tppabs="http://114.251.8.193/common/lib/handlebars-2.0.0.js" type='text/javascript'></script>
        <script src="${ctx}/common/lib/js-yaml.min.js" tppabs="http://114.251.8.193/common/lib/js-yaml.min.js" type='text/javascript'></script>
        <script src="${ctx}/common/lib/lodash.min.js" tppabs="http://114.251.8.193/common/lib/lodash.min.js" type='text/javascript'></script>
        <script src="${ctx}/common/lib/backbone-min.js" tppabs="http://114.251.8.193/common/lib/backbone-min.js" type='text/javascript'></script>

        <script src="${ctx}/common/js/swagger-ui.js" tppabs="http://114.251.8.193/common/js/swagger-ui.js" type='text/javascript'></script>

        <script src="${ctx}/common/lib/highlight.9.1.0.pack.js" tppabs="http://114.251.8.193/common/lib/highlight.9.1.0.pack.js" type='text/javascript'></script>
        <script src="${ctx}/common/lib/highlight.9.1.0.pack_extended.js" tppabs="http://114.251.8.193/common/lib/highlight.9.1.0.pack_extended.js" type='text/javascript'></script>
        <script src="${ctx}/common/lib/jsoneditor.min.js" tppabs="http://114.251.8.193/common/lib/jsoneditor.min.js" type='text/javascript'></script>
        <script src="${ctx}/common/lib/marked.js" tppabs="http://114.251.8.193/common/lib/marked.js" type='text/javascript'></script>
        <script src="${ctx}/common/lib/swagger-oauth.js" tppabs="http://114.251.8.193/common/lib/swagger-oauth.js" type='text/javascript'></script>

        <!-- Some basic translations -->
        <script src="${ctx}/common/lang/translator.js" tppabs="http://114.251.8.193/common/lang/translator.js" type='text/javascript'></script>
        <!-- <script src='lang/ru.js' type='text/javascript'></script> -->
        <script src="${ctx}/common/lang/zh-cn.js" tppabs="http://114.251.8.193/common/lang/zh-cn.js" type='text/javascript'></script>

        <script type="text/javascript">
            $(function () {
                var url = window.location.search.match(/url=([^&]+)/);
                if (url && url.length > 1) {
                    url = decodeURIComponent(url[1]);
                } else {
                    url ="${ctx}/common/json/patent.json";
                }

                hljs.configure({
                    highlightSizeThreshold: 5000
                });

                // Pre load translate...
                if (window.SwaggerTranslator) {
                    window.SwaggerTranslator.translate();
                }
                window.swaggerUi = new SwaggerUi({
                    url: url,
                    validatorUrl: null,
                    dom_id: "swagger-ui-container",
                    supportedSubmitMethods: ['get', 'post', 'put', 'delete', 'patch'],
                    onComplete: function (swaggerApi, swaggerUi) {
                        if (typeof initOAuth == "function") {
                            initOAuth({
                                clientId: "your-client-id",
                                clientSecret: "your-client-secret-if-required",
                                realm: "your-realms",
                                appName: "your-app-name",
                                scopeSeparator: ",",
                                additionalQueryStringParams: {}
                            });
                        }

                        if (window.SwaggerTranslator) {
                            window.SwaggerTranslator.translate();
                        }
                    },
                    onFailure: function (data) {
                        log("Unable to Load SwaggerUI");
                    },
                    docExpansion: "none",
                    jsonEditor: false,
                    defaultModelRendering: 'schema',
                    showRequestHeaders: false
                });

                window.swaggerUi.load();

                function log() {
                    if ('console' in window) {
                        console.log.apply(console, arguments);
                    }
                }
            });

            $(document).ready(function () {
                if ('null' != 'null') {
                    $("#haslogin").removeAttr("style");
//                $("#haslogin").css('display','block');
                } else {
                    $(".unlogin").removeAttr("style");
                }
                if ('null' == 1) {

                    $(".right_content").click(function () {
//                        $(".submit").removeAttr("style");
                        $(".submit").removeAttr("disabled");
                        $(".disable").css("display", "none");
                    });

                }

            });
            
            //对分类统计字段显示调整开始
            String.prototype.endWith=function(endStr){
        	      var d=this.length-endStr.length;
        	      return (d>=0&&this.lastIndexOf(endStr)==d)
  			}
            function showCataColoumn(object){
            	 $("input[name='categoryColumn']").attr("readonly","readonly");
            	var text = "专利";
            	var arr = new Array();  
            	arr[text]="PDT=专利类型;LSBCN=中国当前权利状态;LSBFO=国外当前权利状态;IPC=IPC;AY=申请年;PY=公布年;ASO=专利权人;INO=发明人;EPRY=最早优先权年;CPC=CPC;LC=洛迦诺;APO=申请人;APCL=申请人类型;ASCL=专利权人类型;CRO=代理机构;AGO=代理人;EXO=审查员;FTKO=关键词;AC=受理国;AP1A=来源国;APPPC=中国省份;SFCL=同族国别;PCT=PCT专利;DP=分案申请;PRES=复审决定;PINS=无效专利;PLI=法院判决;TS=专利转让;LS=专利许可;PS=专利质押;EPRNO=最早优先权";
            	if(arr[text]){
            		var splitArr = arr[text].split(";");
            		var htmlText="";
            		for(var i=0;i<splitArr.length;i++){
            			var map=splitArr[i].split("=");
            			var key = map[0];
            			var value = map[1];
            			htmlText+="<p style='float:left;margin-left:8px;margin-top:-8px;'><span style='float:left;display:block;margin-right:5px;'><input type='checkbox' name='catecloumn' value='"+key+"'/></span><span style='float:left;display:block;line-height:25px;'>"+value+"</span></p>";
            		}
            		if($("#cates_col").length<=0){
            			htmlText = "<tr><td colspan='5' style='font-size:14px;line-height:25px;'><div id='cates_col'>"+htmlText+"</div></td></tr>"
                		$(object).parent().parent().parent().parent().parent().parent().parent().append(htmlText);
                	}else{
                		$("#cates_col").find("input[type=checkbox]").unbind();
                	}
            		
            		$("#cates_col").find("input[type=checkbox]").click(function(){
            			var cateText = $("input[name='categoryColumn']").val();
            			if(cateText!=""){
            				var catearr = cateText.split(";");
                			if(catearr.length>10){
                				$(this).attr("checked",false);
                				alert("分类检索字段一次最多只能选择10个");
                				return ;
                			}
            			}
            			var value = $(this).val();
            			if($(this).is(':checked')){
            				if(cateText==""){
                				$("input[name='categoryColumn']").val(value);
                			}else{
                				$("input[name='categoryColumn']").val(cateText+";"+value);
                			}
            			}else{
            				var currentCateText = $("input[name='categoryColumn']").val();
            				if(currentCateText.indexOf(value+";")>=0){
            					currentCateText=currentCateText.replace(value+";","")
            				}else{
            					currentCateText=currentCateText.replace(value,"");
            				}
            				if(currentCateText.endWith(";")){
            					currentCateText = currentCateText.substring(0,currentCateText.length-1);
            				} 
            				$("input[name='categoryColumn']").val(currentCateText);
            			}
            			
            			
            		});
            	}
            	
            }
            //对分类统计字段显示调整结束
        </script>
        <link rel="shortcut icon" href="${ctx}/favicon.ico" tppabs="http://114.251.8.193/favicon.ico" />

<script type="text/javascript">

    function logout() {
        var _otherFunction1 = function () {

            var xurl = '${ctx}/freeze.main-txn-code=logout.htm'/*tpa=http://114.251.8.193/freeze.main?txn-code=logout*/;
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

        window.location.href = "${ctx}/index.jsp.htm"/*tpa=http://114.251.8.193/index.jsp*/;

    }

</script>


<link rel="stylesheet" type="text/css" href="${ctx}/common/css/index.css" tppabs="http://114.251.8.193/common/css/index.css">

<script src="${ctx}/common/js/slides_2.js" tppabs="http://114.251.8.193/common/js/slides_2.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    if (top.location.href != window.location.href) {
        top.location.href = "${ctx}/index.htm"/*tpa=http://114.251.8.193/*/;
    }

    $(document).ready(function () {

        if (errorDesc != '') {
                $.fz_common.alert("错误： ", errorDesc);
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
    </head>
    <body >

        <header id="smlhead">
            <div id="inn">
                <a class="logo" href="${ctx}/index.jsp.htm" tppabs="http://114.251.8.193/index.jsp">DI开放平台</a>
                <nav class="navright loginfalse">
                    <a href="${ctx}/index.jsp.htm" tppabs="http://114.251.8.193/index.jsp" class="nav-item">首页</a>
                    <a href="${ctx}/lib.jsp.htm" tppabs="http://114.251.8.193/lib.jsp" class="nav-item">资料库</a>
                    <a href="applist.jsp.htm" tppabs="http://114.251.8.193/web/api/patent/applist.jsp" class="nav-item onn">API列表</a>
                    <a href="${ctx}/feedback.jsp.htm" tppabs="http://114.251.8.193/feedback.jsp" class="nav-item">建议与反馈</a>
                    <a href="${ctx}/contact.jsp.htm" tppabs="http://114.251.8.193/contact.jsp" class="nav-item">联系我们</a>

                    <div id="haslogin" class="nav-item" style="display: none">
                        欢迎您:null
                        <a class="button regb button-large" href="${ctx}/user/userInfo.jsp.htm" tppabs="http://114.251.8.193/user/userInfo.jsp">用户中心</a>
                        <a class="button regb button-large" href="#" onclick="logout();">安全退出</a>
                    </div>
                    <a href="${ctx}/login.jsp.htm" tppabs="http://114.251.8.193/login.jsp" class="button login unlogin"
                       style="display: none">登录</a>
                    <a href="${ctx}/register.jsp.htm" tppabs="http://114.251.8.193/register.jsp" class="button regb unlogin"
                       style="display: none">注册</a>
                </nav>
            </div>
        </header>
        <div class="main_content">
            <div class="left-menu">
                <ul>
                    <li class="top-menu firstChild">
                        <div>
                            <a href="../accessIndex.jsp.htm" tppabs="http://114.251.8.193/web/api/accessIndex.jsp">应用接入索引</a>
                        </div>
                    </li>
                    <li>
                        <div class="sidebar-menu"><a href="#guideMeun" class="nav-header menu-first collapsed"
                                                     data-toggle="collapse"> 新手指引 <span
                                class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span> </a>
                            <ul id="guideMeun" class="nav nav-list collapse menu-second menu-two">
                                <li><a href="../accessGuide.jsp.htm" tppabs="http://114.251.8.193/web/api/accessGuide.jsp">应用接入流程</a></li>
                                <li><a href="${ctx}/contact.jsp.htm" tppabs="http://114.251.8.193/contact.jsp">联系我们,技术支持</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="sidebar-menu"><a href="#oauthMeun" class="nav-header menu-first collapsed"
                                                     data-toggle="collapse"> OAuth协议介绍 <span
                                class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span> </a>
                            <ul id="oauthMeun" class="nav nav-list collapse menu-second menu-two">
                                <li><a href="../oauth/intro.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/intro.jsp">OAuth2.0简介</a></li>
                                <li><a href="../oauth/doc.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/doc.jsp">OAuth2.0开发文档</a></li>
                                <li><a href="../oauth/authorization.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/authorization.jsp">Authorization
                                    Code</a></li>
                                <li><a href="../oauth/implicit.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/implicit.jsp">Implicit
                                    Grant</a></li>
                                <li><a href="../oauth/refreshToken.jsp.htm" tppabs="http://114.251.8.193/web/api/oauth/refreshToken.jsp">Refresh
                                    Token</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="sidebar-menu">
                            <a href="#userMeun" class="nav-header menu-first collapsed" data-toggle="collapse"> API列表
                                <span class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span>
                            </a>
                            <ul id="userMeun" class="nav nav-list collapse in menu-second menu-two">
                                <li class="firstChild">
                                    <a class="current"
                                       href="applist.jsp.htm" tppabs="http://114.251.8.193/web/api/patent/applist.jsp">专利检索</a>
                                </li>
                                <li>
                                    <a href="../trademark/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/trademark/applist.jsp">商标检索</a>
                                </li>
                                <li><a href="../periodical/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/periodical/applist.jsp">期刊检索</a></li>
                                <li><a href="../standard/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/standard/applist.jsp">标准检索</a></li>
                                <li>
                                    <a href="../cases/decision/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/cases/decision/applist.jsp">复审决定检索</a>
                                </li>
                                <li><a href="../cases/referee/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/cases/referee/applist.jsp">裁判文书检索</a>
                                </li>
                                <li><a href="../cases/law/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/cases/law/applist.jsp">法律法规检索</a>
                                </li>
                                <li><a href="../analysis/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/analysis/applist.jsp">分析</a></li>
                                <li><a href="../bigdata/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/bigdata/applist.jsp">大数据</a></li>
                                <li><a href="../others/applist.jsp.htm" tppabs="http://114.251.8.193/web/api/others/applist.jsp">其他</a></li>
                                </ul>                         </div>                     </li>                     <li>                         <div class="sidebar-menu">                             <a href="#appendixMeun" class="nav-header menu-first collapsed" data-toggle="collapse">附录                                 <span class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span>                             </a>                             <ul id="appendixMeun" class="nav nav-list collapse menu-second menu-two">                                 <li><a href="../appendix/appendix.jsp.htm" tppabs="http://114.251.8.193/web/api/appendix/appendix.jsp">开放平台代码集</a>                                 </li>                                 <li><a href="../appendix/common.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/common.html?user=null">通用代码集</a>                                 </li>                                 <li><a href="../appendix/patent.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/patent.html?user=null">专利代码集</a>                                 </li>                                 <li><a href="../appendix/trademark.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/trademark.html?user=null">商标代码集</a>                                 </li>                                 <li><a href="../appendix/standard.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/standard.html?user=null">标准代码集</a>                                 </li>                                 <li><a href="../appendix/periodical.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/periodical.html?user=null">期刊代码集</a>                                 </li>                                 <li><a href="../appendix/referee.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/referee.html?user=null">裁判文书代码集</a>                                 </li>                                 <li><a href="../appendix/law.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/law.html?user=null">法律法规代码集</a>                                 </li>                                 <li><a href="../appendix/decision.html-user=null.htm" tppabs="http://114.251.8.193/web/api/appendix/decision.html?user=null">审查决定代码集</a>                                 </li>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="sidebar-menu">
                            <a href="#questionMeun" class="nav-header menu-first collapsed" data-toggle="collapse"> 常见问题
                                <span class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span>
                            </a>
                            <ul id="questionMeun" class="nav nav-list collapse menu-second menu-two">
                                <li>
                                    <a href="../datalibrary/cniper.jsp.htm" tppabs="http://114.251.8.193/web/api/datalibrary/cniper.jsp">DI开放平台FAQ</a>
                                </li>
                                <li><a href="../datalibrary/codeFAQ.jsp.htm" tppabs="http://114.251.8.193/web/api/datalibrary/codeFAQ.jsp">开发联调FAQ</a>
                                </li>
                                <li><a href="../datalibrary/concept.jsp.htm" tppabs="http://114.251.8.193/web/api/datalibrary/concept.jsp">概念和术语</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="sidebar-menu">
                            <a href="#updateMeun" class="nav-header menu-first collapsed" data-toggle="collapse"> 更新通知
                                <span class="arrow pull-right glyphicon glyphicon-chevron-toggle"></span>
                            </a>
                            <ul id="updateMeun" class="nav nav-list collapse menu-second menu-two">
                                <li><a href="${ctx}/index.jsp.htm" tppabs="http://114.251.8.193/index.jsp">平台更新</a></li>
                                <li><a href="${ctx}/index.jsp.htm" tppabs="http://114.251.8.193/index.jsp">API更新</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="right_content swagger-section">
                <div class="page-header">
                    <h3>DI开放平台API列表</h3>
                </div>

                <div id="message-bar" class="swagger-ui-wrap" data-sw-translate>&nbsp;</div>
                <div id="swagger-ui-container" class="swagger-ui-wrap"></div>
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

