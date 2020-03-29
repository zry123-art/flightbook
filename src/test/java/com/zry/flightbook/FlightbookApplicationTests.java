package com.zry.flightbook;

import com.zry.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.sql.SQLException;

@SpringBootTest
public class FlightbookApplicationTests {

    @Autowired
    DataSource dataSource;
    @Autowired
    private UserMapper userMapper;
    @Test
    void contextLoads() throws SQLException {
        System.out.println(dataSource.getClass());
        System.out.println(dataSource.getConnection());
    }

    @Test
    public void test(){
        System.out.println(userMapper.queryUserList());
    }

}
