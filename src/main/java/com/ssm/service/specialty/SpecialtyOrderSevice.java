package com.ssm.service.specialty;

import com.ssm.entity.specialty.SpecialtyOrder;

/**
 * @authour 郑伟
 * @date 2018年3月22日 下午7:42:48
 * @describe
 */

public interface SpecialtyOrderSevice {

	public void saveOrder(SpecialtyOrder specialtyOrder);

	public SpecialtyOrder selectByIdSpecialtyOrder(long ids);

	public void updateByUser(SpecialtyOrder specialtyOrder);

}
