package com.entity;

//留言
public class Liuyan  {

	private int id;//主键
	
	private int kehuid;//留言的客户，外键

	private String name;//客户姓名
	
	private String ltitle;//留言标题
	
	private String neirong;//留言内容
	
	private String shijian1;//留言时间
	
	private String zhuangtai;//回复状态  未回复/已回复
	
	private String huifu;//回复内容
	
	private String shijian2;//回复时间
	
	private int workid;//回复的工作人员，外键

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getKehuid() {
		return kehuid;
	}

	public void setKehuid(int kehuid) {
		this.kehuid = kehuid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLtitle() {
		return ltitle;
	}

	public void setLtitle(String ltitle) {
		this.ltitle = ltitle;
	}

	public String getNeirong() {
		return neirong;
	}

	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}

	public String getShijian1() {
		return shijian1;
	}

	public void setShijian1(String shijian1) {
		this.shijian1 = shijian1;
	}

	public String getZhuangtai() {
		return zhuangtai;
	}

	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}

	public String getHuifu() {
		return huifu;
	}

	public void setHuifu(String huifu) {
		this.huifu = huifu;
	}

	public String getShijian2() {
		return shijian2;
	}

	public void setShijian2(String shijian2) {
		this.shijian2 = shijian2;
	}

	public int getWorkid() {
		return workid;
	}

	public void setWorkid(int workid) {
		this.workid = workid;
	}
	
	
	
	
	
	
}
