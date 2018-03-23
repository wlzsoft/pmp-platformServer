package com.pmp.platformServer.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmp.entity.UserOrgEntity;
import com.pmp.platformServer.dao.UserOrgDao;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Create Date:2018年3月9日 上午11:45:33</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月9日 上午11:45:33</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Service
public class UserOrgService {
	
	@Autowired
	private UserOrgDao userOrgDao ;
	
	public UserOrgEntity getUserOrg(String username ,String password){
		UserOrgEntity entity = userOrgDao.getUserOrg(username, password);
		return entity;
	}
	
	public List<UserOrgEntity> findUserOrg(String username,Integer status,Integer roleId){
		List<UserOrgEntity> list = userOrgDao.findUserOrg(username, status,roleId);
		return list ;
	}
	
	public void addUserOrg(UserOrgEntity entity){
		entity.setStatus(1);
		entity.setCreateTime(new Date());
		entity.setDel(false);
		entity.setPassword("123456");
		userOrgDao.addUserOrg(entity);
	}
	
	public void delUserOrg(Integer userOrgId){
		userOrgDao.delUserOrg(userOrgId);
	}
	
	public void userSava(UserOrgEntity entity){
		entity.setUpdateId(1);
		entity.setUpdateTime(new Date());
		userOrgDao.userUpdate(entity);
	}
	
	public void updateStatus(Integer userOrgId){
		userOrgDao.updateStatus(userOrgId);
	}
	
	public UserOrgEntity getUserOrgById(Integer userOrgId){
		return userOrgDao.getUserOrgById(userOrgId);
	}

}
