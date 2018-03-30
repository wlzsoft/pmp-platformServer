package com.pmp.platformServer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pmp.entity.VipLevelPriceEntity;
import com.pmp.entity.VipLevelSubjectEntity;
import com.pmp.platformServer.dto.VipLevelPriceDto;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月20日 下午4:03:42</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月20日 下午4:03:42</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Repository
public interface VipPriceDao {
	
   public List<VipLevelSubjectEntity> findSubject();
   
   public void vipPriceAdd(VipLevelPriceEntity entity);
   
   public void vipPriceUpdate(VipLevelPriceEntity entity);
   
   public VipLevelPriceDto getLevelPriceById(@Param("subjectPriceId")Integer subjectPriceId);

}
	