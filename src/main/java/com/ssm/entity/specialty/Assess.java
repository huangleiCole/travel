package com.ssm.entity.specialty;

import java.io.Serializable;

import com.ssm.entity.user.User;

import lombok.Data;

/**
* @authour 郑伟
* @date 2018年3月24日 下午5:02:33
* @describe
* 地方特色订单用户评价类
*/
@Data
public class Assess implements Serializable  {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private  Integer id; //评价ID
	
    private String levell;//评价等级
	
	private String content ;//评价内容
	
	
	private User  user;
	
	private Specialty specialty;
	

	
}
