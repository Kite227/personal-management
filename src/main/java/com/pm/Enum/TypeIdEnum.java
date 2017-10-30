package com.pm.Enum;

/**
 * BlogArticle类中的类型枚举
 *
 */
public enum TypeIdEnum {

	TypeId_home(1),	//韶华追忆
	TypeId_share(2); //技术分享
	
	private Integer value;
	TypeIdEnum(Integer value) {
		this.value = value;
	}
	
	public Integer getValue() {
		return value;
	}
}
