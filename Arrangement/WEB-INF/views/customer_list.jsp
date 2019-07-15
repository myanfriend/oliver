<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>客户管理-BootCRM</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>customer/list.action">BOOT客户管理系统 v1.0</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="logout">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="waterandele" class="active">
				      <i class="fa fa-edit fa-fw" ></i> 水电费查询  <!-- i是图标 -->
				    </a>
				</li>
				<li>
				    <a href="pay">
				      <i class="fa fa-dashboard fa-fw" ></i> 支付页面
				    </a>
				</li>
				<li>
				    <a href="list">
				      <i class="fa fa-dashboard fa-fw" ></i> 缴费清单查询
				    </a>
				</li>
				<li>
				    <a href="message">
				      <i class="fa fa-dashboard fa-fw" ></i> 留言栏
				    </a>
				</li>
				<li>
				    <a href="houseinformation">
				      <i class="fa fa-dashboard fa-fw" ></i> 房源信息
				    </a>
				</li>
				<li>
				    <a href="honorandcertificate">
				      <i class="fa fa-dashboard fa-fw" ></i> 荣誉与证书
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 右侧客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">缴费清单查询</h1>
			</div>
			<!-- /.col-lg-12 -->
			<div>
			<table class="table table-bordered table-striped">
			<thead>
							<tr>
								<th>订单号</th>
								<th>房间号</th>
								<th>姓名</th>
								<th>年份</th>
								<th>月份</th>
								<th>押金</th>
								<th>押金情况</th>
								<th>租金</th>
								<th>水电气费用</th>
								<th>应付费用</th>
								<th>支付情况</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${alllist}" var="l">
								<tr>
									<td>${l.id}</td>
									<td>${l.house}</td>
									<td>${l.name}</td>
									<td>${l.year}</td>
									<td>${l.month}</td>
									<td>${l.deposit}</td>
								   <td><c:if test="${l.deposit_status==1}">已交</c:if>
									<c:if test="${l.deposit_status==0}">已退回</c:if></td>
								    <td>${l.rent}</td>
								    <td>${l.waterpay}</td>
								    <td>${l.sum}</td>
								    <td><c:if test="${l.ifpay==1}">支付成功</c:if>
									<c:if test="${l.ifpay==0}">待支付</c:if></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			</div>
		</div>
		</div>
</div>
		
		<!-- /.row -->
		
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建客户窗口中的数据
	function clearCustomer() {
	    $("#new_customerName").val("");
	    $("#new_customerFrom").val("");
	    $("#new_custIndustry").val("");
	    $("#new_custLevel").val("");
	    $("#new_linkMan").val("");
	    $("#new_phone").val("");
	    $("#new_mobile").val("");
	    $("#new_zipcode").val("");
	    $("#new_address").val("");
	}
	// 创建客户
	function createCustomer() {
	$.post("<%=basePath%>customer/create.action",
	$("#new_customer_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("客户创建成功！");
	            window.location.reload();
	        }else{
	            alert("客户创建失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的客户信息
	function editCustomer(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>customer/getCustomerById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_cust_id").val(data.cust_id);
	            $("#edit_customerName").val(data.cust_name);
	            $("#edit_customerFrom").val(data.cust_source)
	            $("#edit_custIndustry").val(data.cust_industry)
	            $("#edit_custLevel").val(data.cust_level)
	            $("#edit_linkMan").val(data.cust_linkman);
	            $("#edit_phone").val(data.cust_phone);
	            $("#edit_mobile").val(data.cust_mobile);
	            $("#edit_zipcode").val(data.cust_zipcode);
	            $("#edit_address").val(data.cust_address);
	            
	        }
	    });
	}
    // 执行修改客户操作
	function updateCustomer() {
		$.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){
			if(data =="OK"){
				alert("客户信息更新成功！");
				window.location.reload();
			}else{
				alert("客户信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除客户
	function deleteCustomer(id) {
	    if(confirm('确实要删除该客户吗?')) {
	$.post("<%=basePath%>customer/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("客户删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除客户失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>