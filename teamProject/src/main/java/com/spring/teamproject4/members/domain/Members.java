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
    private Date memJoinDate;

    public Members(String memName, String memEmail, String memPassword) {
        this.memName = memName;
        this.memEmail = memEmail;
        this.memPassword = memPassword;
    }



}//end class
