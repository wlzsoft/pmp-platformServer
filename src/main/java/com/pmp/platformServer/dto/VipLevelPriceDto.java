package com.pmp.platformServer.dto;

import java.math.BigDecimal;

/**
 * <p><b>Title:</b><i>TODO</i></p>
 * <p>Desc: TODO</p>
 * <p>source folder:{@docRoot}</p>
 * <p>Copyright:Copyright(c)2018</p>
 * <p>Company:meizu</p>
 * <p>Create Date:2018年3月20日 下午4:44:18</p>
 * <p>Modified By:Administrator-</p>
 * <p>Modified Date:2018年3月20日 下午4:44:18</p>
 * @author <a>wanglizong</a>
 * @version Version 0.1
 *
 */
public class VipLevelPriceDto {
	
	public Integer id ;
	
	public Integer subjetId;
	
	public String subjectName;
	
	public BigDecimal price;
	
	public Integer priceStatus ;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSubjetId() {
		return subjetId;
	}

	public void setSubjetId(Integer subjetId) {
		this.subjetId = subjetId;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public Integer getPriceStatus() {
		return priceStatus;
	}

	public void setPriceStatus(Integer priceStatus) {
		this.priceStatus = priceStatus;
	}
	
}
