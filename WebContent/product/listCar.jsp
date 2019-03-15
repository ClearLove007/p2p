<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/product.css"/>
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
	
	<script type="text/javascript">
		function isMoney(){
			var money=document.getElementById("price").value
			var isNum=/^(([1-9][0-9]*)|(([0]\.\d{1,2}|[1-9][0-9]*\.\d{1,2})))$/;
			if(!isNum.test(money)){
				alert("输入不合法");
				return false;
			}
			return true;
		}
	</script>
	
	<form action="<%= request.getContextPath()%>/product/insertRecord" onsubmit="isMoney()">
			<div id="product_frame">
				<table align="center" >
			  <tbody align="center">
			  
			  	 <tr>
				     <td width="25%"><label>买家名称</label></td>
				     <td width="25%"><label>购买时间</label></td>
				     <td width="25%"><label>产品编号</label></td>
				     <td width="25%"><label>购买价格</label></td>
			  	 </tr>
			  	
			  	<tr>
				     <td width="25%"><label>${cid}</label> <input type="hidden" name="cid" value="${cid}"></input> </td>
				     <td width="25%"><label>${buytime}</label> <input type="hidden" name="buytime" value="${buytime}"></input> </td>
				     <td width="25%"><label>${pid}</label> <input type="hidden" name="pid" value="${pid}"></input> </td>
				     <td width="25%"><input type"text" placeholder="请输入要购买的金额" name="price" id="price"></input></td>
				     <td><input type="hidden" name="rate" value="${rate}"></input></td>
				     <td><input type="hidden" name="days" value="${days}"></input></td>
				     
			  	 </tr>
			  </tbody>
			</table>
			</div>
			<div id="login_frame">
				<p><label class="label_input">请输入交易密码：</label><input class="text_field" type="password" name="tradePassword"></input></p>
				<div id="login_control" >
					<p><input class="btn_login" type = "submit" value="购买" ></p>
				</div>
			</div>
	</form>
</body>
</html>