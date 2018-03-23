package com.pmp.platformServer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmp.platformServer.dao.SubBookDao;
import com.pmp.platformServer.dto.SubBookListDto;
import com.smartframe.basics.util.DateUtil;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月16日 下午2:38:28</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月16日 下午2:38:28</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Service("subBookService")
public class SubBookService {
	
	@Autowired
	private SubBookDao subBookDao;

	public List<SubBookListDto> findSubBook(SubBookListDto entity){
		System.out.println(entity.getStartTime());
		//entity.setStartTime(DateUtil.getLongToDate(entity.getStartTime());
		return subBookDao.findSubBook(entity);
	}
	
	public void updateSubStatus(Integer subStatus){
		if(subStatus==1){
			subBookDao.updateSubStatus(0);
		}else{
			subBookDao.updateSubStatus(1);
		}
	}
	
}
