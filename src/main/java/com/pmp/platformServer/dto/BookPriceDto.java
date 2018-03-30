package com.pmp.platformServer.dto;

import java.math.BigDecimal;
import java.sql.Date;

public class BookPriceDto {
	
	public Integer bookId ;
	
	public Integer levelName;
	
	public BigDecimal price;
	
	public Date startTime;
	
	public Date endTime;
	
	public Integer status;

	public Integer getBookId() {
		return bookId;
	}

	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}

	public Integer getLevelName() {
		return levelName;
	}

	public void setLevelName(Integer levelName) {
		this.levelName = levelName;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
