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


车牌号：<input name="chepai" type="text"  value="${chepai }">
客户姓名：<input name="xingming" type="text"  value="${xingming }">
身份证：<input name="sfz" type="text"  value="${sfz }">


<input type="submit"  value="查询"/>


</form>

<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=1>
  	
  	<TR >
    <TD align="center" >车牌号</TD>
    <TD align="center" >出租时间</TD>
    <TD align="center" >还车时间</TD>
     <TD align="center" >租金(元/天)</TD>
    <TD align="center" >已租天数(天)</TD>
    <TD align="center" >总租金(元)</TD>
    <TD align="center" >维护费(元)</TD>
    <TD align="center" >总计(元)</TD>
    <TD align="center">操作</TD>
    </TR>
    <c:forEach items="${list}"  var="bean">

    <TR >
    <TD align="center" >${bean.chepai }</TD>
    <TD align="center" >${bean.shijian1 }</TD>
    <TD align="center" >${bean.shijian2 }</TD>
    <TD align="center" >${bean.car.zujin }</TD>
    <TD align="center" >${bean.tianshu }</TD>
    <TD align="center" >${bean.tzujin }</TD>
    <TD align="center" >${bean.weixiu }</TD>
    <TD align="center" >${bean.weixiu+bean.tzujin }</TD>
    <TD align="center"> 
  	
	  <a href="${url2 }update3.do?id=${bean.id }"><span style="font-size: 12px;">查看</span></a>
      &nbsp;
      <a href="${url2 }update7.do?id=${bean.id }"><span style="font-size: 12px;">确认支付</span></a>
      &nbsp;
    </TD>
    </TR>
    </c:forEach>
    
    <TR >
    <TD align="center" colspan="21" >${pagerinfo }</TD>

  	
    </TR>
    
    
    </TABLE>

 </BODY></HTML>
