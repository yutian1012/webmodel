<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Helloworld.jsp' starting page</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery/jquery.min.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
    Helloworld<br>
    
    <div id="headrequest">模拟发送请求，向header中添加参数</div>
    
    <div id="applicant">申请人查询</div>
    <br/>
    <a href="<%=request.getContextPath() %>/cpquery/shenqing/applicant?applicantName=皇家飞利浦电子股份有限公司">申请人查询</a>
  </body>
  <script type="text/javascript">
  	$(function(){
  		$("#headrequest").click(function(){
	  		$.ajax({
	  		  type: "GET",
	  		  url: "<%=request.getContextPath() %>/ipph/hello/path11",
	  		  dataType: "script",
	  		  headers:{"Accept":"*/*"}
	  		});
  		})
  	})
  	
  	$(function(){
  		$("#applicant").click(function(){
  			alert("ddd");
  			var url="<%=request.getContextPath() %>/cpquery/shenqing/applicant";
  			$.post(url,{applicantName:"皇家飞利浦电子股份有限公司"},function(data){
  				if(data){
  					$("#applicant").html(data);
  				}
  			});
  		})
  	})
  </script>
</html>
