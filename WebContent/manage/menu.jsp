<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</HEAD>
<BODY>
	<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170
		background=images/menu_bg.jpg border=0>
		<TR>
			<TD vAlign=top align=middle>
				<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>

					<TR>
						<TD height=10></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>



					<c:if test="${manage.role==1}">
						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(1)
									href="javascript:void(0);">人员管理</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>
							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="userlist.do" target=main>人员管理</A>
								</TD>
							</TR>


							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>


						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(2)
									href="javascript:void(0);">车辆管理</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>

							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="carlist.do" target=main>车辆管理</A>
								</TD>
							</TR>


							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="carlist2.do" target=main>车辆维修管理</A>
								</TD>
							</TR>


							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>



						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(3)
									href="javascript:void(0);">网站公告</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>

							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="gonggaolist.do" target=main>网站公告管理</A>
								</TD>
							</TR>

							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>



						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(4)
									href="javascript:void(0);">展示图片</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>

							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="piclist.do" target=main>展示图片管理</A>
								</TD>
							</TR>

							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>


						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(5)
									href="javascript:void(0);">报表统计</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>

							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="rilist.do" target=main>日收入统计</A>
								</TD>
							</TR>


							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="yuelist.do" target=main>月收入统计</A>
								</TD>
							</TR>


							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="carlist4.do" target=main>车辆收入统计</A>
								</TD>
							</TR>


							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>


					</c:if>


					<!-- 工作1 -->
					<c:if test="${manage.role==2}">



						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(1)
									href="javascript:void(0);">车辆租赁</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>

							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="carlist3.do" target=main>车辆租赁管理</A>
								</TD>
							</TR>


							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="jilulist.do" target=main>还车管理</A>
								</TD>
							</TR>


							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="jilulist2.do" target=main>技术确认查询</A>
								</TD>
							</TR>


							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="jilulist5.do" target=main>确认管理</A>
								</TD>
							</TR>


							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>



						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(2)
									href="javascript:void(0);">预定租赁</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>

							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="yudinglist.do" target=main>待处理预定</A>
								</TD>
							</TR>


							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="yudinglist2.do" target=main>我处理的预定</A>
								</TD>
							</TR>


							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>


						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(3)
									href="javascript:void(0);">留言管理</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>

							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="liuyanlist.do" target=main>待处理留言</A>
								</TD>
							</TR>


							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="liuyanlist2.do" target=main>我处理的留言</A>
								</TD>
							</TR>


							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>


						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(4)
									href="javascript:void(0);">客户信息</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>

							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="userlist2.do" target=main>客户信息查询</A>
								</TD>
							</TR>





							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>
						
						
						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(5)
									href="javascript:void(0);">会员管理</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>

							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="userlist3.do" target=main>会员信息</A>
								</TD>
							</TR>
												<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="userlist4.do" target=main>普通客户</A>
								</TD>
							</TR>

							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>



					</c:if>



					<c:if test="${manage.role==3}">



						<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
							<TR height=22>
								<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg>
									<A class=menuParent onclick=expand(1)
									href="javascript:void(0);">车辆状态</A>
								</TD>
							</TR>
							<TR height=4>
								<TD></TD>
							</TR>
						</TABLE>
						<TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0
							width=150 border=0>

							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="jilulist3.do" target=main>待确认车辆</A>
								</TD>
							</TR>


							<TR height=20>
								<TD align=middle width=30><IMG height=9
									src="images/menu_icon.gif" width=9></TD>
								<TD><A class=menuChild href="jilulist4.do" target=main>我的确认车辆</A>
								</TD>
							</TR>





							<TR height=4>
								<TD colSpan=2></TD>
							</TR>

						</TABLE>




					</c:if>



					</TD>
					<TD width=1 bgColor=#d1e6f7></TD>
					</TR>
				</TABLE>
</BODY>
</HTML>


