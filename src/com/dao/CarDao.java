package com.dao;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Car;

public interface CarDao {
	
	public void insertBean(Car bean);
	
	public void deleteBean(int id);
	
	public void updateBean(Car bean);
	
	
	public Car selectBeanById(
			@Param("id") int id
			);
	
	
	public List<Car> selectBeanList(
			@Param("start") int start,
			@Param("limit") int limit,
			@Param("chepai") String chepai,
			@Param("pinpai") String pinpai,
			@Param("xinghao") String xinghao,
			@Param("yanse") String yanse
			);
	
	
	public int selectBeanCount(
			@Param("chepai") String chepai,
			@Param("pinpai") String pinpai,
			@Param("xinghao") String xinghao,
			@Param("yanse") String yanse
			);
	
}
