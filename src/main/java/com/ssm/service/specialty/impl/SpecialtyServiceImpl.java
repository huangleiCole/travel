package com.ssm.service.specialty.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.util.PageBean;
import com.ssm.entity.specialty.Specialty;
import com.ssm.mapper.specialty.SpecialtyMapper;
import com.ssm.service.specialty.SpecialtySerive;
import com.ssm.vo.specialty.SpecialtyVo;

/**
 * @authour 郑伟
 * @date 2018年3月19日 下午11:32:52
 * @describe
 */
@Service
public class SpecialtyServiceImpl implements SpecialtySerive {

	@Autowired
	private SpecialtyMapper specialtyMapper;

	@Override
	public List<Specialty> AllSpecialtys() {
		return specialtyMapper.getAllSpecialtys();
	}

	@Override
	public Specialty selectByIdSpecialty(Integer id) {
		return specialtyMapper.selectById(id);
	}

	@Override
	public PageBean<Specialty> queryFilmByCondition(Integer currentPage, Integer size, SpecialtyVo specialtyVo) {
		// 获取记录总数
		int count = specialtyMapper.selectCountByCondition(specialtyVo);
		// 获取list集合
		specialtyVo.setCurrentPage(currentPage);
		specialtyVo.setPageCount(size);
		List<Specialty> filmList = specialtyMapper.selectListByPage(specialtyVo);
		PageBean<Specialty> pageBean = new PageBean<>(count, size);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(filmList);
		return pageBean;
	}

	@Override
	public List<Specialty> selectBySpecialty(SpecialtyVo specialtyVo) {
		return specialtyMapper.selectByFilmName(specialtyVo);
	}

	@Override
	public List<Specialty> selectByOriginSpecialty(String Origin) {
		// TODO Auto-generated method stub
		return specialtyMapper.selectByOrigin(Origin);
	}

}
