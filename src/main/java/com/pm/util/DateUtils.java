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
 * ���ڸ�ʽ��������
 * @author Administrator
 *
 */
public class DateUtils
{
    /**
     * ���ַ���ת��ΪDate����
     *
     * @param dateStr �����ַ���
     * @param pattern ���ڸ�ʽ
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
     * ���ַ���ת��ΪLocalDate����
     *
     * @param dateStr ��ʽ����Ϊ��"2016-05-31"
     * @return
     */
    public static LocalDate stringToLocalDate(String dateStr) {
        return LocalDate.parse(dateStr);
    }


    /**
     * ��ָ��������ת����longʱ���
     *
     * @param String date ��Ҫת��������
     * @param String dateFormat ��Ҫת�������ڸ�ʽ
     * @return long ʱ�������λ����
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
     * ����תString
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
     * ת��long���͵�timestampΪLocalDateTime����
     *
     * @param timestamp
     * @return LocalDateTime
     */
    public static LocalDateTime timestampToLocalDateTime(long timestamp) {
        return LocalDateTime.ofInstant(Instant.ofEpochSecond(timestamp), TimeZone.getDefault().toZoneId());
    }

    /**
     * ת��long���͵�timestampΪLocalDate����
     *
     * @param timestamp
     * @return LocalDate
     */
    public static LocalDate timestampToLocalDate(long timestamp) {
        return timestampToLocalDateTime(timestamp).toLocalDate();
    }


    /**
     * ����ǰ����ת����longʱ���
     *
     * @return long ʱ�������λ����
     */
    public static long nowToTimestamp() {
        long timestamp = new Date().getTime();
        return timestamp / 1000;
    }

    /**
     * �͵�ǰʱ��Ƚϣ�Date��ʽ��
     *
     * @param date
     * @return ������֮ǰ��0����ǰ��������֮��
     */
    public static int compareDateWithNow(Date date1) {
        Date date2 = new Date();
        int rnum = date1.compareTo(date2);
        return rnum;
    }

    /**
     * �͵�ǰʱ��Ƚ�(ʱ����Ƚ�)
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
     * ��ȡ����ǰ00:00:00��ʱ���
     *
     * @param d ��������d��ǰ
     * @return ʱ���������Ϊ��λ
     */
    public static long getMinusDay(int d) {
        LocalDate now = LocalDate.now();
        return now.minusDays(d).atStartOfDay().toEpochSecond(ZoneOffset.ofHours(8));
    }

    /**
     * ��ȡ��������m����ǰ00:00:00��ʱ���
     *
     * @param m ��������m����ǰ
     * @return ʱ���������Ϊ��λ
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
     * ���ݿ����ڸ�ʽת�����ַ�����"yyyy-MM-dd ")
     *
     */
    public static String getDateString(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return simpleDateFormat.format(date);
    }
}

