package com.dao;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Ri;

public interface RiDao {
	
	public void insertBean(Ri bean);
	
	public void deleteBean(int id);
	
	public void updateBean(Ri bean);
	
	
	public Ri selectBeanById(
			@Param("id") int id
			);
	
	
	public List<Ri> selectBeanList(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("ri") String ri
			);
	
	
	public int selectBeanCount(
			@Param("ri") String ri
			);
	
}
