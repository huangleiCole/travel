package com.ssm.entity.route;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Route implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -340580016082060227L;
	private Integer id;
	private String image;
	private String routeNumber;
	private String routeName;
	private String startPlace;
	private String endPlace;
	private double oldPrice;
	private double discount;
	private double newPrice;
	private Date startTime;
	private Date endTime;
	private long betweenTime;
	private long comments;
	private long purchasePeople;
	
	private List<RouteDay> routeDays;
	/**
	 * 
	 */
	public Route() {
	}
	/**
	 * @param id
	 * @param image
	 * @param routeNumber
	 * @param routeName
	 * @param startPlace
	 * @param endPlace
	 * @param oldPrice
	 * @param discount
	 * @param newPrice
	 * @param startTime
	 * @param endTime
	 * @param betweenTime
	 * @param comments
	 * @param purchasePeople
	 */
	public Route(Integer id, String image, String routeNumber, String routeName, String startPlace, String endPlace,
			double oldPrice, double discount, double newPrice, Date startTime, Date endTime, long betweenTime,
			long comments, long purchasePeople) {
		this.id = id;
		this.image = image;
		this.routeNumber = routeNumber;
		this.routeName = routeName;
		this.startPlace = startPlace;
		this.endPlace = endPlace;
		this.oldPrice = oldPrice;
		this.discount = discount;
		this.newPrice = newPrice;
		this.startTime = startTime;
		this.endTime = endTime;
		this.betweenTime = betweenTime;
		this.comments = comments;
		this.purchasePeople = purchasePeople;
	}
	
	
	/**
	 * @param id
	 * @param image
	 * @param routeNumber
	 * @param routeName
	 * @param startPlace
	 * @param endPlace
	 * @param oldPrice
	 * @param discount
	 * @param newPrice
	 * @param startTime
	 * @param endTime
	 * @param betweenTime
	 * @param comments
	 * @param purchasePeople
	 * @param routeDays
	 */
	public Route(Integer id, String image, String routeNumber, String routeName, String startPlace, String endPlace,
			double oldPrice, double discount, double newPrice, Date startTime, Date endTime, long betweenTime,
			long comments, long purchasePeople, List<RouteDay> routeDays) {
		this.id = id;
		this.image = image;
		this.routeNumber = routeNumber;
		this.routeName = routeName;
		this.startPlace = startPlace;
		this.endPlace = endPlace;
		this.oldPrice = oldPrice;
		this.discount = discount;
		this.newPrice = newPrice;
		this.startTime = startTime;
		this.endTime = endTime;
		this.betweenTime = betweenTime;
		this.comments = comments;
		this.purchasePeople = purchasePeople;
		this.routeDays = routeDays;
	}
	/**
	 * @return the routeDays
	 */
	public List<RouteDay> getRouteDays() {
		return routeDays;
	}
	/**
	 * @param routeDays the routeDays to set
	 */
	public void setRouteDays(List<RouteDay> routeDays) {
		this.routeDays = routeDays;
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
	 * @return the image
	 */
	public String getImage() {
		return image;
	}
	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}
	/**
	 * @return the routeNumber
	 */
	public String getRouteNumber() {
		return routeNumber;
	}
	/**
	 * @param routeNumber the routeNumber to set
	 */
	public void setRouteNumber(String routeNumber) {
		this.routeNumber = routeNumber;
	}
	/**
	 * @return the routeName
	 */
	public String getRouteName() {
		return routeName;
	}
	/**
	 * @param routeName the routeName to set
	 */
	public void setRouteName(String routeName) {
		this.routeName = routeName;
	}
	/**
	 * @return the startPlace
	 */
	public String getStartPlace() {
		return startPlace;
	}
	/**
	 * @param startPlace the startPlace to set
	 */
	public void setStartPlace(String startPlace) {
		this.startPlace = startPlace;
	}
	/**
	 * @return the endPlace
	 */
	public String getEndPlace() {
		return endPlace;
	}
	/**
	 * @param endPlace the endPlace to set
	 */
	public void setEndPlace(String endPlace) {
		this.endPlace = endPlace;
	}
	/**
	 * @return the oldPrice
	 */
	public double getOldPrice() {
		return oldPrice;
	}
	/**
	 * @param oldPrice the oldPrice to set
	 */
	public void setOldPrice(double oldPrice) {
		this.oldPrice = oldPrice;
	}
	/**
	 * @return the discount
	 */
	public double getDiscount() {
		return discount;
	}
	/**
	 * @param discount the discount to set
	 */
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	/**
	 * @return the newPrice
	 */
	public double getNewPrice() {
		return newPrice;
	}
	/**
	 * @param newPrice the newPrice to set
	 */
	public void setNewPrice(double newPrice) {
		this.newPrice = newPrice;
	}
	/**
	 * @return the startTime
	 */
	public Date getStartTime() {
		return startTime;
	}
	/**
	 * @param startTime the startTime to set
	 */
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	/**
	 * @return the endTime
	 */
	public Date getEndTime() {
		return endTime;
	}
	/**
	 * @param endTime the endTime to set
	 */
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	/**
	 * @return the betweenTime
	 */
	public long getBetweenTime() {
		return betweenTime;
	}
	/**
	 * @param betweenTime the betweenTime to set
	 */
	public void setBetweenTime(long betweenTime) {
		this.betweenTime = betweenTime;
	}
	/**
	 * @return the comments
	 */
	public long getComments() {
		return comments;
	}
	/**
	 * @param comments the comments to set
	 */
	public void setComments(long comments) {
		this.comments = comments;
	}
	/**
	 * @return the purchasePeople
	 */
	public long getPurchasePeople() {
		return purchasePeople;
	}
	/**
	 * @param purchasePeople the purchasePeople to set
	 */
	public void setPurchasePeople(long purchasePeople) {
		this.purchasePeople = purchasePeople;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Route [id=").append(id).append(", image=").append(image).append(", routeNumber=")
				.append(routeNumber).append(", routeName=").append(routeName).append(", startPlace=").append(startPlace)
				.append(", endPlace=").append(endPlace).append(", oldPrice=").append(oldPrice).append(", discount=")
				.append(discount).append(", newPrice=").append(newPrice).append(", startTime=").append(startTime)
				.append(", endTime=").append(endTime).append(", betweenTime=").append(betweenTime).append(", comments=")
				.append(comments).append(", purchasePeople=").append(purchasePeople).append(", routeDays=")
				.append(routeDays).append("]");
		return builder.toString();
	}
	
	
	
}
