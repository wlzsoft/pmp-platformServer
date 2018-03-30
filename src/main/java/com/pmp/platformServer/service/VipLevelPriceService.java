package com.pmp.platformServer.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmp.entity.VipLevelPriceEntity;
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

@Service("vipLevelPriceService")
public class VipLevelPriceService {
	@Autowired
	private VipPriceDao vipPriceDao;
	
	
	public void vipPriceAdd(VipLevelPriceEntity entity){
		entity.setCreateId(1);
		entity.setCreateTime(new Date());
		vipPriceDao.vipPriceAdd(entity);
	}
	
	public void vipPriceUpdate(VipLevelPriceEntity entity){
		entity.setUpdateId(1);
		entity.setUpdateTime(new Date());
		vipPriceDao.vipPriceUpdate(entity);
	}
	
	public VipLevelPriceDto getLevelPriceById(Integer subjectPriceId){
		return vipPriceDao.getLevelPriceById(subjectPriceId);
	}
}
