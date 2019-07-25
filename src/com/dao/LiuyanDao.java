package com.dao;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Liuyan;

public interface LiuyanDao {
	
	public void insertBean(Liuyan bean);
	
	public void deleteBean(int id);
	
	public void updateBean(Liuyan bean);
	
	
	public Liuyan selectBeanById(
			@Param("id") int id
			);
	
	
	public List<Liuyan> selectBeanList(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("ltitle") String ltitle,
			@Param("zhuangtai") String zhuangtai,
			@Param("kehuid") int kehuid,
			@Param("workid") int workid
			);
	
	
	public int selectBeanCount(
			@Param("ltitle") String ltitle,
			@Param("zhuangtai") String zhuangtai,
			@Param("kehuid") int kehuid,
			@Param("workid") int workid
			);
	
}
