package com.pmp.platformServer.dto;
/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月22日 上午10:01:42</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月22日 上午10:01:42</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
public class BookClassSelectDto {
	
	public Integer id ;
	
	public String bookClassKey;
	
	public String bookClassValue;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBookClassKey() {
		return bookClassKey;
	}

	public void setBookClassKey(String bookClassKey) {
		this.bookClassKey = bookClassKey;
	}

	public String getBookClassValue() {
		return bookClassValue;
	}

	public void setBookClassValue(String bookClassValue) {
		this.bookClassValue = bookClassValue;
	}

}
