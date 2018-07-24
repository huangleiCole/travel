package com.ssm.entity.eatlive;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @project_name: travel
 * @todo
 * @author: LC
 * @date: 2018年3月19日 下午2:34:27
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EatLive implements Serializable  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private String lv;
	private String tel;
	private String city;
	private String address;
	private Integer type;
	private String img;
	private String detail;
}
