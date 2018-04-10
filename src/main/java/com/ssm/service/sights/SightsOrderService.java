package com.ssm.service.sights;

import java.util.List;

import com.ssm.entity.sights.SightsOrder;
import com.ssm.vo.sights.SightsOrderVo;

public interface SightsOrderService {

	public String save(SightsOrder sightsOrder);
	
	public String update(SightsOrder sightsOrder);

	public String delete(Integer id);

	public SightsOrder selectById(Integer id);

	public List<SightsOrder> QuerySightsOrderListByCondition(SightsOrderVo sightsOrderVo);

	public Integer getNewId();

	public void updateLastId();
}
