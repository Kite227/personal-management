package com.pm.Enum;

public enum TypeIdEnum {

	TypeId_home(1),
	TypeId_share(2);
	
	private Integer value;
	TypeIdEnum(Integer value) {
		this.value = value;
	}
	
	public Integer getValue() {
		return value;
	}
}
