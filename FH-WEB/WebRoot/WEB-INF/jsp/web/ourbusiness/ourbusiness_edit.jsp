<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					
					<form action="ourbusiness/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="OURBUSINESS_ID" id="OURBUSINESS_ID" value="${pd.OURBUSINESS_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">介绍上:</td>
								<td><input type="text" name="TITLE1" id="TITLE1" value="${pd.TITLE1}" maxlength="255" placeholder="这里输入介绍上" title="介绍上" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">介绍下:</td>
								<td><input type="text" name="TITLE2" id="TITLE2" value="${pd.TITLE2}" maxlength="255" placeholder="这里输入介绍下" title="介绍下" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">内容上:</td>
								<td><input type="text" name="CONTENT1" id="CONTENT1" value="${pd.CONTENT1}" maxlength="255" placeholder="这里输入内容上" title="内容上" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">内容上:</td>
								<td><input type="text" name="CONTENT2" id="CONTENT2" value="${pd.CONTENT2}" maxlength="255" placeholder="这里输入内容上" title="内容上" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">内容链接:</td>
								<td><input type="text" name="TOURL" id="TOURL" value="${pd.TOURL}" maxlength="255" placeholder="这里输入内容链接" title="内容链接" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
					</form>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#TITLE1").val()==""){
				$("#TITLE1").tips({
					side:3,
		            msg:'请输入介绍上',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TITLE1").focus();
			return false;
			}
			if($("#TITLE2").val()==""){
				$("#TITLE2").tips({
					side:3,
		            msg:'请输入介绍下',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TITLE2").focus();
			return false;
			}
			if($("#CONTENT1").val()==""){
				$("#CONTENT1").tips({
					side:3,
		            msg:'请输入内容上',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CONTENT1").focus();
			return false;
			}
			if($("#CONTENT2").val()==""){
				$("#CONTENT2").tips({
					side:3,
		            msg:'请输入内容上',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CONTENT2").focus();
			return false;
			}
			if($("#TOURL").val()==""){
				$("#TOURL").tips({
					side:3,
		            msg:'请输入内容链接',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TOURL").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>