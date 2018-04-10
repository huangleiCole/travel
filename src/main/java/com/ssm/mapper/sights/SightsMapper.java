package com.ssm.mapper.sights;

import java.util.List;

import com.ssm.entity.sights.Sights;
import com.ssm.vo.sights.SightsVo;

public interface SightsMapper {

	public Integer add(Sights sights);

	public Integer delete(Integer id);

	public Integer update(Sights sights);

	public Sights selectById(Integer id);

	public int selectCountByCondition(SightsVo sightsVo);

	public List<Sights> selectSightsListByPage(SightsVo sightsVo);

	public List<Sights> querySightsListByCondition(SightsVo sightsVo);

	public List<Sights> selectSightsByLocation(SightsVo sightsVo);

}
