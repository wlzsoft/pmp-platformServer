package com.pmp.platformServer.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmp.entity.UserInfoEntity;
import com.pmp.platformServer.dao.UserInfoDao;

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
	
	public List<UserInfoEntity> findUserInfo(UserInfoEntity entity){
		return userInfoDao.findUserInfo(entity);
	}
	
	
	public UserInfoEntity  getUserInfoById(Integer userInfoId){
		
		return userInfoDao.getUserInfoById(userInfoId) ;
	}
	
	
	public void updateUserInfo(UserInfoEntity entity){
		entity.setUpdateTime(new Date());
		userInfoDao.updateUserInfo(entity);
		
	}
	
	public void updateStatus(Integer userInfoId){
		userInfoDao.updateStatus(userInfoId);
		
	}

}
