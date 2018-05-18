package com.pmp.platformServer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pmp.entity.UserEntity;
import com.pmp.platformServer.dto.UserLevelDto;
import com.pmp.platformServer.dto.UserSubBookDto;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月15日 上午10:14:21</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月15日 上午10:14:21</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Repository
public interface UserInfoDao {
	
	
	public List<UserEntity> findUserInfo(UserEntity entity);
	
	public UserEntity  getUserInfoById(@Param("id")Integer userInfoId);
	
	public void updateUserInfo(UserEntity entity);
	
	public void updateStatus(@Param("id")Integer userInfoId);
	
	public List<UserLevelDto>  getUserBuyVip(@Param("id")Integer userInfoId);
	
	public List<UserSubBookDto>  getUserSubBook(@Param("id")Integer userInfoId);
	
}
