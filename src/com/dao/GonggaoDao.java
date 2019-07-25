package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Gonggao;

public interface GonggaoDao {
	
	public void insertBean(Gonggao bean);
	
	public void deleteBean(int id);
	
	public void updateBean(Gonggao bean);
	
	
	public Gonggao selectBeanById(
			@Param("id") int id
			);
	
	
	public List<Gonggao> selectBeanList(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("gbiaoti") String gbiaoti
			);
	
	
	public int selectBeanCount(
			@Param("gbiaoti") String gbiaoti
			);
	
}
