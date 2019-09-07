package com.library;

import com.library.domain.Admin;
import com.library.service.AdminService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSpring {

    /*ApplicationContext的三个常用实现类
     *  ClassPathXmlApplicationContext: 它可以加载类路径下的配置环境，要求配置文件必须在类路径下，否则加载不了
     *  FileSystemXmlApplicationContext:它可以加载磁盘任意路径下的配置文件（必须由访问权限）
     *  AnnotationConfigApplicationContext:它是用于读取注解创建容器的
     */

    @Test
    public void test1(){
        ApplicationContext c = new ClassPathXmlApplicationContext("applicationContext.xml");
        AdminService service = c.getBean("adminService", AdminService.class);
        Admin lisi = service.findByAdmin("admin1", "1234");
        System.out.println(lisi);


    }
}
