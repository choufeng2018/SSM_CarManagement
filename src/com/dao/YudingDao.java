package com.dao;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Yuding;

public interface YudingDao {
	
	public void insertBean(Yuding bean);
	
	public void deleteBean(int id);
	
	public void updateBean(Yuding bean);
	
	
	public Yuding selectBeanById(
			@Param("id") int id
			);
	
	
	public List<Yuding> selectBeanList(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("chepai") String chepai,
			@Param("sfz") String sfz,
			@Param("kehuid") int kehuid,
			@Param("workid") int workid,
			@Param("zhuangtai") String zhuangtai
			);
	
	
	public int selectBeanCount(
			@Param("chepai") String chepai,
			@Param("sfz") String sfz,
			@Param("kehuid") int kehuid,
			@Param("workid") int workid,
			@Param("zhuangtai") String zhuangtai
			);
	
}
