<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
	<title>cpquery接口</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="renderer" content="webkit" />
	<%@ include file="common/include/common.jsp"%>
    <style type="text/css">
        #footer {
            position: absolute;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="${ctx}/common/css/index.css">
    <script src="${ctx}/common/js/jquery/jquery.validate.min.js"></script>
    <script src="${ctx}/common/tool/jquery.md5.js"></script>
    <script type="text/javascript">
         $().ready(function () {
             jQuery.validator.addMethod("valiEnglishNum",function(value,element){
                    return this.optional(element) || /^[a-zA-Z0-9]*$/.test(value);
                },$.validator.format("请输入英文字母和数字的组合"));
			// 在键盘按下并释放及提交后验证提交表单
             $("#signForm").validate({
            	 onfocusout: function(element) { $(element).valid(); },
                 rules: {
                     username: {
                         required: true,
                         valiEnglishNum: true,
                         minlength: 2,
                         maxlength: 32,
                         remote: {
                             url: "${ctx}/user/check",   //后台处理程序
                             type: "post",               //数据发送方式
                             dataType: "json",           //接受数据格式
                             data: {                     //要传递的数据
                                 username: function() {
                                     return $("#username").val();
                                 },
                             	_csrf:function(){
                             		return $("[name='_csrf']").val();
                             	}
                             }
                         }
                     },
                     realname: {
                         required: true,
                         maxlength: 32,
                         minlength: 1
                     },
                     password: {
                         required: true,
                         maxlength: 32,
                         minlength: 5
                     },
                     confirm_password: {
                         required: true,
                         maxlength: 32,
                         minlength: 5,
                         equalTo: "#password"
                     },
                     email: {
                         required: true,
                         maxlength: 32,
                         email: true
                     }
                 },
                 messages: {
                     username: {
                         required: "请输入用户名",
                         minlength: "用户名至少由{0}个字母组成",
                         maxlength: "用户名至多由{0}个字母组成",
                         remote: "用户名已被占用"
                     },
                     password: {
                         required: "请输入密码",
                         maxlength: "密码长度不能大于{0}个字母",
                         minlength: "密码长度不能小于 {0}个字母"
                     },
                     confirm_password: {
                         required: "请输入密码",
                         minlength: "密码长度不能小于{0}个字母",
                         maxlength: "密码长度不能大于{0}个字母",
                         equalTo: "两次密码输入不一致"
                     },
                     email: {
                    	email: "请输入一个正确的邮箱",
                    	maxlength: "邮箱长度不能大于{0}个字母"
                     }
                 }
             });
         });
     </script>
</head>
    <body >
        <%@ include file="common/include/header.jsp" %>
        <div class="main_content">
            <div class="feedback">
                <div class="page-header regh">
                    <h3>用户注册</h3>
                </div>
                <form name="loginForm" id="signForm" method="post" action="${ctx}/user/save">
                    <div class="reggroup">
                        <div class="spanx"><span>*</span>用户名：</div>
                        <input type="text" name="username" id="username" class="feedinput reginput" placeholder="由字母、数字、下划线，以字母开头">
                    </div>
                    <div class="reggroup">
                        <div class="spanx"><span>*</span>真是姓名：</div>
                        <input name="realname" id="realname" type="text" class="feedinput reginput" placeholder="请输入真实姓名">
                    </div>
                    <div class="reggroup">
                        <div class="spanx"><span>*</span>密码：</div>
                        <input name="password" id="password" type="password" class="feedinput reginput" placeholder="请输入密码">
                    </div>
                    <div class="reggroup">
                        <div class="spanx"><span>*</span>确认密码：</div>
                        <input name="confirm_password" id="confirm_password" type="password" class="feedinput reginput" placeholder="再一次输入密码">
                    </div>
                    <div class="reggroup">
                        <div class="spanx"><span>*</span>Email地址：</div>
                        <input name="email" type="text" class="feedinput reginput" placeholder="请输入Email地址">
                    </div>
                    <div class="reggroup">
                        <div class="feedbotton"><input type="submit" class="bottong" value="注册新用户">
                            <input type="button" class="bottong bottonc" onclick="returnHome();" value="取消">
                        </div>
                    </div>
                    <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>" value="<c:out value="${_csrf.token}"/>"/>
                </form>
            </div>
        </div>
		<%@ include file="common/include/footer.jsp" %>
	</body>
	<script>
        $(function(){
            $("form").submit(function() {
                var v=$.md5($("#password").val());
                $("#password").val(v);
                var v=$.md5($("#confirm_password").val());
                $("#confirm_password").val(v);
                return true;
            });
        });
    </script>
</html>