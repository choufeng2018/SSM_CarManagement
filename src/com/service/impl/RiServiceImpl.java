package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.dao.RiDao;
import com.entity.Ri;
import com.service.RiService;



@Service("riService")
public class RiServiceImpl implements RiService {
	
	@Resource
	private RiDao riDao;
	
	public void insertBean(Ri bean) {
		riDao.insertBean(bean);
		
	}
	
	public void deleteBean(int id) {
		riDao.deleteBean(id);
		
	}
	
	public void updateBean(Ri bean){
		
		riDao.updateBean(bean);
		
	}
	

	
	
	//根据ID查询对象
	public Ri selectBeanById(int id){
		
		return riDao.selectBeanById(id);
		
	}
	
	
	public List<Ri> selectBeanList(int start,int limit,String ri){

		return riDao.selectBeanList(start,limit,ri);
		
		
	}
	
	public int selectBeanCount(String ri){
		
		return riDao.selectBeanCount(ri);
		
	}



	
	
	
}











