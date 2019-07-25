package com.entity;

//预定
public class Yuding  {

	private int id;//主键
	
	private String xingming;//客户姓名
	
	private String sfz;//身份证号码
	
	private String dianhua;//联系电话
	
	private String sfz2;//身份证复印件
	
	private String jsz;//驾驶证复印件
	
	private int kehuid;//预定客户的id，外键
	
	private String zhuangtai;//预定状态 //处理中/预定成功/预定失败/已取消
	
	private String shijian1;//预定时间
	
	private String shijian2;//处理时间
	
	private String chepai;//车牌
	
	private int carid;//预定车辆ID，外键
	
	private int workid;//工作人员id，外键
	
	private String beizhu;//备注信息

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getXingming() {
		return xingming;
	}

	public void setXingming(String xingming) {
		this.xingming = xingming;
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

	public int getKehuid() {
		return kehuid;
	}

	public void setKehuid(int kehuid) {
		this.kehuid = kehuid;
	}

	public String getZhuangtai() {
		return zhuangtai;
	}

	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
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

	public String getChepai() {
		return chepai;
	}

	public void setChepai(String chepai) {
		this.chepai = chepai;
	}

	public int getCarid() {
		return carid;
	}

	public void setCarid(int carid) {
		this.carid = carid;
	}

	public int getWorkid() {
		return workid;
	}

	public void setWorkid(int workid) {
		this.workid = workid;
	}

	public String getBeizhu() {
		return beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	
	
	
	
	
}
