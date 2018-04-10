package com.ssm.service.eatlive.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.eatlive.LiveOrder;
import com.ssm.mapper.eatlive.LiveOrderMapper;
import com.ssm.service.eatlive.LiveOrderService;
@Service
public class LiveOrderServiceImpl implements LiveOrderService {

	@Autowired
	private LiveOrderMapper liveOrderMapper;
	@Override
	public String saveLiveOrder(LiveOrder liveOrder) {
		Date date = new Date();
		long time = date.getTime();
		String d1 = String.valueOf(time);
		String d2 = d1.substring(3, 13);
		String code = "TR" + d2;
		liveOrder.setOrdernum(code);
		int i = liveOrderMapper.insertLiveOrder(liveOrder);
		if(i > 0){
			return "true";
		}
		return "false";
	}

}
