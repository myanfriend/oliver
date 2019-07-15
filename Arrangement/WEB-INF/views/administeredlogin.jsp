<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/css/style.css"
	   type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath}/css/boot-crm.css"
	   type=text/css rel=stylesheet>
<script src=
       "${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
</script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script>
function check(){
    var usercode = $("#usercode").val();
    var password = $("#password").val();
    if(usercode=="" || password==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}
</script>
</head>
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/images/rightbg.jpg">
<div ALIGN="center">
<table border="0" width="1140px" cellspacing="0" cellpadding="0"
                                                           id="table1">
	<tr>
		<td height="93"></td>
		<td></td>
	</tr>
	<tr>
  <td background="${pageContext.request.contextPath}/images/beijing5.png"
		width="500px" height="347px">
   </td>
   <td class="login_msg" width="400" align="center">
	 <!-- margin:0px auto; 控制当前标签居中 -->
	 <fieldset style="width: auto; margin: 0px auto;">
		  <legend>
		     <font style="font-size:15px" face="宋体">
		          欢迎使用出租屋信息管理系统
		     </font>
		  </legend> 
		  <font size="3" color="blue">管理员登录</font>
		<font color="red">
			 <%-- 提示信息--%>
			 <span id="message">${a_msg}</span>
		</font>
		<%-- 提交后的位置：/WEB-INF/jsp/customer.jsp--%>
		<form action="adminlogin" 
			                       method="post" onsubmit="return check()">
			                 
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
          账&nbsp;号：<input id="usercode" type="text" name="a_username" />
          <br /><br />
          密&nbsp;码：<input id="password" type="password" name="a_password" />
          <br /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <center> <input type="submit" value="登录" />&nbsp;&nbsp;<a href="a_register">注册</a></center>
		 </form>
	 </fieldset>
	 
	</td>
	</tr>
</table>
</div>


	
</body>
</html>
