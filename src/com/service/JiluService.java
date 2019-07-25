package com.service;

import java.util.List;
import com.entity.Jilu;

/**
 * 业务层接口 
 */
public interface JiluService {
	
	//添加
	void insertBean(Jilu bean);
	
	//删除
	public void deleteBean(int id);
	
	//更新
	public void updateBean(Jilu bean);
	

	
	//根据ID查询对象
	public Jilu selectBeanById(int id);
	
	
	//按条件查询列表 支持分页
	public List<Jilu> selectBeanList(int start,int limit,String chepai,String sfz,String xingming,String zhuangtai,int workid,int jishuid,int kehuid);
	
	
	//按条件查询列表数量
	public int selectBeanCount(String chepai,String sfz,String xingming,String zhuangtai,int workid,int jishuid,int kehuid);
	
	
	
	
}






