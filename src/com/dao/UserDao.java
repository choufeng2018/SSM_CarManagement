package com.dao;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.User;
import com.entity.Vip;

public interface UserDao {
	
	public void insertBean(User bean);
	
	public void deleteBean(int id);
	
	public void updateBean(User bean);
	
	public User userlogin(
			@Param("username") String username,
			@Param("password") String password,
			@Param("role") int role
			);
	
	
	public User useryz(
			@Param("username") String username
			);
	
	
	public User sfzyz(
			@Param("sfz") String sfz
			);
	
	
	
	public User selectBeanById(
			@Param("id") int id
			);
	
	public User selectBeanByUsername(
			@Param("username") String username
			);
	
	
	public List<User> selectBeanList(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("username") String username
			);
	
	
	public int selectBeanCount(
			@Param("username") String username
			);
	
	
	public List<User> selectBeanList2(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("username") String username
			);
	public int selectBeanCount2(
			@Param("username") String username
			);

	
	
	public List<Vip> selectBeanList3(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("username") String username
			);
	
	public int selectBeanCount3(
			@Param("username") String username
			);
	
	public List<User> selectBeanList4(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("username") String username
			);
	
	public int selectBeanCount4(
			@Param("username") String username
			);
	
}
