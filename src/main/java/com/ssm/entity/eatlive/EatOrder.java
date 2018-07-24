package com.ssm.entity.eatlive;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 餐饮订单实体类
 * @project_name: travel
 * @todo
 * @author: LC
 * @date: 2018年3月20日 下午4:38:41
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class EatOrder implements Serializable  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String ordernum;
	private String eatname;
	private String username;
	private String tel;
	private String idcard;
	private Integer eatnum;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date eattime;
	private String require;
}
