package com.ssm.entity.route;

import java.io.Serializable;

import com.ssm.entity.user.User;

public class RouteOrder implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2603408171090897154L;
	private Integer id;
	private Integer adultCount;
	private Integer childCount;
	private Integer insuranceCount;
	private double insurancePrice;
	private Integer isInvoice;
	private double sumPrice;
	private Route route;
	private User user;
	/**
	 * @param id
	 * @param adultCount
	 * @param childCount
	 * @param insuranceCount
	 * @param insurancePrice
	 * @param isInvoice
	 * @param sumPrice
	 */
	public RouteOrder(Integer id, Integer adultCount, Integer childCount, Integer insuranceCount, double insurancePrice,
			Integer isInvoice, double sumPrice) {
		this.id = id;
		this.adultCount = adultCount;
		this.childCount = childCount;
		this.insuranceCount = insuranceCount;
		this.insurancePrice = insurancePrice;
		this.isInvoice = isInvoice;
		this.sumPrice = sumPrice;
	}
	/**
	 * 
	 */
	public RouteOrder() {
	}
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the adultCount
	 */
	public Integer getAdultCount() {
		return adultCount;
	}
	/**
	 * @param adultCount the adultCount to set
	 */
	public void setAdultCount(Integer adultCount) {
		this.adultCount = adultCount;
	}
	/**
	 * @return the childCount
	 */
	public Integer getChildCount() {
		return childCount;
	}
	/**
	 * @param childCount the childCount to set
	 */
	public void setChildCount(Integer childCount) {
		this.childCount = childCount;
	}
	/**
	 * @return the insuranceCount
	 */
	public Integer getInsuranceCount() {
		return insuranceCount;
	}
	/**
	 * @param insuranceCount the insuranceCount to set
	 */
	public void setInsuranceCount(Integer insuranceCount) {
		this.insuranceCount = insuranceCount;
	}
	/**
	 * @return the insurancePrice
	 */
	public double getInsurancePrice() {
		return insurancePrice;
	}
	/**
	 * @param insurancePrice the insurancePrice to set
	 */
	public void setInsurancePrice(double insurancePrice) {
		this.insurancePrice = insurancePrice;
	}
	/**
	 * @return the isInvoice
	 */
	public Integer getIsInvoice() {
		return isInvoice;
	}
	/**
	 * @param isInvoice the isInvoice to set
	 */
	public void setIsInvoice(Integer isInvoice) {
		this.isInvoice = isInvoice;
	}
	/**
	 * @return the sumPrice
	 */
	public double getSumPrice() {
		return sumPrice;
	}
	/**
	 * @param sumPrice the sumPrice to set
	 */
	public void setSumPrice(double sumPrice) {
		this.sumPrice = sumPrice;
	}
	/**
	 * @return the route
	 */
	public Route getRoute() {
		return route;
	}
	/**
	 * @param route the route to set
	 */
	public void setRoute(Route route) {
		this.route = route;
	}
	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}
	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("RouteOrder [id=").append(id).append(", adultCount=").append(adultCount).append(", childCount=")
				.append(childCount).append(", insuranceCount=").append(insuranceCount).append(", insurancePrice=")
				.append(insurancePrice).append(", isInvoice=").append(isInvoice).append(", sumPrice=").append(sumPrice)
				.append(", route=").append(route).append(", user=").append(user).append("]");
		return builder.toString();
	}
	
}
