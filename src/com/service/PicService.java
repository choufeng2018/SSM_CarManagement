package com.service;

import java.util.List;
import com.entity.Pic;

/**
 * 业务层接口 
 */
public interface PicService {
	
	//添加
	void insertBean(Pic bean);
	
	//删除
	public void deleteBean(int id);
	
	//更新
	public void updateBean(Pic bean);
	

	
	//根据ID查询对象
	public Pic selectBeanById(int id);
	
	
	//按条件查询列表 支持分页
	public List<Pic> selectBeanList(int start,int limit);
	
	
	//按条件查询列表数量
	public int selectBeanCount();
	
	
	
	
}






