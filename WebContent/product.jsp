<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>产品</title>
</head>
<script>
function clickButton(){
	alert(1);
}
</script>
<body>

		  <table width="100%" align="center">
          	<tr>
          		<td width="25%"  align="center"><a href="<%= request.getContextPath()%>/customer/backHome">首页</a></td>
          		<td width="25%"  align="center"><a href="">借款</a></td>
          		<td width="25%"  align="center"><a href="<%= request.getContextPath()%>/product/findAllProduct">借出</a></td>
          		<td width="25%"  align="center"><a href="<%= request.getContextPath()%>/customer/personal">个人中心</a></td>
          	</tr>         	
          </table>
          
	<h3 align="center">产品信息</h1>
	<table align="center">
	  <tbody align="center">
	  
	  	 <tr>
	  	 	 <td width="20%"><label>编号</label></td>
		     <td width="20%"><label>名称</label></td>
		     <td width="20%"><label>开始时间</label></td>
		     <td width="20%"><label>结束时间</label></td>
		     <td width="20%"><label>利率(/100)</label></td>
	  	 </tr>
	  	
	  	<c:forEach var="p" items="${products}">
	  		<tr>
		     <td><label>${p.pid}</label></td>
		     <td><label>${p.pname}</label></td>
		     <td><label>${p.starttime}</label></td>
		     <td><label>${p.endtime}</label></td>
		     <td><label>${p.rate}</label></td>
		     <td><input type = "button" value="购买" onClick = "clickButton()"></td>
	     	</tr>
	  	</c:forEach>
	  </tbody>
	</table>
</body>
</html>