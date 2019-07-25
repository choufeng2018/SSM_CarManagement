package com.service;

import java.util.List;
import com.entity.Ri;

/**
 * 业务层接口 
 */
public interface RiService {
	
	//添加
	void insertBean(Ri bean);
	
	//删除
	public void deleteBean(int id);
	
	//更新
	public void updateBean(Ri bean);
	

	
	//根据ID查询对象
	public Ri selectBeanById(int id);
	
	
	//按条件查询列表 支持分页
	public List<Ri> selectBeanList(int start,int limit,String ri);
	
	
	//按条件查询列表数量
	public int selectBeanCount(String ri);
	
	
	
	
}






