<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/admin.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=images/title_bg1.jpg>当前位置:---》》${title }</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=images/shadow_bg.jpg></TD></TR></TABLE>

<form action="${url }" method="post">

<input  onclick="javascript:window.location.href='${url2}add.do';"  type="button" value="添加人员" style="height: 28px;width: 100px;" />


用户名：<input name="username" type="text"  value="${username }">
<input type="submit"  value="查询"/>


</form>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=1>
  	
  	<TR >
    <TD align="center" >用户名</TD>
    <TD align="center" >密码</TD>
    <TD align="center" >姓名</TD>
    <TD align="center" >手机号码</TD>
    <TD align="center" >添加时间</TD>
    <TD align="center" >用户角色</TD>
    <TD align="center"> 
  	操作
    </TD>
    </TR>
    <c:forEach items="${list}"  var="bean">

    <TR >
    <TD align="center" >${bean.username }</TD>
    <TD align="center" >${bean.password }</TD>
    <TD align="center" >${bean.name }</TD>
    <TD align="center" >${bean.tej }</TD>
    <TD align="center" >${bean.createtime }</TD>
    <TD align="center" >
    <c:if test="${bean.role==2 }">工作人员</c:if>
    <c:if test="${bean.role==3 }">技术人员</c:if>
    </TD>
    <TD align="center"> 
  	
	  <a href="${url2 }update3.do?id=${bean.id }"><span style="font-size: 12px;">查看</span></a>
      &nbsp;
      <a href="${url2 }update.do?id=${bean.id }"><span style="font-size: 12px;">更新</span></a>
      &nbsp;
      <a href="${url2 }delete.do?id=${bean.id }" onclick="return confirm('确定要删除吗?'); ">
      <span style="font-size: 12px;">删除</span></a>
      &nbsp;
 
    </TD>
    </TR>
    </c:forEach>
    
    <TR >
    <TD align="center" colspan="21" >${pagerinfo }</TD>

  	
    </TR>
    
    
    </TABLE>

 </BODY></HTML>
