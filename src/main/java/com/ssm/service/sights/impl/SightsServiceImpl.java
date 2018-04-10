package com.ssm.service.sights.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.entity.sights.Sights;
import com.ssm.mapper.sights.SightsMapper;
import com.ssm.service.sights.SightsService;
import com.ssm.util.PageBean;
import com.ssm.vo.sights.SightsVo;

@Transactional
@Service
public class SightsServiceImpl implements SightsService {

	@Autowired
	private SightsMapper sightsMapper;

	@Override
	public String save(Sights sights) {
		if (sights.getId() != null) {
			sightsMapper.update(sights);
			return "101";// 更新成功
		} else {
			Date date = new Date();
			long time = date.getTime();
			String d1 = String.valueOf(time);
			String d2 = d1.substring(3, 13);
			String code = "TR" + d2;
			sights.setCode(code);// 编号自动生成
			sightsMapper.add(sights);
			return "102";// 添加成功
		}
	}

	@Override
	public String delete(Integer id) {
		sightsMapper.delete(id);
		return "103";// 删除成功

	}

	@Override
	public Sights selectById(Integer id) {
		return sightsMapper.selectById(id);
	}

	@Override
	public List<Sights> QuerySightsListByCondition(SightsVo sightsVo) {
		return sightsMapper.querySightsListByCondition(sightsVo);
	}

	@Override
	public PageBean<Sights> querySightsPageByCondition(Integer currentPage, Integer size, SightsVo sightsVo) {
		sightsVo.setCurrentPage(currentPage);
		sightsVo.setPageCount(size);
		int count = sightsMapper.selectCountByCondition(sightsVo);
		List<Sights> sights = sightsMapper.selectSightsListByPage(sightsVo);
		PageBean<Sights> pageBean = new PageBean<>(count, size);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(sights);
		return pageBean;
	}

}
