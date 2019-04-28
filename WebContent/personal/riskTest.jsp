<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/personal.css"/>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>
<script>
$(document).ready(function(){
  $("#show").click(function(){
	  if(getValue()==1){
		    $("#1").show(1000);
		    $("#2").hide();
		    $("#3").hide();
		    return;
	  }
	  else if(getValue()==2){
		    $("#2").show(1000);
		    $("#1").hide();
		    $("#3").hide();
		    return;
	  }
	  else if(getValue()==3){
		    $("#3").show(1000);
		    $("#2").hide();
		    $("#1").hide();
		    return;
	  }
  });
});

function getValue(){
	var myselect = document.getElementById("selectGar");
	var index = myselect.selectedIndex ;
	var value = myselect.options[index].value;
	console.log(value);
	return value;
}
</script>
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
          
          <div >
	          <h3 align="center">风险评估</h3>
	          <form action="<%= request.getContextPath()%>/personal/updateTradePassword" >
	          	<table align="center">
	          		<tr>
	          			<td align="right"><label >您的投资理财年限:</label></td>
	          			<td>
	          				<select class="text_field"  name="selectYear" id="selectYear">
	          					<option value="1">5年以上</option>
	          					<option value="2">3-5年</option>
	          					<option value="3">3年以下</option>
	          				</select>
	          			</td>
	          		</tr>
	          		<tr>
	          			<td align="right"><label >您的就业情况:</label></td>
	          			<td>
	          				<select class="text_field"  name="selectConpan" id="selectConpan">
	          					<option value="1">暂无稳定收入</option>
	          					<option value="2">您有稳定收入的工作</option>
	          					<option value="3">已退休且有退休工资</option>
	          				</select>
	          			</td>
	          		</tr>
	          		<tr>
	          			<td align="right"><label >您的投资目标是:</label></td>
	          			<td>
	          				<select class="text_field" name="selectGar" id="selectGar">
	          					<option value="1">资产迅速成长</option>
	          					<option value="2">资产稳健成长</option>
	          					<option value="3">避免财产损失</option>
	          				</select>
	          			</td>
	          		</tr>
	          		<tr>
	          			<td align="right"><label >您一般会选择:</label></td>
	          			<td>
	          				<select class="text_field" >
	          					<option value="1">股票＋基金</option>
	          					<option value="2">银行理财</option>
	          					<option value="3">P2P网借贷</option>
	          				</select>
	          			</td>
	          		</tr>
	          		<tr>
	          			<td align="right"><label >您收入中可用作投资的占:</label></td>
	          			<td>
	          				<select class="text_field" >
	          					<option value="1">50%以上</option>
	          					<option value="2">20%-50%</option>
	          					<option value="3">20%以下</option>
	          				</select>
	          			</td>
	          		</tr>
	          		<tr>
	          			<td align="center" colspan="2"><input id="show" type="button" value="提交" onclick="getValue()"></input></td>
	          		</tr>	
	          	</table>
	          </form>
          </div>
          <table align="center">
          	<tr> <p id="1" align="center" style="display: none">您适合积极型</p></tr>
          	<tr> <p id="2" align="center" style="display: none">您适合稳定型</p></tr>
          	<tr> <p id="3" align="center" style="display: none">您适合保守型</p></tr>
          </table>

</body>
</html>