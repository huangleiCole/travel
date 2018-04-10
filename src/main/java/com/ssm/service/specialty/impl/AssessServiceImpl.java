package com.ssm.service.specialty.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.specialty.Assess;
import com.ssm.mapper.specialty.AssessMapper;
import com.ssm.service.specialty.AssessSeervice;

/**
 * @authour 郑伟
 * @date 2018年3月24日 下午8:01:27
 * @describe
 */
@Service
public class AssessServiceImpl implements AssessSeervice {

	@Autowired
	private AssessMapper assessMapoper;

	@Override
	public void saveAssessByUserId(Assess assess) {
		assessMapoper.saveAssess(assess);
	}

	@Override
	public List<Assess> selectSpecialtyId(Integer id) {
		return assessMapoper.selectBySpecialtyId(id);
	}

	@Override
	public List<Assess> selectId(Integer id) {
		// TODO Auto-generated method stub
		return assessMapoper.getByUserId(id);
	}

}
