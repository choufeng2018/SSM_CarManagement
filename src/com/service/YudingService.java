package com.service;

import java.util.List;
import com.entity.Yuding;

/**
 * 业务层接口 
 */
public interface YudingService {
	
	//添加
	void insertBean(Yuding bean);
	
	//删除
	public void deleteBean(int id);
	
	//更新
	public void updateBean(Yuding bean);
	

	
	//根据ID查询对象
	public Yuding selectBeanById(int id);
	
	
	//按条件查询列表 支持分页
	public List<Yuding> selectBeanList(int start,int limit,String chepai,String sfz,int kehuid,int workid,String zhuangtai);
	
	
	//按条件查询列表数量
	public int selectBeanCount(String chepai,String sfz,int kehuid,int workid,String zhuangtai);
	
	
	
	
}






