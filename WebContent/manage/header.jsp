<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
</HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="100%" 
background="images/header_bg.jpg" border=0>
  <TR height=56>
    <TD width=260>
    <span style="font-size: 20px;font-weight: bold;color: white;">汽车租赁网站管理后台</span>
    </TD>
    <TD style="FONT-WEIGHT: bold; COLOR: #fff; PADDING-TOP: 20px" 
      align=middle>当前用户：${manage.username } &nbsp;&nbsp; 
      <A style="COLOR: #fff" href="password.do"  target=main>修改密码</A> 
      &nbsp;&nbsp; 
      <A style="COLOR: #fff" onclick="if (confirm('确定要退出吗？')) return true; else return false;"  href="loginout.do" target=_top>退出系统</A> 
    </TD>
    <TD align=right width=268></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TR bgColor=#1c5db6 height=4>
    <TD></TD></TR></TABLE></BODY></HTML>


