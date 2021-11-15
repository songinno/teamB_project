package com.spring.teamProject.config;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
@ComponentScan(basePackages = "com.spring.teamProject")
public class DatabaseConfig {
    //DB접속정보 설정 (= DataSource 설정)
    @Bean
    public DataSource dataSource() {
        HikariConfig config = new HikariConfig();
        config.setJdbcUrl("jdbc:oracle:thin:@localhost:1521:xe"); // 한번만 써놓으면 됨.
        config.setDriverClassName("oracle.jdbc.driver.OracleDriver");
        config.setUsername("tp");
        config.setPassword("1234");
        return new HikariDataSource(config);
    }
}
