package com.ssm.service.specialty;

import java.util.List;

import com.ssm.entity.specialty.Assess;

/**
 * @authour 郑伟
 * @date 2018年3月24日 下午8:00:24
 * @describe
 */

public interface AssessSeervice {

	// 存储单个评价
	public void saveAssessByUserId(Assess assess);

	// 根据特产ID 查询评论

	public List<Assess> selectSpecialtyId(Integer id);

	// 根据用户ID 查询评论

	public List<Assess> selectId(Integer id);

}
