package com.library;

import com.library.domain.Admin;
import com.library.domain.Reader;
import com.library.domain.Record;
import com.library.mapper.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class test1 {

    @Test
    public void testAdmin() throws IOException {
        InputStream ips = Resources.getResourceAsStream("applicationContext.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(ips);
        SqlSession sqlSession = factory.openSession();
        AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
        /*Admin admin1 = mapper.findByAdmin("admin1", "1234");
        System.out.println(admin1);

        Admin admin = new Admin();
        admin.setUsername("admin3");
        admin.setPassword("1234");
        admin.setName("管理员3");
        mapper.addAdmin(admin);
*/
        //mapper.deleteAdmin(8);
        Admin admin = new Admin();
        admin.setUsername("admin3");
        admin.setPassword("1234");
        admin.setName("管理员3");
        admin.setId(9);
        admin.setGender("女");
        admin.setPhone("23333333");
        mapper.updateAdmin(admin);
        sqlSession.commit();
        sqlSession.close();
        ips.close();
    }

    @Test
    public void testBooks() throws IOException {
        InputStream ips = Resources.getResourceAsStream("applicationContext.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(ips);
        SqlSession sqlSession = factory.openSession();
        BooksMapper mapper = sqlSession.getMapper(BooksMapper.class);

       /* Books books = new Books();
        //books.setAuthor("%马克%");
        books.setClass_id(6);
        List<Books> bookList = mapper.findByCondition(books);
        for (Books b : bookList) {
            System.out.println(b);
        }
*/
       /* Books b = new Books();
        b.setName("三体");
        b.setISBN("1111111111");
        b.setClass_id(9);
        mapper.addBook(b);*/

        /*Books b = new Books();
        //b.setAuthor("刘慈欣");
        b.setName("三体2");
        b.setISBN("1111111111");
        b.setClass_id(9);
        b.setId(15L);*/
        mapper.deleteBook(15L);
        
        sqlSession.commit();
        sqlSession.close();
        ips.close();
    }

    @Test
    public void testClass() throws IOException {
        InputStream ips = Resources.getResourceAsStream("applicationContext.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(ips);
        SqlSession sqlSession = factory.openSession();
        ClassesMapper mapper = sqlSession.getMapper(ClassesMapper.class);

       /* mapper.addClass(new Classes(7,"test"));
        List<Classes> allClass = mapper.findAllClass();
        for (Classes classes : allClass) {
            System.out.println(classes);
        }*/
        mapper.deleteClass(23);

        sqlSession.commit();
        sqlSession.close();
        ips.close();
    }

    @Test
    public void testReader() throws IOException {
        InputStream ips = Resources.getResourceAsStream("applicationContext.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(ips);
        SqlSession sqlSession = factory.openSession();
        ReaderMapper mapper = sqlSession.getMapper(ReaderMapper.class);

        List<Reader> all = mapper.findAll();
        for (Reader reader : all) {
            //System.out.println(reader.getName());
            System.out.println(reader);
            //System.out.println(reader.getRecord());
        }
       /* Reader reader = new Reader();
        reader.setUsername("wangwu");
        reader.setPassword("1234");
        reader.setName("王五");
        reader.setGender("男");
        reader.setId(3L);
        reader.setPhone("15900001111");
        mapper.updateReader(reader);*/

        //Reader lisi = mapper.findReader("lisi", "1234");
        //Reader lisi = mapper.fingById(1l);
        //System.out.println(lisi);
        //mapper.deleteReader(3l);
        sqlSession.commit();
        sqlSession.close();
        ips.close();
    }


    @Test
    public void testRecord() throws IOException {
        InputStream ips = Resources.getResourceAsStream("applicationContext.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(ips);
        SqlSession sqlSession = factory.openSession();
        RecordMapper mapper = sqlSession.getMapper(RecordMapper.class);
        /*List<Record> all = mapper.findAll();
        for (Record record : all) {
            System.out.println(record);
        }
        List<Record> byUserId = mapper.findByUserId(2l);
        System.out.println(byUserId);*/

        List<Record> all = mapper.lazyfindByid(1l);
        for (Record record : all) {
            System.out.println(record);
        }
        /*List<Record> all = mapper.findByUserId(1l);
        for (Record record : all) {
            Long id = record.getId();
            Date lend_date = record.getLend_date();
            Date back_date = record.getBack_date();
            String name = record.getReader().getName();
            String phone = record.getReader().getPhone();
            String name1 = record.getBook().getName();
            System.out.println(id+"--"+lend_date+"--"+back_date+"--"+name+"--"+phone+"--"+name1);
        }*/

        /*Record record = new Record();
        record.setId(4l);
        record.setLend_date(new Date());
        record.setReader_id(3l);
        record.setBook_id(1l);
        mapper.updateRecord(record);
*/
        //mapper.deleteRecord(4l);
        sqlSession.commit();
        sqlSession.close();
        ips.close();
    }


}
