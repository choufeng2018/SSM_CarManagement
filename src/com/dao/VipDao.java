package com.dao;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Vip;

public interface VipDao {
	
	public void insertBean(Vip bean);
	
	public void deleteBean(int id);
	
	public void updateBean(Vip bean);
	
	
	public Vip selectBeanByUsername(
			@Param("username") String username
			);
	
	public Vip selectBeanByKehuid(
			@Param("kehuid") int kehuid
			);
	
	
	public List<Vip> selectBeanList(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("username") String username,
			@Param("points") int points,
			@Param("level") int level,
			@Param("enddate") String enddate,
			@Param("consumed")Double consumed,
			@Param("kehuid")int kehuid
			);
	
	
	public int selectBeanCount(
			@Param("username") String username
			);
	
}
