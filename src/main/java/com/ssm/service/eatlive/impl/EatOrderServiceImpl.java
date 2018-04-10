package com.ssm.service.eatlive.impl;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.eatlive.EatOrder;
import com.ssm.mapper.eatlive.EatOrderMapper;
import com.ssm.service.eatlive.EatOrderService;
@Service
public class EatOrderServiceImpl implements EatOrderService {
	
	@Autowired
	private EatOrderMapper eatOrderMapper;
	@Override
	public String saveEatOrder(EatOrder eatOrder) {
		Date date = new Date();
		long time = date.getTime();
		String d1 = String.valueOf(time);
		String d2 = d1.substring(3, 13);
		String code = "TR" + d2;
		eatOrder.setOrdernum(code);
		/*String ordernum = "TR" + UUID.randomUUID();
		eatOrder.setOrdernum(ordernum);*/
		int i = eatOrderMapper.insertEat(eatOrder);
		if(i>0) {
			return "true";
		}
		return "false";
	}

}
