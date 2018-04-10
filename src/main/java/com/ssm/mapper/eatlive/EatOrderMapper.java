package com.ssm.mapper.eatlive;

import com.ssm.entity.eatlive.EatOrder;

/**
 * @project_name: travel
 * @todo
 * @author: LC
 * @date: 2018年3月20日 下午4:56:40
 */
public interface EatOrderMapper {
	/*
	 * 添加餐饮订单信息
	 */
	public Integer insertEat(EatOrder eatOrder); 
}
