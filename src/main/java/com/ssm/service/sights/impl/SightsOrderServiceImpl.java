package com.ssm.service.sights.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.entity.sights.SightsOrder;
import com.ssm.mapper.sights.SightsOrderMapper;
import com.ssm.service.sights.SightsOrderService;
import com.ssm.vo.sights.SightsOrderVo;

@Transactional
@Service
public class SightsOrderServiceImpl implements SightsOrderService {

	@Autowired
	private SightsOrderMapper sigtsOrderMapper;

	@Override
	public String save(SightsOrder sightsOrder) {

		Date date = new Date();
		long time = date.getTime();
		String d1 = String.valueOf(time);
		String d2 = d1.substring(3, 13);
		String code = "OD" + d2;
		sightsOrder.setCode(code);
		sightsOrder.setCreatetime(new Date());
		sigtsOrderMapper.add(sightsOrder);
		return "102";// 添加成功

	}

	public String update(SightsOrder sightsOrder) {
		sigtsOrderMapper.update(sightsOrder);
		return "101";// 更新成功
	}

	@Override
	public String delete(Integer id) {
		sigtsOrderMapper.delete(id);
		return "103";// 删除
	}

	@Override
	public SightsOrder selectById(Integer id) {
		return sigtsOrderMapper.selectById(id);
	}

	@Override
	public List<SightsOrder> QuerySightsOrderListByCondition(SightsOrderVo sightsOrderVo) {
		return sigtsOrderMapper.querySightsOrderListByCondition(sightsOrderVo);
	}

	@Override
	public Integer getNewId() {
		return sigtsOrderMapper.selectLastId().getAutoid() + 1;
	}

	@Override
	public void updateLastId() {
		sigtsOrderMapper.updateLastId(sigtsOrderMapper.selectLastId().getAutoid() + 1);
	}

}
