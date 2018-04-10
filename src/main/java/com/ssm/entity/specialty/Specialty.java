package com.ssm.entity.specialty;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.ssm.entity.specialty.Assess;

import lombok.Data;

/**
 * @authour 郑伟
 * @date 2018年3月19日 下午9:30:27
 * @describe
 */
@Data
public class Specialty {

	private Integer id;

	private String speName;// 特产名

	private String productParamenters; // 产品参数

	private String factoryName;// 厂名

	private String factoryPhone; // 厂家联系方式

	private String stroageMetod; // 储存方法

	private String foodAdditives; // 食品添加剂

	private String series;// 系列

	private String weight;// 重量

	private String rank; // 等级
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date productDate; // 生产日期

	private String productCode; // 产品标准号

	private String factoryAddress; // 厂址

	private String brdenSheet; // 配料表

	private String expirationDate; // 保质期

	private String paching; // 包装方式
	
	private String barCode; // 商品条形码
	
	private String organism; // 是否含有有机物

	private String origin; // 产地

	private Double preferentialPrice;// 优惠价

	private String distribution;// 配送地址

	private Double courierFees; // 快递费

	private String monthlySales; // 月销量

	private String evaluation; // 评价分
	
	private String introduction; //简介
	
	private String images; //产品图片
	
	private Double shopPrice; //专柜价格
	
	private String numberNo;//地方代号
	
	private List<Assess> assesslist;

}
