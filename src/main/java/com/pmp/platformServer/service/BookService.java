package com.pmp.platformServer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmp.platformServer.dao.BookDao;
import com.pmp.platformServer.dto.BookListDto;
import com.pmp.platformServer.dto.BookPriceDto;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月20日 下午2:49:07</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月20日 下午2:49:07</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
@Service("bookService")
public class BookService {
	
	@Autowired
	private BookDao bookDao;
	
	public List<BookListDto> findBookList(BookListDto dto){
		
		return bookDao.findBookList(dto);
	}

	public List<BookPriceDto> getBookPrice(Integer bookId){
		return bookDao.getBookPrice(bookId);
	}
	
}
