<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'return.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery/jquery.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h3>controller返回值</h3>
    <br>
    string返回值：<%=request.getAttribute("hello1") %>,${hello1}
    <br>
    <br/>
    ModelAndView的返回值：<%=request.getAttribute("hello2") %>,${hello2}
    <br/>
    <div id="mapreturn">测试返回map</div>
    <br/>
    <div id="stringjsonreturn">测试返回string模拟的json数据</div>
    <br/>
    <div id="objectreturn">测试返回Object对象</div>
    <br/>
    <div id="listreturn">测试返回集合对象</div>
  </body>
  <script type="text/javascript">
  	$(function(){
  		$("#mapreturn").click(function(){
  			$.post("<%=request.getContextPath()%>"+"/ipph/hello/return3",function(data){
  				if(data){
  					alert(data.hello3);
  				}
  			});
  		})
  	})
  	
  	$(function(){
  		$("#stringjsonreturn").click(function(){
  			$.post("<%=request.getContextPath()%>"+"/ipph/hello/return4",function(data){
  				if(data){
  					alert(data)
  					 var d=jQuery.parseJSON(data);
  					alert(d.hello4); 
  					data=eval('(' + data + ')');
  					alert(data.hello4);
  				}
  			});
  		})
  	})
  	
  	$(function(){
  		$("#objectreturn").click(function(){
  			$.post("<%=request.getContextPath()%>"+"/ipph/hello/return5",function(data){
  				if(data){
  					alert(data.name);
  					alert(data.age);
  					alert(data.birth);
  				}
  			});
  		})
  	})
  	
  	$(function(){
  		$("#listreturn").click(function(){
  			$.post("<%=request.getContextPath()%>"+"/ipph/hello/return6",function(data){
  				if(data){
  					alert(data.length);
  					alert(data[0].name);
  				}
  			});
  		})
  	})
  </script>
</html>
