package com.ssm.mapper.specialty;

import java.util.List;

import com.ssm.entity.specialty.Specialty;
import com.ssm.vo.specialty.SpecialtyVo;



/**
* @authour 郑伟
* @date 2018年3月19日 下午10:17:45
* @describe
*/

public interface SpecialtyMapper {
	
		//查询所有特产
		public   List<Specialty> getAllSpecialtys();
		
		//根据Id查询
		public  Specialty selectById(Integer id);
		
		//根据origin查询
		public  List<Specialty> selectByOrigin(String Origin);
		
		//根据特产所在区域查询所有特产
		
		public  List<Specialty> selectByFilmName(SpecialtyVo specialtyVo);
		
		/**
		 * 查询总记录数
		 */
		public int selectCountByCondition(SpecialtyVo specialtyVo);
		
		/**
		 * 查询分页
		 */
		public List<Specialty> selectListByPage(SpecialtyVo specialtyVo);

}
