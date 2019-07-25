package com.service;

import java.util.List;
import com.entity.Car;

/**
 * 业务层接口 
 */
public interface CarService {
	
	//添加
	void insertBean(Car bean);
	
	//删除
	public void deleteBean(int id);
	
	//更新
	public void updateBean(Car bean);
	

	
	//根据ID查询对象
	public Car selectBeanById(int id);
	
	
	//按条件查询列表 支持分页
	public List<Car> selectBeanList(int start,int limit,String chepai,String pinpai,String xinghao,String yanse);
	
	
	//按条件查询列表数量
	public int selectBeanCount(String chepai,String pinpai,String xinghao,String yanse);
	
	
	
	
}






