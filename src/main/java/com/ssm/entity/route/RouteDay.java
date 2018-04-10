package com.ssm.entity.route;

import java.io.Serializable;

public class RouteDay implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5644456409532947363L;
	private Integer id;
	private Integer day;
	private String startPlace;
	private String endPlace;
	private String spotName;
	private String introduce;
	private String image;
	/**
	 * 
	 */
	public RouteDay() {
	}
	/**
	 * @param id
	 * @param day
	 * @param startPlace
	 * @param endPlace
	 * @param spotName
	 * @param introduce
	 * @param image
	 */
	public RouteDay(Integer id, Integer day, String startPlace, String endPlace, String spotName, String introduce,
			String image) {
		this.id = id;
		this.day = day;
		this.startPlace = startPlace;
		this.endPlace = endPlace;
		this.spotName = spotName;
		this.introduce = introduce;
		this.image = image;
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
	 * @return the day
	 */
	public Integer getDay() {
		return day;
	}
	/**
	 * @param day the day to set
	 */
	public void setDay(Integer day) {
		this.day = day;
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
	 * @return the spotName
	 */
	public String getSpotName() {
		return spotName;
	}
	/**
	 * @param spotName the spotName to set
	 */
	public void setSpotName(String spotName) {
		this.spotName = spotName;
	}
	/**
	 * @return the introduce
	 */
	public String getIntroduce() {
		return introduce;
	}
	/**
	 * @param introduce the introduce to set
	 */
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
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
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("RouteDay [id=").append(id).append(", day=").append(day).append(", startPlace=")
				.append(startPlace).append(", endPlace=").append(endPlace).append(", spotName=").append(spotName)
				.append(", introduce=").append(introduce).append(", image=").append(image).append("]");
		return builder.toString();
	}
}
