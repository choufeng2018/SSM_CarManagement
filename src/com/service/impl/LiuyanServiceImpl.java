package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.dao.LiuyanDao;
import com.entity.Liuyan;
import com.service.LiuyanService;



@Service("liuyanService")
public class LiuyanServiceImpl implements LiuyanService {
	
	@Resource
	private LiuyanDao liuyanDao;
	
	public void insertBean(Liuyan bean) {
		liuyanDao.insertBean(bean);
		
	}
	
	public void deleteBean(int id) {
		liuyanDao.deleteBean(id);
		
	}
	
	public void updateBean(Liuyan bean){
		
		liuyanDao.updateBean(bean);
		
	}
	

	
	
	//根据ID查询对象
	public Liuyan selectBeanById(int id){
		
		return liuyanDao.selectBeanById(id);
		
	}
	
	
	public List<Liuyan> selectBeanList(int start,int limit,String ltitle,String zhuangtai,int kehuid,int workid){

		return liuyanDao.selectBeanList(start,limit,ltitle,zhuangtai,kehuid,workid);
		
		
	}
	
	public int selectBeanCount(String ltitle,String zhuangtai,int kehuid,int workid){
		
		return liuyanDao.selectBeanCount(ltitle,zhuangtai,kehuid,workid);
		
	}




	
	
	
}











