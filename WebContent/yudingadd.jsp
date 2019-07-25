<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




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
                align=absMiddle>&nbsp;预定租车</TD>
                <TD style="PADDING-RIGHT: 1px" align=right 
                background=qtimages/zjgdj_79.gif>
                </TD>
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
                      <TD style="PADDING-TOP: 8px" align=middle class=newsline>
     


<script language="javascript" type="text/javascript">

function checkform()
{
	 
	

	if (document.getElementById('xingmingid').value=="")
	{
		alert("客户姓名不能为空");
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
                      
                      
                      <form name="form1" method="post" action="${url }" onsubmit="return checkfrom()" enctype="multipart/form-data">
                      
                        <table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#529C33" style="border-collapse:collapse">
                          <tr>
                            <td>预定的车辆：</td>
                            <td>
                            ${car.chepai }
                            </td>
                          </tr>
                         
                          <tr>
                            <td>身份证号码：</td>
                            <td>${user.sfz }
                              &nbsp;</td>
                          </tr>
                           <tr>
                            <td>客户姓名：</td>
                            <td><input name='xingming' value="${user.name }" type='text' id='xingmingid' style="width: 300px;" />
                              &nbsp;*</td>
                          </tr>
                          <tr>
                            <td>联系电话：</td>
                            <td><input name='dianhua' value="${user.tej }" type='text' id='dianhuaid' style="width: 300px;" />
                              &nbsp;*</td>
                          </tr>
                          
                           <tr>
                            <td>身份证复印件：</td>
                            <td><input name="prodFile1"  type="file"  id='uploadfile1id' style="width: 300px;" />
                              &nbsp;*</td>
                          </tr>
                          
                          
                          <tr>
                            <td>驾驶证复印件：</td>
                            <td><input name="prodFile2"  type="file"  id='uploadfile2id' style="width: 300px;" />&nbsp;*</td>
                          </tr>
                          
                          <tr>
                            <td>备注信息：</td>
                            <td><input name='beizhu' type='text' style="width: 300px;" /></td>
                          </tr>
                          
                          
                          
                          
                          <tr>
                            <td>&nbsp;</td>
                            <td>
                            <input type="submit" name="Submit5" value="提交"  style="width:80px; height:30px; border:solid 1px #000000; color:#666666"/>
                              &nbsp; &nbsp; &nbsp; &nbsp;
							<input type="reset" name="Submit22" value="重置"  style="width:80px; height:30px; border:solid 1px #000000; color:#666666" /></td>
                          </tr>
                        </table>
                      </form>
                        <p align="center">&nbsp;</p>
                        <p align="center"></p>
                        <p align="center">&nbsp;</p></TD>
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