package com.pmp.platformServer.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pmp.entity.VipLevelEntity;
import com.pmp.platformServer.dao.VipLevelDao;
import com.pmp.platformServer.dao.VipPriceDao;
import com.pmp.platformServer.dto.VipLevelPriceDto;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月20日 下午4:02:06</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月20日 下午4:02:06</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */

@Service("vipLevelService")
public class VipLevelService {
	
	@Autowired
	private VipLevelDao vipLevelDao;
	
	@Autowired
	private VipPriceDao vipPriceDao;
	
	public List<VipLevelEntity> findVipLevelList(){
		return vipLevelDao.findVipLevelList();
	}
	
	@Transactional
	public void vipAdd(VipLevelEntity entity){
		 entity.setIsDel(0);
		 entity.setCreateId(1);
		 entity.setCreateTime(new Date());
		 vipLevelDao.vipAdd(entity);
/*		 List<VipLevelSubjectEntity> subjectList= vipPriceDao.findSubject();
		 for(VipLevelSubjectEntity sujectEntity:subjectList){
			 VipLevelPriceEntity priceEntity = new VipLevelPriceEntity();
			 priceEntity.setCreateId(1);
			 priceEntity.setCreateTime(new Date());
			 priceEntity.setPriceStatus(1);
			 priceEntity.setSubjectId(sujectEntity.getId());
			 priceEntity.setVipLevelId(entity.getId());
		 }*/
	}
	
	public VipLevelEntity vipEdit(Integer vipLevenlId){
		 return vipLevelDao.getVipLevelById(vipLevenlId);
	}
	
	public void vipSava(VipLevelEntity entity){
		 vipLevelDao.vipSava(entity);
	}
	
	public void vipDel(Integer vipLevelId){
		 vipLevelDao.vipDel(vipLevelId);
	}
	
	public List<VipLevelPriceDto> findVipLevelPriceById(Integer vipLevelId){
		return vipLevelDao.findVipLevelPriceById(vipLevelId);
	}

}
