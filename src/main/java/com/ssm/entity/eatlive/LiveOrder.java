package com.ssm.entity.eatlive;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @project_name: travel
 * @todo
 * @author: LC
 * @date: 2018年3月21日 上午9:56:55
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LiveOrder {

	private Integer id;
	private String ordernum;
	private String livename;
	private String roomtype;
	private String username;
	private String tel;
	private String idcard;
	private Integer livenum;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date checkintime;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date checkouttime;
	private String require;
}
