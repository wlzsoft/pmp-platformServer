package com.pmp.platformServer.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmp.entity.BookClassEntity;
import com.pmp.platformServer.dao.BookClassDao;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月14日 下午2:53:29</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月14日 下午2:53:29</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Service("bookClassService")
public class BookClassService {
	
	@Autowired
	private BookClassDao bookClassDao ;
	
	public List<BookClassEntity> findBookClass(BookClassEntity entity){
		
		return bookClassDao.findBookClass(entity);
	}
	
	public BookClassEntity getBookClassById(Integer bookClassId){
		
		return bookClassDao.getBookClassById(bookClassId);
	}
	
	public void bookClassDel(Integer bookClassId){
		bookClassDao.bookClassDel(bookClassId);
	}
	
	public void updateBookClass(BookClassEntity entity){
		entity.setUpdateId(1);
		entity.setUpdateTime(new Date());
		bookClassDao.updateBookClass(entity);
	}
	
	public void addBookClass(BookClassEntity entity){
		entity.setCreateId(1);
		entity.setCreateTime(new Date());
		entity.setIsDel(false);
		entity.setIsView(1);
		bookClassDao.addBookClass(entity);
	}

}
