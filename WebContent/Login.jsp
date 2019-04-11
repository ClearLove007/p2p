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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css"/>
</head>

<script type="text/javascript">
		
			function login() {
				 
			    var username = document.getElementById("username");
			    var pass = document.getElementById("opassword");
			 
			    if (username.value != ""&& pass.value  != "") {
			       return true;
			    } 
			    
			    else{
			    	alert("用户名密码不能为空");
			    	return false;
			    }
			}
			
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

<body>
	<!--登录注册表-->
		
		<div id="login_frame">
			<form action="<%= request.getContextPath()%>/customer/login" method="post" id="login" onsubmit=" return login()">
					<h3>登录</h3>
					<p><label class="label_input">账号：</label><input type="text" class="text_field" placeholder="请输入账号" name="cid" id="username"/></p>
					<p><label class="label_input">密码：</label><input type="password" class="text_field" placeholder="请输入密码" name="password" id="opassword"/></p>
					
					<div id="login_control">
						<input class="btn_login" type="submit" value="登陆"/>
					</div>
			</form>
			<a href="">忘记密码？</a>
		</div>
		<div id="register_frame">
			<form action="<%= request.getContextPath()%>/customer/register" method="post" onsubmit="return isCardNo();isTelNo();isPasswordSame();isBankCardNo()">
					<h3>注册</h3>
						<p><label class="label_input">手机号码：</label><input type="text" class="text_field" placeholder="手机号码" name="cid"></p>
						<p><label class="label_input">密码：</label><input type="password" class="text_field" placeholder="输入密码" name="password" id="first"></p>
						<p><label class="label_input">二次确认：</label><input type="password" class="text_field" placeholder="再次确认密码" id="second"></p>
						<p><label class="label_input">身份证：</label><input type="text" class="text_field" placeholder="身份证号" name="idcard" id="card"></p>
						<p><label class="label_input">银行卡：</label><input type="text" class="text_field" placeholder="银行卡号" name="bankcard" id="bcard"></p>
						<p><label class="label_input">交易密码：</label><input type="password" class="text_field" placeholder="交易密码" name="tradepassword"></p>
						<p><label class="label_input">邮箱：</label><input type="email" class="text_field" placeholder="输入邮箱地址" name="email"></p>
					<div id="login_control">
						<input type="submit" class="btn_login" value="注册"  align="middle"/>
					</div>
			</form>
		</div>
</body>
</html>