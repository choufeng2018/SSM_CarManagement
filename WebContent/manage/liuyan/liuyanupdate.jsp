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
     <form action="${url }" method="post" onsubmit="return checkform()">
<TABLE cellSpacing=0 cellPadding=0 width="80%" align=center border=1>
  	
  	<TR height=>
    <TD align="center" >客户姓名:</TD>
    <TD align="center"> 
    ${bean.name }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >留言标题:</TD>
    <TD align="center"> 
    ${bean.ltitle }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >留言内容:</TD>
    <TD align="center"> 
 
 	${bean.neirong }
    </TD>
    </TR>
    
    
    
    <TR height=>
    <TD align="center" >回复内容:</TD>
    <TD align="center"> 
  
 	<textarea rows="7" cols="50" name="huifu" ></textarea>
 	
    </TD>
    </TR>
    
    
    
    
    
    
    <TR height=>
    <TD align="center" > 操作：</TD>
    <TD align="center"> 
     <input type="submit" value="提交" style="width: 60px" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input  onclick="javascript:history.go(-1);" style="width: 60px" type="button" value="返回" />
    
    </TD>
    </TR>
    
    </TABLE>
    </form>
 </BODY></HTML>
