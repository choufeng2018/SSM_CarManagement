<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	 
	

	if (document.getElementById('xingmingid').value=="")
	{
		alert("客户姓名不能为空");
		return false;
	}
	if (document.getElementById('sfzid').value=="")
	{
		alert("身份证号码不能为空");
		return false;
	}
	
	if (document.getElementById('sfzid').value.length<6)
	{
		alert("身份证长度必须等于18位");
		return false;
	}
	
	
	if (document.getElementById('dianhuaid').value=="")
	{
		alert("联系电话不能为空");
		return false;
	}

	if (document.getElementById('uploadfile1id').value=="")
	{
		alert("身份证复印件不能为空");
		return false;
	}
	if (document.getElementById('uploadfile2id').value=="")
	{
		alert("驾驶证复印件不能为空");
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
     <form action="${url }" method="post" onsubmit="return checkform()" enctype="multipart/form-data">
<TABLE cellSpacing=0 cellPadding=0 width="80%" align=center border=1>
  	
  	<TR height=>
    <TD align="center" >车牌号:</TD>
    <TD align="center"> 
    ${car.chepai }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >客户姓名:</TD>
    <TD align="center"> 
    <input  type="text" name="xingming"  id='xingmingid'  size="50"  />
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >身份证号码:</TD>
    <TD align="center"> 
    <input  type="text" name="sfz"  id='sfzid'  size="50"  />
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >联系电话:</TD>
    <TD align="center"> 
    <input  type="text" name="dianhua"  id='dianhuaid'  size="50"  />
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >身份证复印件:</TD>
    <TD align="center"> 
    <input name="prodFile1"  type="file"  id='uploadfile1id'  size="50"  />
 
    </TD>
    </TR>
    
     <TR height=>
    <TD align="center" >驾驶证复印件:</TD>
    <TD align="center"> 
    <input name="prodFile2"  type="file"  id='uploadfile2id'  size="50"  />
 
    </TD>
    </TR>
    
    
    
    <TR height=>
    <TD align="center" >备注:</TD>
    <TD align="center"> 
    <input  type="text" name="beizhu"    size="50"  />
 
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
