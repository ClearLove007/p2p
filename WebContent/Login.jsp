<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>p2p金融理财平台</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<!--背景-->
	<div class="wel" id="background-3"></div>
	<!--左右两边云-->
	<div class="wel" id="box">
		<div class="box-1 lefp"></div>
		<div class="box-1">
			<div class="righp"></div>
		</div>
	</div>
	<!--荧光点点-->
	<div class="wel" id="git"></div>
	<!--登录注册表-->
	<div class="wel" id="from">
		<div class="box-2 le-1">
			<form action="<%= request.getContextPath()%>/customer/login" method="post">
				<div class="flrg">
					<h3>登录</h3>
					<div class="a">
						<!--<label>账号：</label>-->
						<input type="text" class="in-1" placeholder="请输入账号" name="cid"/>
					</div>
					<div class="a">
						<!--<label>密码：</label>-->
						<input type="password" class="in-1" placeholder="请输入密码" name="password"/>
					</div>
					<div class="a">
						<input type="submit" value="登陆"/>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript">
		
			function isBankCardNo(){
				var b=document.getElementById("bcard").value
				if(!(/^([1-9]{1})(\d{14}|\d{18})$/.test(b))){
					alert("银行卡输入不合法");
					return false;
				}
				return true;
			}
		
			function isPasswordSame(){
				var f=document.getElementById("first").value;
				var s=document.getElementById("second").value;
				if( f!=s ){
					alert("两次密码输入不一致");
					return false;
				}
				return true;
			}
		
			function isTelNo() {
				var tel=document.getElementById("telphone").value;
				if(!(/^1[34578]\d{9}$/.test(tel))){
					alert("手机号码输入不合法"); 
					return false;
				}
				return true;
			}
		
			function isCardNo() {
				
				
				// 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X 
				var id=document.getElementById("card").value;
				/* console.info("456"+id); */
				//var id = $("#Idcardnumber").val();//var id=$("#Idcardnumber")是获取Input文本框对象， .val（）;是获取文本框里面的值
				var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
				if (reg.test(id) === false) {
					alert("身份证输入不合法"); 
					return false;
				}
				return true;
			}
		</script>
		
		<!--   -->
		
		<div class="box-2 le-2">
			<form action="<%= request.getContextPath()%>/customer/register" method="post" onsubmit="isCardNo();isTelNo();isPasswordSame();isBankCardNo()">
				<div class="flrg-1">
					<h3>注册</h3>
					<div class="a">
						<input type="text" class="in-1" placeholder="手机号码" name="cid">
					</div>
					<div class="a">
						<input type="password" class="in-1" placeholder="输入密码" name="password" id="first">
					</div>
					<div class="a">
						<input type="password" class="in-1" placeholder="再次确认密码" id="second">
					</div>
					<div class="a">
						<input type="text" class="in-1" placeholder="身份证号" name="idcard" id="card">
					</div>
					<div class="a">
						<input type="text" class="in-1" placeholder="银行卡号" name="bankcard" id="bcard">
					</div>
					<div class="a">
						<input type="password" class="in-1" placeholder="交易密码" name="tradepassword">
					</div>
					<div class="a">
						<input type="email" class="in-1" placeholder="输入邮箱地址" name="email">
					</div>
					<div class="a">
						<input type="submit" value="注册" />
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>