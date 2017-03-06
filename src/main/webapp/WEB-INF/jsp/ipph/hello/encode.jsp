<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery/jquery.min.js"></script>
    <title>My JSP 'encode.jsp' starting page</title>
     <!-- <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>页面中文显示</h1>
    <div>${hello }</div>
    <div id="textencode1">点击获取文本</div>
    <br/>
    -----------------------------------------------------
    <br/>
     <div id="textencode2">GET获取文本</div>
     <br/>
     <div id="textencode3">POST获取文本</div>
     <br/>
     <form action="ipph/hello/encode3" method="post">
     	<input type="text" name="hello" value="你好">
     	<button type="submit" value="提交"/>
     </form>
  </body>
  <script type="text/javascript">
  	$(function(){
  		$("#textencode1").click(function(){
	  		$.ajax({
	  		  type: "GET",
	  		  url: "<%=request.getContextPath() %>/ipph/hello/encode1",
	  		  //contentType:"text/html;charset=utf-8",
	  		  success: function(data){
	  		     $("#textencode1").html(data);
	  		   }
	  		});
  		})
  	})
  	
  	$(function(){
  		$("#textencode2").click(function(){
	  		$.ajax({
	  		  type: "GET",
	  		  url: "<%=request.getContextPath() %>/ipph/hello/encode5?hello=你好",
	  		  contentType:"text/html;charset=utf-8",
	  		});
  		})
  	})
  	
  	$(function(){
  		$("#textencode3").click(function(){
	  		$.post("<%=request.getContextPath() %>/ipph/hello/encode3",{hello:"你好"});
  		})
  	})
  </script>
</html>
