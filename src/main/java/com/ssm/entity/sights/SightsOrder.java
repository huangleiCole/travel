package com.ssm.entity.sights;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.ssm.entity.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SightsOrder {
	private Integer id;
	private String code;
	private Date createtime;
	private Integer adults;
	private Integer children;
	private Integer students;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date usetime;
	private Sights sights;
	private User user;
	private Double account;
	private PayStatus payStatus;

	public Double getAccount() {
		account = Math.ceil(sights.getNewPrice() * (adults + children + students));
		return account;
	}
}
