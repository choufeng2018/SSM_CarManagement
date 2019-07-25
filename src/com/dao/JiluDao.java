package com.dao;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Jilu;

public interface JiluDao {
	
	public void insertBean(Jilu bean);
	
	public void deleteBean(int id);
	
	public void updateBean(Jilu bean);
	
	
	public Jilu selectBeanById(
			@Param("id") int id
			);
	
	
	public List<Jilu> selectBeanList(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("chepai") String chepai,
			@Param("sfz") String sfz,
			@Param("xingming") String xingming,
			@Param("zhuangtai") String zhuangtai,
			@Param("workid") int workid,
			@Param("jishuid") int jishuid,
			@Param("kehuid") int kehuid
			);
	
	
	public int selectBeanCount(
			@Param("chepai") String chepai,
			@Param("sfz") String sfz,
			@Param("xingming") String xingming,
			@Param("zhuangtai") String zhuangtai,
			@Param("workid") int workid,
			@Param("jishuid") int jishuid,
			@Param("kehuid") int kehuid
			);
	
}
