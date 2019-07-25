package com.entity;

//租车记录
public class Jilu  {

	private int id;//主键
	
	private String chepai;//车牌号

	private int carid;//关联的车辆信息，外键
	
	private Car car;//车辆实体
	
	private int kehuid;//租车的客户ID，外键
	
	private User kehu;//租车的客户
	
	private int workid;//经办的工作人员ID，外键

	private User work;//经办的工作人员
	
	private int jishuid;//技术人员ID，外键
	
	private User jishu;//技术人员
	
	private String sfz;//身份证号码
	
	private String dianhua;//联系电话
	
	private String xingming;//客户姓名
	
	//private String username;//客户昵称
	
	private String sfz2;//身份证复印件
	
	private String jsz;//驾驶证复印件
	
	private String shijian1;//出租时间
	
	private String shijian2;//还车时间
	
	private Double tzujin;//总租金  
	
	//流程：工作人员出租车--》客户还车--》技术确认车辆完好--》工作人员完成结算
	private String zhuangtai;//状态  出租中，还车中,等待技术人员确认,技术人员已确认，完成结算

	private int tianshu;//已租天数

	private String beizhu;//备注
	
	private int weixiu;//维护费

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCarid() {
		return carid;
	}

	public void setCarid(int carid) {
		this.carid = carid;
	}

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public int getKehuid() {
		return kehuid;
	}

	public void setKehuid(int kehuid) {
		this.kehuid = kehuid;
	}

	public User getKehu() {
		return kehu;
	}

	public void setKehu(User kehu) {
		this.kehu = kehu;
	}

	public int getWorkid() {
		return workid;
	}

	public void setWorkid(int workid) {
		this.workid = workid;
	}

	public User getWork() {
		return work;
	}

	public void setWork(User work) {
		this.work = work;
	}

	public int getJishuid() {
		return jishuid;
	}

	public void setJishuid(int jishuid) {
		this.jishuid = jishuid;
	}

	public User getJishu() {
		return jishu;
	}

	public void setJishu(User jishu) {
		this.jishu = jishu;
	}

	public String getSfz() {
		return sfz;
	}

	public void setSfz(String sfz) {
		this.sfz = sfz;
	}

	public String getDianhua() {
		return dianhua;
	}

	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}

	public String getXingming() {
		return xingming;
	}

	public void setXingming(String xingming) {
		this.xingming = xingming;
	}

	public String getSfz2() {
		return sfz2;
	}

	public void setSfz2(String sfz2) {
		this.sfz2 = sfz2;
	}

	public String getJsz() {
		return jsz;
	}

	public void setJsz(String jsz) {
		this.jsz = jsz;
	}

	public String getShijian1() {
		return shijian1;
	}

	public void setShijian1(String shijian1) {
		this.shijian1 = shijian1;
	}

	public String getShijian2() {
		return shijian2;
	}

	public void setShijian2(String shijian2) {
		this.shijian2 = shijian2;
	}

	public String getZhuangtai() {
		return zhuangtai;
	}

	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}

	public int getTianshu() {
		return tianshu;
	}

	public void setTianshu(int tianshu) {
		this.tianshu = tianshu;
	}

	public String getBeizhu() {
		return beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	public int getWeixiu() {
		return weixiu;
	}

	public void setWeixiu(int weixiu) {
		this.weixiu = weixiu;
	}

	public String getChepai() {
		return chepai;
	}

	public void setChepai(String chepai) {
		this.chepai = chepai;
	}

	public Double getTzujin() {
		return tzujin;
	}

	public void setTzujin(Double tzujin) {
		this.tzujin = tzujin;
	}

/*	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}*/

	
	
	
	
	
	
}
