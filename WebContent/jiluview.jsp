<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<title>汽车租赁网站</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE2 {	color: #0066CC;
	font-weight: bold;
}
-->
</style>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE5 {color: #CCFFCC;
	font-size: 26pt;
}
.STYLE6 {color: #288848}
.STYLE7 {	color: #185838;
	font-weight: bold;
}
-->
</style>
</head>
  <%
  String id=request.getParameter("id");
   %>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<%@ include file="qttop.jsp"%>


<TABLE height=8 cellSpacing=0 cellPadding=0 width=1002 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=1002 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD vAlign=top>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=8></TD>
          <TD vAlign=top>
            <TABLE height=27 cellSpacing=0 cellPadding=0 width="100%" 
            background=qtimages/zjgdj_79.gif border=0>
              <TBODY>
              <TR>
                <TD 
                style="BACKGROUND-POSITION: left 50%; PADDING-LEFT: 12px; FONT-WEIGHT: bold; FONT-SIZE: 10.5pt; COLOR: #3d3d3d; BACKGROUND-REPEAT: no-repeat" 
                width=118 background=qtimages/zjgdj_77.gif><IMG 
                  src="qtimages/zjgdj_sy_26.gif" 
                align=absMiddle>&nbsp;${title }</TD>
                <TD style="PADDING-RIGHT: 1px" align=right 
                background=qtimages/zjgdj_79.gif></TD>
                <TD width=7></TD></TR></TBODY></TABLE>
            <TABLE 
            style="BACKGROUND-POSITION: 50% top; BACKGROUND-REPEAT: repeat-x" 
            cellSpacing=0 cellPadding=8 width="100%" 
            background=qtimages/zjgdj_82.gif border=0>
              <TBODY>
              <TR>
                <TD style="PADDING-TOP: 8px" vAlign=top height=185><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD style="PADDING-TOP: 8px" align=middle class=newsline><p align="center">
					  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   	 <tr>
     <td width='11%'>车牌号：</td>
     <td width='39%'>${bean.chepai }</td>
      <td width='11%'>车架号：</td>
     <td width='39%'>${bean.car.chejia }</td>
    
     </tr>
     
     <tr>
     <td width='11%'>品牌：</td>
     <td width='39%'>${bean.car.pinpai }</td>
      <td width='11%'>型号：</td>
     <td width='39%'>${bean.car.xinghao }</td>
    
     </tr>
     
     
     
     <tr>
     <td width='11%'>客户姓名：</td><td width='39%'>${bean.xingming }</td>
     <td width='11%'>身份证号码：</td><td width='39%'>${bean.sfz }</td>
     </tr>
     
     <tr>
     <td width='11%'>联系电话：</td><td width='39%'>${bean.dianhua }</td>
     <td width='11%'>备注：</td><td width='39%'>${bean.beizhu }</td>
     </tr>
     
     <tr>
     <td width='11%'>出租时间：</td><td width='39%'>${bean.shijian1 }</td>
     <td width='11%'>还车时间：</td><td width='39%'>${bean.shijian2 }</td>
     </tr>
     

     
     
     <tr>
     <td width='11%' height="137">身份证复印件：</td>
     <td colspan="3">
    
      <img src="<%=basePath %>${bean.sfz2 }" width="100" height="100" border="0" />

     </td>
     
     </tr>
     
     <tr>
     <td width='11%' height="137">驾驶证复印件：</td>
     <td colspan="3">
    
      <img src="<%=basePath %>${bean.jsz }" width="100" height="100" border="0" />

     </td>
     
     </tr>
     
     
      <tr>
     <td width='11%'>已租天数：</td><td width='39%'>${bean.shijian1 }</td>
     <td width='11%'>总租金：</td><td width='39%'>${bean.tzujin }</td>
     </tr>
     
     
      <tr>
     <td width='11%'>维护费：</td><td width='39%'>${bean.weixiu }</td>
     <td width='11%'>总计：</td><td width='39%'>${bean.tzujin+bean.weixiu }</td>
     </tr>
     
     
     <tr>
     <td colspan=4 align=center>
     <input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
     &nbsp;&nbsp;
   
     </td>
     </tr>
  </table>
					  </p>
                        </TD>
                    </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
            </TD></TR></TBODY></TABLE>
      <TABLE height=8 cellSpacing=0 cellPadding=0 width="100%" align=center 
      border=0>
        <TBODY>
        <TR>
          <TD></TD></TR></TBODY></TABLE>
      </TD>
    <TD width=8></TD>
    <TD vAlign=top width=220><%@ include file="qtleft.jsp"%></TD></TR></TBODY></TABLE>
<TABLE height=8 cellSpacing=0 cellPadding=0 width=1002 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE height=8 cellSpacing=0 cellPadding=0 width=1002 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE style="BORDER-RIGHT: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid" 
cellSpacing=0 cellPadding=0 width=1002 align=center bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD 
    style="PADDING-RIGHT: 8px; PADDING-LEFT: 20px; PADDING-BOTTOM: 8px; PADDING-TOP: 8px" 
    vAlign=top>
      
      </TD></TR></TBODY></TABLE>
<TABLE height=4 cellSpacing=0 cellPadding=0 width=1002 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD width=5><IMG height=3 src="qtimages/zjgdj_64.gif" width=5></TD>
    <TD background=qtimages/zjgdj_65.gif><IMG height=3 
      src="qtimages/zjgdj_65.gif" width=1></TD>
    <TD width=4><IMG height=3 src="qtimages/zjgdj_67.gif" 
  width=4></TD></TR></TBODY></TABLE>
<TABLE height=8 cellSpacing=0 cellPadding=0 width=1002 align=center 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<%@ include file="qtdown.jsp"%>
</body>
</html>
