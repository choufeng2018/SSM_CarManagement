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
    <TD align="center" >车牌号:</TD>
    <TD align="center"> 
    ${bean.chepai }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >客户姓名:</TD>
    <TD align="center"> 
    ${bean.xingming }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >身份证号码:</TD>
    <TD align="center"> 
 
 	${bean.sfz }
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >联系电话:</TD>
    <TD align="center"> 
    
 	${bean.dianhua }
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >身份证复印件:</TD>
    <TD align="center"> 
 	<img  src="<%=basePath %>${bean.sfz2 }" width="200" height="200" />
    </TD>
    </TR>
    
     <TR height=>
    <TD align="center" >驾驶证复印件:</TD>
    <TD align="center"> 
 	<img  src="<%=basePath %>${bean.jsz }" width="200" height="200" />
    </TD>
    </TR>
    
    
    
    <TR height=>
    <TD align="center" >备注:</TD>
    <TD align="center"> 
   ${bean.beizhu }
 
    </TD>
    </TR>
    
    
    <TR height=>
    <TD align="center" >预定时间:</TD>
    <TD align="center"> 
   ${bean.shijian1 }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >预定结果:</TD>
    <TD align="center"> 
  
 	<select name="zhuangtai">
 		<option value="预定成功">预定成功</option>
 		<option value="预定失败">预定失败</option>
 	</select>
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
