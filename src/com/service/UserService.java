package com.service;

import java.util.List;
import com.entity.User;
import com.entity.Vip;

/**
 * 业务层接口 
 */
public interface UserService {
	
	//添加
	void insertBean(User bean);
	
	//删除
	public void deleteBean(int id);
	
	//更新
	public void updateBean(User bean);
	
	//用户登录
	public User userlogin(String username,String password,int role);
	
	
	//验证该用户名是否存在
	public User useryz(String username);
	
	
	//验证身份证是否存在
	public User sfzyz(String sfz);
	
	
	//根据ID查询对象
	public User selectBeanById(int id);
	
	//根据username查询对象
	public User selectBeanByUsername(String username);
	
	
	
	
	//按条件查询列表 支持分页
	public List<User> selectBeanList(int start,int limit,String username);
	
	
	//按条件查询列表数量
	public int selectBeanCount(String username);
	
	
	//按条件查询列表 支持分页
	public List<User> selectBeanList2(int start,int limit,String username);
	

	
	
	//按条件查询列表数量
	public int selectBeanCount2(String username);
	
	//按条件查询列表 支持分页
	public List<Vip> selectBeanList3(int start,int limit,String username);
	
	//按条件查询列表数量
	public int selectBeanCount3(String username);
	
	//按条件查询列表 支持分页
	public List<User> selectBeanList4(int start,int limit,String username);
	
	//按条件查询列表数量
	public int selectBeanCount4(String username);
	
}






