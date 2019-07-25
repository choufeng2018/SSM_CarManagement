package com.service;

import java.util.List;
import com.entity.Yue;

/**
 * 业务层接口 
 */
public interface YueService {
	
	//添加
	void insertBean(Yue bean);
	
	//删除
	public void deleteBean(int id);
	
	//更新
	public void updateBean(Yue bean);
	

	
	//根据ID查询对象
	public Yue selectBeanById(int id);
	
	
	//按条件查询列表 支持分页
	public List<Yue> selectBeanList(int start,int limit,String month);
	
	
	//按条件查询列表数量
	public int selectBeanCount(String month);
	
	
	
	
}






