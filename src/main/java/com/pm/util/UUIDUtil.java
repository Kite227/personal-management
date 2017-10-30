package com.pm.util;

import java.util.UUID;

public class UUIDUtil {

	/**
	 * 生成全球唯一的uuid
	 * @return
	 */
	public static String getUUID() {
		
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		return uuid;
		
	}
}
