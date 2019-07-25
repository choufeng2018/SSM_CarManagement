package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.dao.JiluDao;
import com.entity.Jilu;
import com.service.JiluService;



@Service("jiluService")
public class JiluServiceImpl implements JiluService {
	
	@Resource
	private JiluDao jiluDao;
	
	public void insertBean(Jilu bean) {
		jiluDao.insertBean(bean);
		
	}
	
	public void deleteBean(int id) {
		jiluDao.deleteBean(id);
		
	}
	
	public void updateBean(Jilu bean){
		
		jiluDao.updateBean(bean);
		
	}
	

	
	
	//根据ID查询对象
	public Jilu selectBeanById(int id){
		
		return jiluDao.selectBeanById(id);
		
	}
	
	
	public List<Jilu> selectBeanList(int start,int limit,String chepai,String sfz,String xingming,String zhuangtai,int workid ,int jishuid,int kehuid){

		return jiluDao.selectBeanList(start,limit,chepai,sfz,xingming,zhuangtai,workid,jishuid,kehuid);
		
		
	}
	
	public int selectBeanCount(String chepai,String sfz,String xingming,String zhuangtai,int workid,int jishuid,int kehuid){
		
		return jiluDao.selectBeanCount(chepai,sfz,xingming,zhuangtai,workid,jishuid,kehuid);
		
	}



	
	
	
}











