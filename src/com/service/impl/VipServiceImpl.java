package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.VipDao;
import com.entity.Vip;
import com.service.VipService;

	@Service("VipService")
	public class VipServiceImpl implements VipService {
		
		@Resource
		private VipDao vipDao;
		
		public void insertBean(Vip bean) {
			vipDao.insertBean(bean);
			
		}
		
		public void deleteBean(int id) {
			vipDao.deleteBean(id);
			
		}
		
		public void updateBean(Vip bean){
			
			vipDao.updateBean(bean);
			
		}
		

		
		
		//根据ID查询对象
		public Vip selectBeanByUsername(String username){
			
			return vipDao.selectBeanByUsername(username);
			
		}
		

		public List<Vip> selectBeanList(int start, int limit, String username, int points, int level, String enddate,
				Double consumed,int kehuid) {
			return vipDao.selectBeanList(start,limit,username,points,level,enddate,consumed,kehuid);
		}

		public int selectBeanCount(String username) {
			return vipDao.selectBeanCount(username);
		}

		@Override
		public Vip selectBeanByKehuid(int kehuid) {
			return vipDao.selectBeanByKehuid(kehuid);
		}


}
