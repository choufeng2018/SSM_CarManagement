package com.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.entity.Car;
import com.entity.Gonggao;
import com.entity.Jilu;
import com.entity.Liuyan;
import com.entity.User;
import com.entity.Vip;
import com.entity.Yuding;
import com.service.CarService;
import com.service.GonggaoService;
import com.service.JiluService;
import com.service.LiuyanService;
import com.service.PicService;
import com.service.UserService;
import com.service.VipService;
import com.service.YudingService;
import com.util.Pager;
import com.util.Util;



@Controller
@RequestMapping("/")
public class IndexController {

	
	@Resource
	private UserService userService;
	
	@Resource
	private GonggaoService gonggaoService;
	
	@Resource
	private CarService carService;
	
	@Resource
	private PicService picService;
	
	@Resource
	private YudingService yudingService;
	
	@Resource
	private JiluService jiluService;
	
	@Resource
	private LiuyanService liuyanService;
	
	@Resource
	private VipService vipService;
	
	
	@Value("#{jdbc.pageSize}")
	private int pageSize;


	// 获取输出对象
	public PrintWriter getPrintWriter(HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = null;
		try {
			writer = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return writer;
	}

	
	//网站首页
	@RequestMapping("/index.do")
	public String index(HttpServletRequest request,HttpServletResponse response){
		//网站公告
		request.setAttribute("gonggaolist", gonggaoService.selectBeanList(0, 8, null));
		//最新车辆
		request.setAttribute("carlist", carService.selectBeanList(0, 4, null,null,null,null));
		//展示图片
		request.setAttribute("piclist", picService.selectBeanList(0, 99));
		return "index.jsp";
	}
	
	
	//网站公告列表
	@RequestMapping("/gonggaolist.do")
	public String gonggaolist(HttpServletRequest request,String pagenum,String gbiaoti){

		//查询条件返回页面
		if (gbiaoti != null && !"".equals(gbiaoti)) {

			request.setAttribute("gbiaoti", gbiaoti);
		}

		//分页功能默认第一页
		int currentpage = 1;
		//获取当前页
		if (pagenum != null) {
			currentpage = Integer.parseInt(pagenum);
		}

		//查询列表
		List<Gonggao> list = gonggaoService.selectBeanList((currentpage - 1)* pageSize, pageSize, gbiaoti);

		//列表返回页面
		request.setAttribute("list", list);

		//获取总数量
		int total = gonggaoService.selectBeanCount(gbiaoti);

		//分页信息返回页面
		request.setAttribute("pagerinfo", Pager.getPagerNormal(total, pageSize,
				currentpage, "gonggaolist.do", "共有" + total + "条记录"));


		request.setAttribute("title", "网站公告");
		

		return "gonggaolist.jsp";

	}
	
	
	
	//网站公告详情页面
	@RequestMapping("/gonggaoview.do")
	public String gonggaoview(HttpServletRequest request,int id){

		Gonggao bean = gonggaoService.selectBeanById(id);

		request.setAttribute("bean", bean);

		request.setAttribute("title", "网站公告详情");
		

		return "gonggaoview.jsp";

	}
	
	//车辆列表
	@RequestMapping("/carlist.do")
	public String carlist(HttpServletRequest request,String pagenum,String pinpai,String xinghao,String yanse){

		//查询条件返回页面
		if (pinpai != null && !"".equals(pinpai)) {

			request.setAttribute("pinpai", pinpai);
		}
		
		if (xinghao != null && !"".equals(xinghao)) {

			request.setAttribute("xinghao", xinghao);
		}
		if (yanse != null && !"".equals(yanse)) {

			request.setAttribute("yanse", yanse);
		}

		//分页功能默认第一页
		int currentpage = 1;
		//获取当前页
		if (pagenum != null) {
			currentpage = Integer.parseInt(pagenum);
		}

		//查询列表
		List<Car> list = carService.selectBeanList((currentpage - 1)* pageSize, pageSize, null,pinpai,xinghao,yanse);

		//列表返回页面
		request.setAttribute("list", list);

		//获取总数量
		int total = carService.selectBeanCount(null,pinpai,xinghao,yanse);

		//分页信息返回页面
		request.setAttribute("pagerinfo", Pager.getPagerNormal(total, pageSize,
				currentpage, "carlist.do", "共有" + total + "条记录"));


		request.setAttribute("title", "车辆");
		

		return "carlist.jsp";

	}
	
	//车辆详情页面
	@RequestMapping("/carview.do")
	public String carview(HttpServletRequest request,int id){

		Car bean = carService.selectBeanById(id);

		request.setAttribute("bean", bean);

		request.setAttribute("title", "车辆详情");
		

		return "carview.jsp";

	}
	
	
	//跳转到用户注册页面
	@RequestMapping("/register.do")
	public String register(HttpServletRequest request){

		request.setAttribute("title", "用户注册");

		return "register.jsp";

	}
	
	
	//用户注册操作
	@RequestMapping("/register2.do")
	public void register2(HttpServletRequest request,HttpServletResponse response,User user){
		
		PrintWriter writer = this.getPrintWriter(response);

		User bean = userService.useryz(user.getUsername());
		
		if(bean!=null){
			
			writer.print("<script language=javascript>alert('该用户名已经存在，注册失败！');window.location.href='register.do';</script>");
		
			return;	
		}
		
		bean = userService.sfzyz(user.getSfz());
		
		if(bean!=null){
			
			writer.print("<script language=javascript>alert('该身份证已经存在，注册失败！');window.location.href='register.do';</script>");
		
			return;	
		}
		
		user.setCreatetime(Util.getTime());
		user.setRole(4);
		
		userService.insertBean(user);
		
		writer.print("<script language=javascript>alert('注册成功');window.location.href='login.do';</script>");
		

	}
	
	
	//跳转到用户登录页面
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request){

		request.setAttribute("title", "用户登录");

		return "login.jsp";

	}
	
	
	//用户登录操作
	@RequestMapping("/login2.do")
	public void login2(HttpServletRequest request,HttpServletResponse response,String username,String password){
		
		PrintWriter writer = this.getPrintWriter(response);
		
		
		User bean = userService.userlogin(username, password, 4);

		
		if(bean==null){
			
			writer.print("<script language=javascript>alert('用户名或者密码错误，登录失败！');window.location.href='login.do';</script>");
		
			
		}else{
			
			HttpSession session = request.getSession();
			session.setAttribute("qiantai", bean);
			session.setAttribute("username", bean.getUsername());
			
			Vip vip=vipService.selectBeanByUsername(username);
			if(vip!=null) {
				session.setAttribute("vip", vip);
			}else {
				Vip vip2=new Vip();
				vip2.setUsername(username);
				vip2.setLevel(0);
				vip2.setPoints(0);
				session.setAttribute("vip", vip2);
			}
			writer.print("<script language=javascript>alert('登录成功');window.location.href='.';</script>");
			
		}

	}
	
	
	
	//安全退出操作
	@RequestMapping("/loginout.do")
	public void loginout(HttpServletRequest request,HttpServletResponse response){
		
		PrintWriter writer = this.getPrintWriter(response);
		
		HttpSession session = request.getSession();
		session.removeAttribute("qiantai");
		
		writer.print("<script language=javascript>alert('退出成功');window.location.href='.';</script>");
		

	}
	
	
	
	//跳转到修改密码页面
	@RequestMapping("/password.do")
	public String password(HttpServletRequest request){

		request.setAttribute("title", "修改密码");

		return "password.jsp";

	}
	
	
	//修改密码操作
	@RequestMapping("/password2.do")
	public void password2(HttpServletRequest request,HttpServletResponse response,String password1,String password2){
		
		PrintWriter writer = this.getPrintWriter(response);
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("qiantai");
		
		
		User bean = userService.userlogin(user.getUsername(), password1, 4);

		
		if(bean==null){
			
			writer.print("<script language=javascript>alert('原密码错误，修改失败！');window.location.href='password.do';</script>");
		
			
		}else{
			
			bean.setPassword(password2);
			
			userService.updateBean(bean);
			
			writer.print("<script language=javascript>alert('修改成功,请重新登录');window.location.href='loginout.do';</script>");
			
		}
		
		
	}
	
	
	//跳转到个人信息维护页面
	@RequestMapping("/userupdate.do")
	public String userupdate(HttpServletRequest request){

		request.setAttribute("title", "个人信息维护");
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("qiantai");
		
		
		User bean = userService.selectBeanById(user.getId());
		
		request.setAttribute("bean", bean);

		return "userupdate.jsp";

	}
	
	
	//个人信息维护操作
	@RequestMapping("/userupdate2.do")
	public void userupdate2(HttpServletRequest request,HttpServletResponse response,String name,String tej){
		
		PrintWriter writer = this.getPrintWriter(response);
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("qiantai");
		
		
		User bean = userService.selectBeanById(user.getId());

		
		bean.setTej(tej);
		bean.setName(name);
		
		userService.updateBean(bean);
		
		writer.print("<script language=javascript>alert('修改成功');window.location.href='userupdate.do';</script>");

		
		
	}
	
	
	
	
	//跳转预定租车页面
	@RequestMapping("/yudingadd.do")
	public String yudingadd(HttpServletRequest request,HttpServletResponse response,int carid) {
		
		PrintWriter writer = this.getPrintWriter(response);
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("qiantai");
		
		if (user == null) {
			writer.print("<script  language='javascript'>alert('请先登录');window.location.href='login.do';</script>");
			return  null;
		}
		
		Car car = carService.selectBeanById(carid);
		
		request.setAttribute("car", car);
		
		user = userService.selectBeanById(user.getId());
		
		request.setAttribute("user", user);
		
		
		request.setAttribute("url", "yudingadd2.do?carid="+carid);
		request.setAttribute("title", "预定租车");
	
		return "yudingadd.jsp";
		
	}
	
	
	//预定租车操作
	@RequestMapping("/yudingadd2.do")
	public void yudingadd2(HttpServletRequest request,HttpServletResponse response,Yuding bean,MultipartFile prodFile1,MultipartFile prodFile2) throws IOException{
		
		PrintWriter writer = this.getPrintWriter(response);
		
		Car car = carService.selectBeanById(bean.getCarid());
		
		int carid = car.getId();
	
		if(prodFile1==null || prodFile1.getSize()<=0 ){
			this.getPrintWriter(response).print("<script language=javascript>alert('身份证复印件不能为空');" +
			"window.location.href='yudingadd.do?carid="+carid+"';</script>");
			return;
		}
		
		if(prodFile2==null || prodFile2.getSize()<=0 ){
			this.getPrintWriter(response).print("<script language=javascript>alert('驾驶证复印件不能为空');" +
			"window.location.href='yudingadd.do?carid="+carid+"';</script>");
			return;
		}
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("qiantai");
		
		bean.setZhuangtai("处理中");
		bean.setShijian1(Util.getTime());

		bean.setChepai(car.getChepai());
		bean.setKehuid(user.getId());
		
		user = userService.selectBeanById(user.getId());
		
		bean.setSfz(user.getSfz());
		
		String sfz2 =  Util.uploadFile(request, prodFile1);
		String jsz =  Util.uploadFile(request, prodFile2);

		bean.setSfz2(sfz2);
		bean.setJsz(jsz);
		
		yudingService.insertBean(bean);
		
		car.setStatus("预定中");
		
		carService.updateBean(car);
		
		writer.print("<script  language='javascript'>alert('操作成功');window.location.href='yudinglist.do'; </script>");
		
	
	}
	
	
	//我的预定
	@RequestMapping("/yudinglist.do")
	public String yudinglist(HttpServletRequest request,String pagenum,String chepai){

		//查询条件返回页面
		if (chepai != null && !"".equals(chepai)) {

			request.setAttribute("chepai", chepai);
		}
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("qiantai");
		
		//分页功能默认第一页
		int currentpage = 1;
		//获取当前页
		if (pagenum != null) {
			currentpage = Integer.parseInt(pagenum);
		}

		//查询列表
		List<Yuding> list = yudingService.selectBeanList((currentpage - 1)
				* pageSize, pageSize,chepai,null,user.getId(),0,null);

		//列表返回页面
		request.setAttribute("list", list);

		//获取总数量
		int total = yudingService.selectBeanCount(chepai,null,user.getId(),0,null);

		//分页信息返回页面
		request.setAttribute("pagerinfo", Pager.getPagerNormal(total, pageSize,
				currentpage, "yudinglist.do", "共有" + total + "条记录"));


		request.setAttribute("title", "我的预定");
		

		return "yudinglist.jsp";

	}
	
	//查看预定详情页面
	@RequestMapping("/yudingview.do")
	public String yudingview(HttpServletRequest request,int id){

		Yuding bean = yudingService.selectBeanById(id);

		request.setAttribute("bean", bean);

		request.setAttribute("title", "预定详情");
		

		return "yudingview.jsp";

	}
	
	
	
	//取消预定租车操作
	@RequestMapping("/yudingupdate2.do")
	public void yudingupdate2(HttpServletRequest request,HttpServletResponse response,int id) throws IOException{
		
		PrintWriter writer = this.getPrintWriter(response);
		
		Yuding yuding = yudingService.selectBeanById(id);
		
		yuding.setZhuangtai("已取消");
		
		yudingService.updateBean(yuding);
		
		Car car = carService.selectBeanById(yuding.getCarid());
		
		car.setStatus("待租赁");
		
		carService.updateBean(car);
		
		writer.print("<script  language='javascript'>alert('操作成功');window.location.href='yudinglist.do'; </script>");
		
	
	}
	
	
	//删除预定租车操作
	@RequestMapping("/yudingdelete.do")
	public void yudingdelete(HttpServletRequest request,HttpServletResponse response,int id) throws IOException{
		
		PrintWriter writer = this.getPrintWriter(response);

		
		yudingService.deleteBean(id);
		
		
		writer.print("<script  language='javascript'>alert('操作成功');window.location.href='yudinglist.do'; </script>");
		
	
	}
	
	
	//我的租车
	@RequestMapping("/jilulist.do")
	public String jilulist(HttpServletRequest request,String pagenum,String chepai){

		//查询条件返回页面
		if (chepai != null && !"".equals(chepai)) {

			request.setAttribute("chepai", chepai);
		}
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("qiantai");
		
		//分页功能默认第一页
		int currentpage = 1;
		//获取当前页
		if (pagenum != null) {
			currentpage = Integer.parseInt(pagenum);
		}

		//查询列表
		List<Jilu> list = jiluService.selectBeanList((currentpage - 1)
				* pageSize, pageSize,chepai,null,null,null,0,0,user.getId());

		//列表返回页面
		request.setAttribute("list", list);

		//获取总数量
		int total = jiluService.selectBeanCount(chepai,null,null,null,0,0,user.getId());

		//分页信息返回页面
		request.setAttribute("pagerinfo", Pager.getPagerNormal(total, pageSize,
				currentpage, "jilulist.do", "共有" + total + "条记录"));


		request.setAttribute("title", "我的租车");
		

		return "jilulist.jsp";

	}
	
	
	//查看租车记录详情页面
	@RequestMapping("/jiluview.do")
	public String jiluview(HttpServletRequest request,int id){

		Jilu bean = jiluService.selectBeanById(id);
		
		Car car = carService.selectBeanById(bean.getCarid());

		bean.setCar(car);
		
		request.setAttribute("bean", bean);

		request.setAttribute("title", "租车记录详情");
		

		return "jiluview.jsp";

	}
	
	
	
	
	//跳转留言页面
	@RequestMapping("/liuyanadd.do")
	public String liuyanadd(HttpServletRequest request,HttpServletResponse response) {
		
		PrintWriter writer = this.getPrintWriter(response);
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("qiantai");
		
		if (user == null) {
			writer.print("<script  language='javascript'>alert('请先登录');window.location.href='login.do';</script>");
			return  null;
		}

		
		request.setAttribute("url", "liuyanadd2.do");
		request.setAttribute("title", "留言");
	
		return "liuyanadd.jsp";
		
	}
	
	
	//留言操作
	@RequestMapping("/liuyanadd2.do")
	public void liuyanadd2(HttpServletRequest request,HttpServletResponse response,Liuyan bean) throws IOException{
		
		PrintWriter writer = this.getPrintWriter(response);
		
		
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("qiantai");
		
		user = userService.selectBeanById(user.getId());
		
		bean.setKehuid(user.getId());
		bean.setName(user.getName());
		bean.setShijian1(Util.getTime());
		bean.setZhuangtai("未回复");
		
		
		liuyanService.insertBean(bean);
		
	
		
		writer.print("<script  language='javascript'>alert('操作成功');window.location.href='liuyanlist.do'; </script>");
		
	
	}
	
	
	//我的留言
	@RequestMapping("/liuyanlist.do")
	public String liuyanlist(HttpServletRequest request,String pagenum,String ltitle){

		//查询条件返回页面
		if (ltitle != null && !"".equals(ltitle)) {

			request.setAttribute("ltitle", ltitle);
		}
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("qiantai");
		
		//分页功能默认第一页
		int currentpage = 1;
		//获取当前页
		if (pagenum != null) {
			currentpage = Integer.parseInt(pagenum);
		}

		//查询列表
		List<Liuyan> list = liuyanService.selectBeanList((currentpage - 1)
				* pageSize, pageSize,ltitle,null,user.getId(),0);

		//列表返回页面
		request.setAttribute("list", list);

		//获取总数量
		int total = liuyanService.selectBeanCount(ltitle,null,user.getId(),0);

		//分页信息返回页面
		request.setAttribute("pagerinfo", Pager.getPagerNormal(total, pageSize,
				currentpage, "liuyanlist.do", "共有" + total + "条记录"));


		request.setAttribute("title", "我的留言");
		

		return "liuyanlist.jsp";

	}
	
	//查看留言详情页面
	@RequestMapping("/liuyanview.do")
	public String liuyanview(HttpServletRequest request,int id){

		Liuyan bean = liuyanService.selectBeanById(id);

		request.setAttribute("bean", bean);

		request.setAttribute("title", "留言详情");
		

		return "liuyanview.jsp";

	}
	
	
	
	
	//删除留言操作
	@RequestMapping("/liuyandelete.do")
	public void liuyandelete(HttpServletRequest request,HttpServletResponse response,int id) throws IOException{
		
		PrintWriter writer = this.getPrintWriter(response);

		
		liuyanService.deleteBean(id);
		
		
		writer.print("<script  language='javascript'>alert('操作成功');window.location.href='liuyanlist.do'; </script>");
		
	
	}
	
	
	//会员页
	@RequestMapping("/vip.do")
	public String vip(HttpServletRequest request,String username){
		
		Vip bean=vipService.selectBeanByUsername(username);
		if(bean!=null) {
		bean.setEnddate(bean.getEnddate().split(" ")[0]);
		request.setAttribute("bean", bean);

		}else {
			Vip bean2=new Vip();
			bean2.setUsername(username);
			request.setAttribute("bean", bean2);
		}
		request.setAttribute("title", "会员详情");
		return "vip.jsp";
	}
	
}












