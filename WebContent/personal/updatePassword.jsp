<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/personal.css"/>
</head>
<body>
	      <table width="100%" align="center">
          	<tr>
          		<td width="25%"  align="center"><a href="<%= request.getContextPath()%>/customer/backHome">首页</a></td>
          		<td width="25%"  align="center"><a href="">借款</a></td>
          		<td width="25%"  align="center"><a href="<%= request.getContextPath()%>/product/findAllProduct">借出</a></td>
          		<td width="25%"  align="center"><a href="<%= request.getContextPath()%>/customer/personal">个人中心</a></td>
          	</tr>         	
          </table>
          
          <br /><br />
          
          <table width="100%" align="center">
          	<tr>
          		<td width="16%"  align="center"><a href="<%= request.getContextPath()%>/record/findAllRecord">交易记录</a></td>
          		<td width="16%"  align="center"><a href="<%= request.getContextPath()%>/personal/forwardBankcard">银行卡管理</a></td>
          		<td width="16%"  align="center"><a href="<%= request.getContextPath()%>/personal/forwardPassword">修改密码</a></td>
          		<td width="16%"  align="center"><a href="<%= request.getContextPath()%>/personal/forwardTradePassword">修改交易密码</a></td>
          		<td width="16%"  align="center"><a href="<%= request.getContextPath()%>/personal/forwardRestMoney">账户余额查询</a></td>
          		<td width="16%"  align="center"><a href="<%= request.getContextPath()%>/personal/forwardRiskTest">风险评估</a></td>
          	</tr>
          </table>
          
          <br /><br />
          <div id="update_frame">
	          <h3 align="center">修改密码</h3>
	          <form action="<%= request.getContextPath()%>/personal/updatePassword" method="post">
	          	<table align="center">
	          		<tr>
	          			<td><label class="label_input">原密码:</label></td>
	          			<td><input class="text_field" type="text" placeholder="请输入原密码" name="password"/></td>
	          		</tr>
	          		<tr>
	          			<td><label class="label_input">新密码:</label></td>
	          			<td><input class="text_field" type="text" placeholder="请输入新密码"/></td>
	          		</tr>
	          		<tr>
	          			<td><label class="label_input">确认密码:</label></td>
	          			<td><input class="text_field" type="text" placeholder="再次输入新密码" name="newPassword"/></td>
	          		</tr>
		          	<tr>
		          		<td><input type="reset" value="重置"/></td>
		          		<td align="center"><input type="submit" value="提交"/></td>
		          	</tr>
	          	</table>
          	</form>
          </div>
</body>
</html>