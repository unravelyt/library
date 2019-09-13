package com.library;

import org.junit.Test;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class ttt {

    @Test
    public void test() throws ParseException {
        Date date = new Date();

        DateFormat df = new SimpleDateFormat("yyyy年MM月dd日");
        String str = "2019年6月1日";
        Date date2 = df.parse(str);
        Long due =  (date.getTime() - date2.getTime())/(1000*3600*24);
        System.out.println(date);
        System.out.println(date2);
        System.out.println(due);
    }

    @Test
    public void test2() throws ParseException {
        Date date2 = new Date();

        DateFormat df = new SimpleDateFormat("yyyy年MM月dd日");
        String str = "2019年6月1日";
        Date date1 = df.parse(str);

        Calendar cal = Calendar.getInstance();
        cal.setTime(date1);
        long time1 = cal.getTimeInMillis();
        cal.setTime(date2);
        long time2 = cal.getTimeInMillis();
        long between_days = (time2 - time1) / (1000 * 3600 * 24);
        System.out.println(date1);
        System.out.println(date2);
        System.out.println(between_days);
    }
}
