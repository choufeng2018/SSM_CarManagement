<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
	<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
		<TR height=28>
			<TD background=images/title_bg1.jpg>当前位置:---》》${title }</TD>
		</TR>
		<TR>
			<TD bgColor=#b1ceef height=1></TD>
		</TR>
		<TR height=20>
			<TD background=images/shadow_bg.jpg></TD>
		</TR>
	</TABLE>


<form name="form1" method="post" action="vipcharge2.do" onsubmit="return checkfrom()">
	<TABLE cellSpacing=0 cellPadding=0 width="50%" align=center border=1>

		<TR>
			<TD align="center">用户名</TD>
			<TD align="center">
			<input align="center" name="username" type="text" value="${bean.username}" readonly="yes" style="border:0;background:transparent;">
			</TD>
		</TR>
				<TR>
			<TD align="center">用户ID</TD>
			<TD align="center">
			<input align="center" name="kehuid" type="text" value="${bean.kehuid}" readonly="yes" style="border:0;background:transparent;">
			</TD>
		</TR>
		<TR>
			<TD align="center">积分</TD>
			<TD align="center">
			<input align="center" name="points" type="text" value="${bean.points}" readonly="yes" style="border:0;background:transparent;">
			</TD>
		</TR>
		<TR>
			<TD align="center">VIP等级</TD>
			<TD align="center">
			<input align="center" name="level" type="text" value="${bean.level}" readonly="yes" style="border:0;background:transparent;">
			</TD>
		</TR>
		<TR>
			<TD align="center">到期时间</TD>
			<TD align="center">
			<input align="center" name="enddate" type="text" value="${bean.enddate}" readonly="yes" style="border:0;background:transparent;">
			</TD>
		<TR>
			<TD align="center">充值选项</TD>
			<TD align="center">
			
			<input name="month" type="radio"
				class="noborder" value="1" checked> 1个月&nbsp;(20元)
				
				 <input
				name="month" type="radio" class="noborder" value="2">
				2个月&nbsp;(40元) 
				
				<input name="month" type="radio" class="noborder"
				value="3"> 3个月&nbsp;(60元)
				 
				 <input name="month" type="radio"
				class="noborder" value="6"> 6个月&nbsp;(114元 95折) 
				
				<input
				name="month" type="radio" class="noborder" value="12">
				12个月&nbsp;(216元 9折)</TD>
				
		</TR>


		</TR>


		<TR>

			<TD colspan="2" align="center">
			 <input type="submit"  value="充值" />
			 </TD>

		</TR>


		<TR>
			<%--     <TD align="center" colspan="21" >${pagerinfo }</TD> --%>


		</TR>


	</TABLE>

</BODY>
</HTML>
