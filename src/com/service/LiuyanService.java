package com.service;

import java.util.List;
import com.entity.Liuyan;

/**
 * 业务层接口 
 */
public interface LiuyanService {
	
	//添加
	void insertBean(Liuyan bean);
	
	//删除
	public void deleteBean(int id);
	
	//更新
	public void updateBean(Liuyan bean);
	

	
	//根据ID查询对象
	public Liuyan selectBeanById(int id);
	
	
	//按条件查询列表 支持分页
	public List<Liuyan> selectBeanList(int start,int limit,String ltitle,String zhuangtai,int kehuid,int workid);
	
	
	//按条件查询列表数量
	public int selectBeanCount(String ltitle,String zhuangtai,int kehuid,int workid);
	
	
	
	
}






