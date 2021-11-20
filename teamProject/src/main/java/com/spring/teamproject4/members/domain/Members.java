package com.spring.teamproject4.members.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;
@Setter @Getter @ToString
public class Members {

    //회원 가입시 입력 데이터
    private String memName;
    private String memEmail;
    private String memPassword;

    // 자동 생성 데이터
    private Long memNo;
    private static long seq;
    private Date memJoinDate;

    public Members() {
        this.memNo = ++seq;
        System.out.println("멤버객체 생성됨");
    }

    public Members(String memName, String memEmail, String memPassword) {
        this();
        this.memName = memName;
        this.memEmail = memEmail;
        this.memPassword = memPassword;
    }

//    public Members(ResultSet rs) throws SQLException {
//        this.memNo = rs.getLong("mem_no");
//        this.memName = rs.getString("mem_name");
//        this.memEmail = rs.getString("mem_email");
//        this.memPassword = rs.getString("mem_password");
//        this.memJoinDate = rs.getDate("mem_joindate");
//
//    }




}//end class
