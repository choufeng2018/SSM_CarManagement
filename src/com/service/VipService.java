package com.service;

import java.util.List;

import com.entity.Vip;

public interface VipService {
	
	//添加
	void insertBean(Vip bean);
	
	//删除
	public void deleteBean(int id);
	
	//更新
	public void updateBean(Vip bean);
	

	
	//根据username查询对象
	public Vip selectBeanByUsername(String username);
	
	//根据username查询对象
	public Vip selectBeanByKehuid(int kehuid);
	
	
	//按条件查询列表 支持分页
	public List<Vip> selectBeanList(int start,int limit,String username,int points,int level,String enddate,Double consumed,int kehuid);
	
	
	//按条件查询列表数量
	public int selectBeanCount(String username);
	
}
