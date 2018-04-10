package com.ssm.mapper.eatlive;

import com.ssm.entity.eatlive.LiveOrder;

/**
 * @project_name: travel
 * @todo
 * @author: LC
 * @date: 2018年3月21日 上午10:08:16
 */
public interface LiveOrderMapper {
	
	/*
	 * 添加住宿查询
	 */
	public Integer insertLiveOrder(LiveOrder liveOrder);
}
