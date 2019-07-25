<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
<script language="javascript" type="text/javascript">

function checkform()
{
	 
	

	
	if (document.getElementById('nameid').value=="")
	{
		alert("姓名不能为空");
		return false;
	}
	if (document.getElementById('tejid').value=="")
	{
		alert("手机号码不能为空");
		return false;
	}
	
	return true;
	
}


</script>

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
    <TD align="center" >用户名:</TD>
    <TD align="center"> 
   ${bean.username }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >姓名:</TD>
    <TD align="center"> 
    <input  type="text" name="name" value="${bean.name }"  id='nameid'  size="50"  />
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >手机号码:</TD>
    <TD align="center"> 
    <input  type="text" name="tej" value="${bean.tej }"  id='tejid'  size="50"  />
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >用户角色:</TD>
    <TD align="center"> 
    	
    	<select name="role">
    		<option value="2" <c:if test="${bean.role==2 }">selected</c:if> >工作人员</option>
    		<option value="3" <c:if test="${bean.role==3 }">selected</c:if>  >技术人员</option>
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
