package com.entity;

//用户
public class User  {

	private int id;//主键
	
	private String username;//用户名
	
	private String password;//密码
	
	private int role;//用户角色，1表示系统管理员,2表示工作人员，3表示技术人员，4表示客户
	
	private String name;//姓名
	
	private String tej;//手机号码
	
	private String createtime;//添加时间
	
	private String sfz;//身份证号码

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTej() {
		return tej;
	}

	public void setTej(String tej) {
		this.tej = tej;
	}

	public String getSfz() {
		return sfz;
	}

	public void setSfz(String sfz) {
		this.sfz = sfz;
	}

	
	
	
	
	
}
