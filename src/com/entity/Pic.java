package com.entity;


//首页展示图片
public class Pic {

	private int id;//数据库主键
	
	private String path;//图片路径
	
	private String info;//说明
	
	private String href;//图片链接

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}
	
	

	
	
	
	
	
}
