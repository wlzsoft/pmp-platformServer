package com.pmp.platformServer.dto;
/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月20日 下午2:26:35</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月20日 下午2:26:35</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
public class BookListDto {
	
	public Integer id;
	
	public String bookName;
	
	public String bookClassName;
	
	public Integer bookClassId;
	
	public String userName;
	
	public String createTime;
	
	public String updateDetailTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookClassName() {
		return bookClassName;
	}

	public void setBookClassName(String bookClassName) {
		this.bookClassName = bookClassName;
	}

	public Integer getBookClassId() {
		return bookClassId;
	}

	public void setBookClassId(Integer bookClassId) {
		this.bookClassId = bookClassId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getUpdateDetailTime() {
		return updateDetailTime;
	}

	public void setUpdateDetailTime(String updateDetailTime) {
		this.updateDetailTime = updateDetailTime;
	}
	

}
