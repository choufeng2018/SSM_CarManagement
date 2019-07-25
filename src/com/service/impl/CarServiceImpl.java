package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.dao.CarDao;
import com.entity.Car;
import com.service.CarService;



@Service("carService")
public class CarServiceImpl implements CarService {
	
	@Resource
	private CarDao carDao;
	
	public void insertBean(Car bean) {
		carDao.insertBean(bean);
		
	}
	
	public void deleteBean(int id) {
		carDao.deleteBean(id);
		
	}
	
	public void updateBean(Car bean){
		
		carDao.updateBean(bean);
		
	}
	

	
	
	//根据ID查询对象
	public Car selectBeanById(int id){
		
		return carDao.selectBeanById(id);
		
	}
	
	
	public List<Car> selectBeanList(int start,int limit,String chepai,String pinpai,String xinghao,String yanse ){

		return carDao.selectBeanList(start,limit,chepai,pinpai,xinghao,yanse);
		
		
	}
	
	public int selectBeanCount(String chepai,String pinpai,String xinghao,String yanse){
		
		return carDao.selectBeanCount(chepai,pinpai,xinghao,yanse);
		
	}



	
	
	
}











