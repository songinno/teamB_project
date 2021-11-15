package com.spring.teamProject.moviePedia.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.ResultSet;
import java.sql.SQLException;

@Setter @Getter @ToString
public class Member {
    //회원 정보 데이터
    private String name;
    private String e;
    private String pw;

    // 자동 생성 데이터
    private long memNum;
    private static long seq = 0;


    public Member() {
        memNum = ++seq;
        System.out.printf("%d번 Member 생성됨. \n", memNum);
    }

    public Member(String name, String eMail, String pw) {
        this();
        this.name = name;
        this.e = eMail;
        this.pw = pw;
    }

    public Member(ResultSet rs) throws SQLException {
        this.memNum = rs.getLong("mem_num");
        this.name = rs.getString("mem_name");
        this.e = rs.getString("mem_email");
        this.pw = rs.getString("mem_password");

    }

}
