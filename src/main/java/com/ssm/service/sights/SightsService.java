package com.ssm.service.sights;

import java.util.List;

import com.ssm.entity.sights.Sights;
import com.ssm.util.PageBean;
import com.ssm.vo.sights.SightsVo;

public interface SightsService {

	public String save(Sights sights);
	
	public String delete(Integer id);
	
	public Sights selectById(Integer id);
	
	public List<Sights> QuerySightsListByCondition(SightsVo sightsVo);
	
	public PageBean<Sights> querySightsPageByCondition(Integer currentPage,Integer size,SightsVo sightsVo);
	
	
}
