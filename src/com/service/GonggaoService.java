package com.service;

import java.util.List;
import com.entity.Gonggao;

/**
 * 业务层接口 
 */
public interface GonggaoService {
	
	//添加
	void insertBean(Gonggao bean);
	
	//删除
	public void deleteBean(int id);
	
	//更新
	public void updateBean(Gonggao bean);
	

	
	//根据ID查询对象
	public Gonggao selectBeanById(int id);
	
	
	//按条件查询列表 支持分页
	public List<Gonggao> selectBeanList(int start,int limit,String gbiaoti);
	
	
	//按条件查询列表数量
	public int selectBeanCount(String gbiaoti);
	
	
	
	
}






