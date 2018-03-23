package com.pmp.platformServer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pmp.entity.UserOrgEntity;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月9日 下午2:04:15</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月9日 下午2:04:15</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */

@Repository
public interface UserOrgDao {
	
	public UserOrgEntity getUserOrg(@Param("username")String username ,@Param("password")String password);
	
	public List<UserOrgEntity> findUserOrg(@Param("username")String username,@Param("status")Integer status,@Param("roleId")Integer roleId);
	
	public void addUserOrg(UserOrgEntity entity);
	
	public void delUserOrg(@Param("id")Integer userOrgId);
	
	public void updateStatus(@Param("id")Integer userOrgId);
	
	public UserOrgEntity getUserOrgById(@Param("id")Integer userOrgId);
	
	public void userUpdate(UserOrgEntity entity);
	

}
