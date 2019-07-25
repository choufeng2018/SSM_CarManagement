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
	 
	
	if (document.getElementById('weixiuid').value=="")
	{
		alert("维护费不能为空");
		return false;
	}
	
	
	//验证正整数
	var reg1 =  /^\d+$/;
	 
	if (document.getElementById('weixiuid').value.match(reg1) == null)
	{
		alert("维护费必须为正整数");
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
    <TD align="center" >出租时间:</TD>
    <TD align="center"> 
   ${bean.shijian1 }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >出租时间:</TD>
    <TD align="center"> 
   ${bean.shijian1 }
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >还车时间:</TD>
    <TD align="center"> 
  ${bean.shijian2 }
 	
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >租金(元/天):</TD>
    <TD align="center"> 
 	${bean.car.zujin }
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >已租天数(天):</TD>
    <TD align="center"> 
    ${bean.tianshu }
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >总租金(元):</TD>
    <TD align="center"> 
 	${bean.tzujin }
    </TD>
    </TR>
    
    
<%--     
    <TR height=>
    <TD align="center" >工作人员:</TD>
    <TD align="center"> 
 	${bean.work.name }
    </TD>
    </TR> --%>
    
    
    
    <TR height=>
    <TD align="center" >维护费(元):</TD>
    <TD align="center"> 
 	 <input  type="text" name="weixiu" id="weixiuid" value="0"  size="50"  />(如无损伤则为0)
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
