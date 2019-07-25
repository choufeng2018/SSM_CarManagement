package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.PicDao;
import com.entity.Pic;
import com.service.PicService;



@Service("picService")
public class PicServiceImpl implements PicService {
	
	@Resource
	private PicDao picDao;
	
	public void insertBean(Pic bean) {
		picDao.insertBean(bean);
		
	}
	
	public void deleteBean(int id) {
		picDao.deleteBean(id);
		
	}
	
	public void updateBean(Pic bean){
		
		picDao.updateBean(bean);
		
	}
	

	
	
	//根据ID查询对象
	public Pic selectBeanById(int id){
		
		return picDao.selectBeanById(id);
		
	}
	
	
	public List<Pic> selectBeanList(int start,int limit){

		return picDao.selectBeanList(start,limit);
		
		
	}
	
	public int selectBeanCount(){
		
		
		return picDao.selectBeanCount();
		
	}



	
	
	
}











