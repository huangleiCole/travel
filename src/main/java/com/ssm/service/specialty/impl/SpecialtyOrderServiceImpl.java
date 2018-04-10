package com.ssm.service.specialty.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.specialty.SpecialtyOrder;
import com.ssm.mapper.specialty.SpecialtyOrderMapper;
import com.ssm.service.specialty.SpecialtyOrderSevice;

/**
 * @authour 郑伟
 * @date 2018年3月22日 下午7:44:20
 * @describe
 */
@Service
public class SpecialtyOrderServiceImpl implements SpecialtyOrderSevice {

	@Autowired
	private SpecialtyOrderMapper specialtyOrderMapper;

	@Override
	public void saveOrder(SpecialtyOrder specialtyOrder) {
		specialtyOrderMapper.saveSpecialtyOrder(specialtyOrder);
	}

	@Override
	public SpecialtyOrder selectByIdSpecialtyOrder(long ids) {
		return specialtyOrderMapper.selectById(ids);
	}

	@Override
	public void updateByUser(SpecialtyOrder specialtyOrder) {
		specialtyOrderMapper.updateByUserId(specialtyOrder);
	}

}
