package com.ssm.vo.sights;

import com.ssm.entity.sights.Sights;

public class SightsVo {

	private Sights sights;

	private int currentPage;// 当前页

	private int pageCount;// 每页记录数

	/**
	 * @return the sights
	 */
	public Sights getSights() {
		return sights;
	}

	/**
	 * @param sights
	 *            the sights to set
	 */
	public void setSights(Sights sights) {
		this.sights = sights;
	}

	/**
	 * @return the currentPage
	 */
	public int getCurrentPage() {
		return currentPage;
	}

	/**
	 * @param currentPage the currentPage to set
	 */
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	/**
	 * @return the pageCount
	 */
	public int getPageCount() {
		return pageCount;
	}

	/**
	 * @param pageCount the pageCount to set
	 */
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
	

}
