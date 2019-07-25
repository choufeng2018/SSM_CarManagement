<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type=text/css>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/webmain.css" rel="stylesheet" type="text/css" />
<link href="css/ddsmoothmenu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="scripts/jquery.min.js"></script>
<script type="text/javascript"
	src="scripts/jquery.KinSlideshow-1.2.1.js"></script>
<script type="text/javascript" src="scripts/webtry_roll.js"></script>
<script type="text/javascript" src="scripts/ddsmoothmenu.js"></script>
<script src="scripts/bootstrap.min.js"></script>


</HEAD>
<TABLE height=26 cellSpacing=0 cellPadding=0 width=1002 align=center
	bgColor=#ffffff background=qtimages/zjgdj_02.gif border=0>
	<TBODY>
		<TR>
			<TD align=right width=300></TD>
			<TD align=right></TD>
		</TR>
	</TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=1002 align=center
	bgColor=#ffffff border=0>
	<TBODY>
		<TR>
			<TD height="188" background="qtimages/11.jpg"><p>&nbsp;</p>
				<p>&nbsp;</p>
			<!-- 	<table width="61%" height="51" border="0" align="left">
					<tr>
						<td><div
								style="font-family: 宋体; color: #FFFFFF; filter: Glow(Color = #000000, Strength = 2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top: 5pt">
								<div align="center" class="STYLE5">
									<div align="right"
										style="font-weight: bold; font-size: 50px; color: red;">网上汽车租赁</div>
								</div>
							</div></td>
					</tr>
				</table> --></TD>
		</TR>
	</TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=1002 align=center
	bgColor=#ffffff border=0>
	<TBODY>
		<TR>
			<TD height="33" background="qtimages/22.gif"><table width="98%"
					border="0" align="center" cellpadding="0" cellspacing="0"
					class="red">
					<tr>
						<td align="center"><strong><a href="."><font
									class="STYLE1">首页</font></a></strong></td>
						<td align="center"><strong><a href="gonggaolist.do"><font
									class="STYLE1">网站公告</font></a></strong></td>
						<td align="center"><strong><a href="carlist.do"><font
									class="STYLE1">所有车辆</font></a></strong></td>
									<c:if test="${qiantai==null}">
						<td align="center"><strong><a href="register.do"><font
									class="STYLE1">用户注册</font></a></strong></td>
									</c:if>
						<c:if test="${qiantai!=null}">
							<td align="center"><strong><a href="yudinglist.do"><font
										class="STYLE1">我的预定</font></a></strong></td>
							<td align="center"><strong><a href="jilulist.do"><font
										class="STYLE1">我的租车</font></a></strong></td>
							<td align="center"><strong><a href="liuyanlist.do"><font
										class="STYLE1">我的留言</font></a></strong></td>

							<td align="center"><strong class=" dropdown"><a
									href="#" class=" dropdown-toggle" data-toggle="dropdown"><font
										class=" dropdown STYLE1">个人信息</font><b class="caret"></b>
										<ul class="dropdown-menu">
											<li><a href="userupdate.do">个人信息修改</a></li>
											<li class="divider"></li>
											<li><a href="password.do">密码修改</a></li>
											<li class="divider"></li>
											<li><a href="loginout.do">退出登录</a></li>
										</ul> </a> </strong></td>

							<td align="center"><strong><a href="vip.do?username=${username}"><font
										class="STYLE1">会员信息</font></a></strong></td>
						</c:if>


					</tr>
				</table></TD>
		</TR>
	</TBODY>
</TABLE>