package com.pm.Enum;

/**
 *��ҳ��pn�ĳ���ֵ 
 *
 */
public enum PnEnum {

	PnOne(1); //最新文章
	
	private Integer index;
	
	PnEnum(Integer index) {
		this.index = index;
	}
	
	public Integer getIndex() {
		return index;
	}
}
