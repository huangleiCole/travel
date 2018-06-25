package com.ssm.entity.eatlive;

import java.io.Serializable;

import lombok.Data;

/**
 * @project_name: travel
 * @todo
 * @author: LC
 * @date: 2018年3月24日 下午10:40:52
 */
@Data
public class City implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	private Integer id;
	private String citynum;
	private String cityname;
}
