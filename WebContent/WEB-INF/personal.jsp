<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
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
          		<td width="16%"  align="center"><a href="<%= request.getContextPath()%>/personal/forwardbankcard">银行卡管理</a></td>
          		<td width="16%"  align="center"><a href="<%= request.getContextPath()%>/personal/forwardPassword">修改密码</a></td>
          		<td width="16%"  align="center"><a href="">修改交易密码</a></td>
          		<td width="16%"  align="center"><a href="">账户余额查询</a></td>
          		<td width="16%"  align="center"><a href="">提现</a></td>
          	</tr>
          </table>
</body>
</html>