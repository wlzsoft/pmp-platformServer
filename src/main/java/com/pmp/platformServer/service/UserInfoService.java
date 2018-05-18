package com.pmp.platformServer.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmp.entity.UserEntity;
import com.pmp.platformServer.dao.UserInfoDao;
import com.pmp.platformServer.dto.UserLevelDto;
import com.pmp.platformServer.dto.UserSubBookDto;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月15日 上午10:09:03</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月15日 上午10:09:03</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Service("userInfoService")
public class UserInfoService {
	
	@Autowired
	private UserInfoDao userInfoDao;
	
	public List<UserEntity> findUserInfo(UserEntity entity){
		return userInfoDao.findUserInfo(entity);
	}
	
	
	public UserEntity  getUserInfoById(Integer userInfoId){
		
		return userInfoDao.getUserInfoById(userInfoId) ;
	}
	
	
	public void updateUserInfo(UserEntity entity){
		entity.setUpdateTime(new Date());
		userInfoDao.updateUserInfo(entity);
		
	}
	
	public void updateStatus(Integer userInfoId){
		userInfoDao.updateStatus(userInfoId);
		
	}
	
	public List<UserLevelDto>  getUserBuyVip(Integer userInfoId){
		return userInfoDao.getUserBuyVip(userInfoId);
	}
	
	public List<UserSubBookDto>  getUserSubBook(Integer userInfoId){
		return userInfoDao.getUserSubBook(userInfoId);
	}

}
