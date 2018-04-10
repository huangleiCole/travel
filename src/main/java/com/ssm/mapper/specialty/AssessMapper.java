package com.ssm.mapper.specialty;

import java.util.List;

import com.ssm.entity.specialty.Assess;;

/**
* @authour 郑伟
* @date 2018年3月24日 下午5:24:32
* @describe
*/

public interface AssessMapper {
	//存储单个评价
	public void  saveAssess(Assess assess);
	
	//根据特产ID查询所有评论
	public  List<Assess> selectBySpecialtyId(Integer id);
	
	//根据用户Id查询所有评论
	public List<Assess> getByUserId(Integer id);
	
	public Assess getById(Integer id);

}
