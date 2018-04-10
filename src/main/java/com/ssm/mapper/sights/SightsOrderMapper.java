package com.ssm.mapper.sights;

import java.util.List;

import com.ssm.entity.sights.AutoId;
import com.ssm.entity.sights.SightsOrder;
import com.ssm.vo.sights.SightsOrderVo;

public interface SightsOrderMapper {

	public Integer add(SightsOrder SightsOrder);

	public Integer delete(Integer id);

	public Integer update(SightsOrder SightsOrder);

	public SightsOrder selectById(Integer id);

	public List<SightsOrder> querySightsOrderListByCondition(SightsOrderVo sightsOrderVo);

	public AutoId selectLastId();

	public void updateLastId(Integer autoid);

}
