package com.ssm.entity.sights;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Sights implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String image;
	private String name;
	private String code;
	private String detail;
	private String location;
	private String time;
	private Double oldPrice;
	private Double discount;
	private Double newPrice;
	private String ticket;
	private Integer buyNum;
	private String phone;
	private String tips;// 安全贴士
	private SightsType type;
	private String level;// 星级
	private String grade;
	
	private String notes;//购买须知

	public Double getNewPrice() {
		newPrice = Math.ceil(oldPrice * discount) / 10;
		return newPrice;
	}

}
