package com.ssm.vo.specialty;

import com.ssm.entity.specialty.Specialty;

import lombok.Data;

/**
 * @authour 郑伟
 * @date 2018年3月21日 下午5:40:44
 * @describe
 */
@Data
public class SpecialtyVo {

	private Specialty specialty;

	private int currentPage; // 当前页

	private int pageCount; // 每页显示记录数

}
