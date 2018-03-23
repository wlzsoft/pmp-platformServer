package com.pmp.platformServer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pmp.entity.BookClassEntity;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月14日 下午2:55:28</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月14日 下午2:55:28</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Repository
public interface BookClassDao {
	
	public List<BookClassEntity> findBookClass(BookClassEntity entity);
	
	public BookClassEntity getBookClassById(@Param("id")Integer bookClassId);
	
	public void updateBookClass(BookClassEntity entity);
	
	public void addBookClass(BookClassEntity entity);
	
	public void bookClassDel(@Param("id")Integer bookClassId);

}
