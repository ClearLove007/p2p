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
	<table align="center">
	  <thead align="center">产品信息</thead>
	  <tbody>
	  	 <tr>
	  	 	 <td><label>编号</label></td>
		     <td><label>名称</label></td>
		     <td><label>开始时间</label></td>
		     <td><label>结束时间</label></td>
		     <td><label>利率(/100)</label></td>
	  	 </tr>
	  	
	  	<tr>
		     <td><label>${productById.pid}</label></td>
		     <td><label>${productById.pname}</label></td>
		     <td><label>${productById.starttime}</label></td>
		     <td><label>${productById.endtime}</label></td>
		     <td><label>${productById.rate}</label></td>
	     </tr>
	  </tbody>
	</table>
</body>
</html>