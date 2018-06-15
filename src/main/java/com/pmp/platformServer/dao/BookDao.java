package com.pmp.platformServer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pmp.entity.BookBranchEntity;
import com.pmp.platformServer.dto.BookBranchDto;
import com.pmp.platformServer.dto.BookListDto;
import com.pmp.platformServer.dto.BookPriceDto;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月20日 下午3:00:38</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月20日 下午3:00:38</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Repository
public interface BookDao {
	
	public List<BookListDto> findBookList(BookListDto dto);
	
	public List<BookPriceDto> getBookPrice(@Param("bookId")Integer bookId);
	
	public List<BookBranchDto> getBookVer(@Param("bookId")Integer bookId);
	
	public void auditor(@Param("id")Integer id,@Param("status")Integer status);
	
	public void auditor(BookBranchEntity entity);

}
