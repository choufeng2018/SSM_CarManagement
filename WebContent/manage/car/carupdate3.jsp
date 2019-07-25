<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
     <form action="${url }" method="post" onsubmit="return checkform()" enctype="multipart/form-data">
<TABLE cellSpacing=0 cellPadding=0 width="80%" align=center border=1>
  	
  	<TR height=>
    <TD align="center" >车牌号:</TD>
    <TD align="center"> 
 	${bean.chepai }
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >车架号:</TD>
    <TD align="center"> 
    ${bean.chejia }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >品牌:</TD>
    <TD align="center"> 
    ${bean.pinpai }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >型号:</TD>
    <TD align="center"> 
    ${bean.xinghao }
 
    </TD>
    </TR>
    
    
    <TR height=>
    <TD align="center" >车辆图片:</TD>
    <TD align="center"> 
   <img  src="<%=basePath %>${bean.pic }" width="200" height="200" />
     
 
    </TD>
    </TR>
    
    
    <TR height=>
    <TD align="center" >车价(元):</TD>
    <TD align="center"> 
    ${bean.price }
 
    </TD>
    </TR>
    
    
    
    
    
    <TR height=>
    <TD align="center" >行驶证号:</TD>
    <TD align="center"> 
    ${bean.xsz }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >颜色:</TD>
    <TD align="center"> 
    ${bean.yanse }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >租金(元/天):</TD>
    <TD align="center"> 
    ${bean.zujin }
 
    </TD>
    </TR>
    
    
    <TR height=>
    <TD align="center" >添加时间:</TD>
    <TD align="center"> 
    ${bean.ctime }
 
    </TD>
    </TR>
    
    
    
    
    <TR height=>
    <TD align="center" > 操作：</TD>
    <TD align="center"> 
				<input  onclick="javascript:history.go(-1);" style="width: 60px" type="button" value="返回" />
    
    </TD>
    </TR>
    
    </TABLE>
    </form>
 </BODY></HTML>
