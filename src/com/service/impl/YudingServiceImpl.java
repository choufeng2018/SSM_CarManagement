package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.dao.YudingDao;
import com.entity.Yuding;
import com.service.YudingService;



@Service("yudingService")
public class YudingServiceImpl implements YudingService {
	
	@Resource
	private YudingDao yudingDao;
	
	public void insertBean(Yuding bean) {
		yudingDao.insertBean(bean);
		
	}
	
	public void deleteBean(int id) {
		yudingDao.deleteBean(id);
		
	}
	
	public void updateBean(Yuding bean){
		
		yudingDao.updateBean(bean);
		
	}
	

	
	
	//根据ID查询对象
	public Yuding selectBeanById(int id){
		
		return yudingDao.selectBeanById(id);
		
	}
	
	
	public List<Yuding> selectBeanList(int start,int limit,String chepai,String sfz,int kehuid,int workid,String zhuangtai){

		return yudingDao.selectBeanList(start,limit,chepai,sfz,kehuid,workid,zhuangtai);
		
	}
	
	public int selectBeanCount(String chepai,String sfz,int kehuid,int workid,String zhuangtai){
		
		return yudingDao.selectBeanCount(chepai,sfz,kehuid,workid,zhuangtai);
		
	}



	
	
	
}











