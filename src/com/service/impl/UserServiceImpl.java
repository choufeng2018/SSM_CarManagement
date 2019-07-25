package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.dao.UserDao;
import com.entity.User;
import com.entity.Vip;
import com.service.UserService;



@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserDao userDao;
	
	public void insertBean(User bean) {
		userDao.insertBean(bean);
		
	}
	
	public void deleteBean(int id) {
		userDao.deleteBean(id);
		
	}
	
	public void updateBean(User bean){
		
		userDao.updateBean(bean);
		
	}
	

	//用户登录
	public User userlogin(String username,String password,int role){
		
		return userDao.userlogin(username, password,role);
		
	}
	
	
	
	//验证该用户名是否存在
	public User useryz(String username){
		
		
		return userDao.useryz(username);
	}
	
	
	//验证身份证是否存在
	public User sfzyz(String sfz){
		
		
		return userDao.sfzyz(sfz);
	}
	
	
	//根据ID查询对象
	public User selectBeanById(int id){
		
		return userDao.selectBeanById(id);
		
	}
	
	
	public List<User> selectBeanList(int start,int limit,String username ){

		return userDao.selectBeanList(start,limit,username);
		
		
	}
	
	public int selectBeanCount(String username){

		return userDao.selectBeanCount(username);
		
	}


	public List<User> selectBeanList2(int start,int limit,String username ){

		return userDao.selectBeanList2(start,limit,username);
		
		
	}
	
	
	public int selectBeanCount2(String username){

		return userDao.selectBeanCount2(username);
		
	}
	
	
	public List<Vip> selectBeanList3(int start,int limit,String username ){
		
		return userDao.selectBeanList3(start,limit,username);
		
		
	}
	
	public int selectBeanCount3(String username){

		return userDao.selectBeanCount3(username);
		
	}
	
	
	public List<User> selectBeanList4(int start,int limit,String username ){
		
		return userDao.selectBeanList4(start,limit,username);
		
		
	}
	
	public int selectBeanCount4(String username){

		return userDao.selectBeanCount4(username);
		
	}

	@Override
	public User selectBeanByUsername(String username) {
		return userDao.selectBeanByUsername(username);
	}

	
	
	
}











