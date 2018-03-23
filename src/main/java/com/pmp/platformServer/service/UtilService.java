package com.pmp.platformServer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmp.platformServer.dao.UtilServiceDao;
import com.pmp.platformServer.dto.BookClassSelectDto;
import com.pmp.platformServer.dto.VipLevelSelectDto;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月13日 上午10:45:15</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月13日 上午10:45:15</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Service
public class UtilService {
	
	@Autowired
	private UtilServiceDao utilServiceDao;
	
	public List<BookClassSelectDto> getBookClassSelect(){
		return utilServiceDao.getBookClassSelect();
	}
	
	public List<VipLevelSelectDto> getVipLevelSelect(){
		return utilServiceDao.getVipLevelSelect();
	}

}
