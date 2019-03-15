<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>p2p金融理财平台</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home.css"/>
</head>
<body>
	       
          <%-- <table width="100%" align="center">
          	<tr>
          		<td width="25%"  align="center"><a href="<%= request.getContextPath()%>/customer/backHome">首页</a></td>
          		<td width="25%"  align="center"><a href="">借款</a></td>
          		<td width="25%"  align="center"><a href="<%= request.getContextPath()%>/product/findAllProduct">借出</a></td>
          		<td width="25%"  align="center"><a href="<%= request.getContextPath()%>/customer/personal">个人中心</a></td>
          	</tr>         	
          </table> --%>
   			
   			<ul>
				<li><a href="<%= request.getContextPath()%>/customer/backHome">首页</a></li>
				<li><a href="#news">借款</a></li>
				<li><a href="<%= request.getContextPath()%>/product/findAllProduct">借出</a></li>
				<li><a href="<%= request.getContextPath()%>/customer/personal">个人中心</a></li>
			</ul>
</body>
</html>