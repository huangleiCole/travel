package com.ssm.service.eatlive.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.entity.eatlive.EatLive;
import com.ssm.mapper.eatlive.EatLiveMapper;
import com.ssm.service.eatlive.EatLiveService;
import com.ssm.vo.eatlive.FilmVo;
import com.ssm.util.PageBean;

@Service
public class EatLiveServiceImpl implements EatLiveService {

	@Autowired
	private EatLiveMapper eatliveMapper;

	@Override
	public List<EatLive> queryEatLive(Integer type) {
		List<EatLive> eatLives = eatliveMapper.selectEatAndLive(type);
		return eatLives;
	}

	@Override
	public EatLive queryById(Integer id) {
		EatLive eatLive = eatliveMapper.selectEatLive(id);
		return eatLive;
	}

	@Override
	public Integer queryAll() {
		int counts = eatliveMapper.selectAllEat();
		return counts;
	}

	@Override
	public PageBean<EatLive> queryEatByCondition(Integer currentPage, Integer size, FilmVo filmVo) {
		// 获取记录总数
		int count = eatliveMapper.selectAllEat();
		// 获取list集合
		filmVo.setCurrentPage(currentPage);
		filmVo.setPageCount(size);
		List<EatLive> eatlives = eatliveMapper.selectListEatByPage(filmVo);
		PageBean<EatLive> pageBean = new PageBean<>(count, size);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(eatlives);
		return pageBean;
	}

	@Override
	public PageBean<EatLive> queryLiveByCondition(Integer currentPage, Integer size, FilmVo filmVo) {
		// 获取记录总数
		int count = eatliveMapper.selectAllLive();
		// 获取list集合
		filmVo.setCurrentPage(currentPage);
		filmVo.setPageCount(size);
		List<EatLive> eatlives = eatliveMapper.selectListLiveByPage(filmVo);
		PageBean<EatLive> pageBean = new PageBean<>(count, size);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(eatlives);
		return pageBean;
	}

	@Override
	public PageBean<EatLive> queryByCondition(Integer currentPage, Integer size, FilmVo filmVo) {
		// 获取记录总数
		int count = -1;
		Integer type = filmVo.getEatlive().getType();
		String city = filmVo.getEatlive().getCity();
		if(type != null ){
			int i = type;
			System.out.println("i:"+i);
			if(i==0){
				count = eatliveMapper.selectAllEat();
			}else if(i==1){
				count = eatliveMapper.selectAllLive();
			}
		}else if(city != null){
			count = eatliveMapper.selectAllCity(city);
		}
		// 获取list集合
		filmVo.setCurrentPage(currentPage);
		filmVo.setPageCount(size);
		List<EatLive> eatlives = eatliveMapper.selectListByPage(filmVo);
		PageBean<EatLive> pageBean = new PageBean<>(count, size);
		pageBean.setCurrent(currentPage);
		pageBean.setDatas(eatlives);
		return pageBean;
	}

}
