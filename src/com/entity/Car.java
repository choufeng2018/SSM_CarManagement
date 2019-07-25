package com.entity;

//车辆
public class Car  {

	private int id;//主键
	
	private String chepai;//车牌号
	
	private String chejia;//车架号
	
	private String pinpai;//品牌
	
	private String xinghao;//型号
	
	private String pic;//车辆图片
	
	private String price;//车价

	private String xsz;//行驶证号
	
	private String yanse;//颜色
	
	private int zujin;//租金
	
	private String status;//车辆状态  待租赁/租赁中/维修中/预定中
	
	private String ctime;//添加时间
	
	private int weihu;//总维护费
	
	private Double tzujin;//总租金

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getChepai() {
		return chepai;
	}

	public void setChepai(String chepai) {
		this.chepai = chepai;
	}

	public String getChejia() {
		return chejia;
	}

	public void setChejia(String chejia) {
		this.chejia = chejia;
	}

	public String getPinpai() {
		return pinpai;
	}

	public void setPinpai(String pinpai) {
		this.pinpai = pinpai;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getXinghao() {
		return xinghao;
	}

	public void setXinghao(String xinghao) {
		this.xinghao = xinghao;
	}

	public String getXsz() {
		return xsz;
	}

	public void setXsz(String xsz) {
		this.xsz = xsz;
	}

	public String getYanse() {
		return yanse;
	}

	public void setYanse(String yanse) {
		this.yanse = yanse;
	}

	public int getZujin() {
		return zujin;
	}

	public void setZujin(int zujin) {
		this.zujin = zujin;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCtime() {
		return ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}

	public int getWeihu() {
		return weihu;
	}

	public void setWeihu(int weihu) {
		this.weihu = weihu;
	}

	public Double getTzujin() {
		return tzujin;
	}

	public void setTzujin(Double tzujin) {
		this.tzujin = tzujin;
	}
	
	
	
	
	
}
