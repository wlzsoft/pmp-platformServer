package com.pmp.platformServer.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pmp.platformServer.dto.BookClassSelectDto;
import com.pmp.platformServer.dto.VipLevelSelectDto;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月22日 上午10:02:38</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月22日 上午10:02:38</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Repository
public interface UtilServiceDao {
	
	public List<BookClassSelectDto> getBookClassSelect();

	public List<VipLevelSelectDto> getVipLevelSelect();
}
