package com.slj.blog.utils;

import java.text.SimpleDateFormat;

public class DateUtil {
	public static final String NORMALPATTERN = "yyyy/MM/dd";

	public static String LongToString(Long timeStamp, String pattern) {
		SimpleDateFormat format = new SimpleDateFormat(pattern);
		String d = format.format(timeStamp);
		return d;
	}
}
