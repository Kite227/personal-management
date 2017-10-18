package com.pm.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/**
 * 日期格式处理工具类
 * @author Administrator
 *
 */
public class DateUtils
{
    /**
     * 把字符串转换为Date类型
     *
     * @param dateStr 日期字符串
     * @param pattern 日期格式
     * @return
     */
    public static Date stringToDate(String strDate, String pattern) {
        SimpleDateFormat df = new SimpleDateFormat(pattern);
        try {
            return df.parse(strDate);
        }
        catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 把字符串转换为LocalDate类型
     *
     * @param dateStr 格式必须为："2016-05-31"
     * @return
     */
    public static LocalDate stringToLocalDate(String dateStr) {
        return LocalDate.parse(dateStr);
    }


    /**
     * 将指定的日期转换成long时间戳
     *
     * @param String date 需要转换的日期
     * @param String dateFormat 需要转换的日期格式
     * @return long 时间戳，单位：秒
     */
    public static long stringToTimestamp(String dateStr, String pattern) {
        long timestamp = 0;
        try {
            timestamp = new SimpleDateFormat(pattern).parse(dateStr).getTime();
        }
        catch (ParseException e) {
            e.printStackTrace();
        }
        return timestamp / 1000;
    }

    /**
     * 日期转String
     *
     * @return
     */
    public static String dateToString(Date date, String pattern) {
        SimpleDateFormat df = new SimpleDateFormat(pattern);
        return df.format(date);
    }

    public static String localDateToString(LocalDate date) {
        return date.toString();
    }

 
    /**
     * 转换long类型的timestamp为LocalDateTime类型
     *
     * @param timestamp
     * @return LocalDateTime
     */
    public static LocalDateTime timestampToLocalDateTime(long timestamp) {
        return LocalDateTime.ofInstant(Instant.ofEpochSecond(timestamp), TimeZone.getDefault().toZoneId());
    }

    /**
     * 转换long类型的timestamp为LocalDate类型
     *
     * @param timestamp
     * @return LocalDate
     */
    public static LocalDate timestampToLocalDate(long timestamp) {
        return timestampToLocalDateTime(timestamp).toLocalDate();
    }


    /**
     * 将当前日期转换成long时间戳
     *
     * @return long 时间戳，单位：秒
     */
    public static long nowToTimestamp() {
        long timestamp = new Date().getTime();
        return timestamp / 1000;
    }

    /**
     * 和当前时间比较（Date格式）
     *
     * @param date
     * @return 负数：之前；0：当前；正数：之后
     */
    public static int compareDateWithNow(Date date1) {
        Date date2 = new Date();
        int rnum = date1.compareTo(date2);
        return rnum;
    }

    /**
     * 和当前时间比较(时间戳比较)
     *
     * @param date
     * @return
     */
    public static int compareDateWithNow(long date1) {
        long date2 = nowToTimestamp();
        if (date1 > date2) {
            return 1;
        }
        else if (date1 < date2) {
            return -1;
        }
        else {
            return 0;
        }
    }

    /**
     * 获取几天前00:00:00的时间戳
     *
     * @param d 距离现在d天前
     * @return 时间戳，以秒为单位
     */
    public static long getMinusDay(int d) {
        LocalDate now = LocalDate.now();
        return now.minusDays(d).atStartOfDay().toEpochSecond(ZoneOffset.ofHours(8));
    }

    /**
     * 获取距离现在m个月前00:00:00的时间戳
     *
     * @param m 距离现在m个月前
     * @return 时间戳，以秒为单位
     */
    public static long getMinusMonth(int m) {
        LocalDate now = LocalDate.now();
        return now.minusMonths(m).atStartOfDay().toEpochSecond(ZoneOffset.ofHours(8));
    }

    public static String getDayOfWeek(LocalDate d) {
        DayOfWeek dayOfWeek = d.getDayOfWeek();
        return dayOfWeek.getDisplayName(TextStyle.FULL, Locale.SIMPLIFIED_CHINESE);
    }

    /**
     * 数据库日期格式转换成字符串（"yyyy-MM-dd ")
     *
     */
    public static String getDateString(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return simpleDateFormat.format(date);
    }
}

