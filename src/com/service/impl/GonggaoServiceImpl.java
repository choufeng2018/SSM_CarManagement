package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.dao.GonggaoDao;
import com.entity.Gonggao;
import com.service.GonggaoService;



@Service("gonggaoService")
public class GonggaoServiceImpl implements GonggaoService {
	
	@Resource
	private GonggaoDao gonggaoDao;
	
	public void insertBean(Gonggao bean) {
		gonggaoDao.insertBean(bean);
		
	}
	
	public void deleteBean(int id) {
		gonggaoDao.deleteBean(id);
		
	}
	
	public void updateBean(Gonggao bean){
		
		gonggaoDao.updateBean(bean);
		
	}
	

	
	
	//根据ID查询对象
	public Gonggao selectBeanById(int id){
		
		return gonggaoDao.selectBeanById(id);
		
	}
	
	
	public List<Gonggao> selectBeanList(int start,int limit,String gbiaoti ){

		return gonggaoDao.selectBeanList(start,limit,gbiaoti);
		
		
	}
	
	public int selectBeanCount(String gbiaoti){
		
		
		return gonggaoDao.selectBeanCount(gbiaoti);
		
	}



	
	
	
}











