<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          		<td width="16%"  align="center"><a href="">银行卡管理</a></td>
          		<td width="16%"  align="center"><a href="<%= request.getContextPath()%>/personal/forwardPassword">修改密码</a></td>
          		<td width="16%"  align="center"><a href="">修改交易密码</a></td>
          		<td width="16%"  align="center"><a href="">账户余额查询</a></td>
          		<td width="16%"  align="center"><a href="">提现</a></td>
          	</tr>
          </table>
          
          <br /><br />
          
    <h3 align="center">订单信息</h3>      
	<table align="center" width="100%">
	  <tbody align="center">
	  
	  	 <tr>
	  	 	 <td width="20%"><label>订单编号</label></td>
		     <td width="20%"><label>用户</label></td>
		     <td width="20%"><label>购买时间</label></td>
		     <td width="20%"><label>交易状态</label></td>
		     <td width="20%"><label>产品编号</label></td>
	  	 </tr>
	  	
	  	<c:forEach var="r" items="${records}">
	  		<tr>
		     <td><label>${r.rid}</label></td>
		     <td><label>${r.cid}</label></td>
		     <td><label>${r.buytime}</label></td>
		     <td><label>${r.tradestate}</label></td>
		     <td><label>${r.pid}</label></td>
	     	</tr>
	  	</c:forEach>
	  </tbody>
	</table>
	
</body>
</html>