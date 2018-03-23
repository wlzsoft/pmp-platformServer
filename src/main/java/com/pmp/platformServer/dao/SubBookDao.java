package com.pmp.platformServer.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pmp.platformServer.dto.SubBookListDto;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月16日 下午2:38:57</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月16日 下午2:38:57</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Repository
public interface SubBookDao {
	
	public List<SubBookListDto> findSubBook(SubBookListDto entity);

	public void updateSubStatus(Integer subStatus);
}
